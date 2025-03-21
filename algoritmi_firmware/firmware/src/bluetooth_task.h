#pragma once

#include <Arduino.h>
#include <BluetoothSerial.h>
#include "task.h"
#include "interface_task.h"

#if AF_DISPLAY
#include <SPI.h>
#include "XPT2046_Touchscreen.h"
#endif
/* 
    Because of the simplicity and practicability, 
    this task will also handle button inputs.
    Furthermore I'll check if it needs to be in the interface_task
    as the code evolves.
*/

struct RECT{
  int32_t x1, y1, x2, y2;
};

class BluetoothTask : public Task<BluetoothTask> {
    friend class Task<BluetoothTask>; // Allow base Task to invoke protected run()

    public:
        BluetoothTask(const uint8_t task_core, MotorTask& motor_task);
        virtual ~BluetoothTask();

        void setDeviceName(const String& name);
        QueueHandle_t getCommandQueue() { return command_queue_; }
        void setKnobStateQueue(QueueHandle_t queue) { knob_state_queue_ = queue; }
        QueueHandle_t getKnobStateQueue() { return knob_state_queue_; }

        // Buttons
        void updateHardware(void);
        void updateTouch(int, int, int);

    protected:
        void run();

    private:
        MotorTask& motor_task_;
        BluetoothSerial SerialBT;
        String device_name_;
        BT_AlgoritmiFOC rx_buffer_;
        //String rx_buffer_;
        QueueHandle_t command_queue_;
        QueueHandle_t knob_state_queue_ = NULL;

        #if AF_DISPLAY
        RECT r1, r2, r3, r4;
        SPIClass touchscreenSPI;
  
        int x, y, z;
        #endif
        
        /* Queues */
        //void processCommand(const String& command);
        void processCommand(const BT_AlgoritmiFOC&);
        void processKnobState(const PB_SmartKnobState& state);
};