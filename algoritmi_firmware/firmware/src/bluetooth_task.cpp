#include "bluetooth_task.h"

BluetoothTask::BluetoothTask(const uint8_t task_core, MotorTask& motor_task) 
    : Task("Bluetooth", 4000, 1, task_core),
      motor_task_(motor_task),
      device_name_("ESP32-BT-Slave") {
    // Create command queue for strings
    command_queue_ = xQueueCreate(10, sizeof(String));
    assert(command_queue_ != NULL);

    // Create knob state queue
    knob_state_queue_ = xQueueCreate(1, sizeof(PB_SmartKnobState));
    assert(knob_state_queue_ != NULL);
}

BluetoothTask::~BluetoothTask() {
    SerialBT.end();
    vQueueDelete(command_queue_);
    vQueueDelete(knob_state_queue_);
}

void BluetoothTask::setDeviceName(const String& name) {
    device_name_ = name;
}

void BluetoothTask::run() {
    // Initialize Bluetooth
    pinMode(LED_GPIO, OUTPUT);
    SerialBT.begin(device_name_);

    #if AF_SELECTOR
        pinMode(L_BUTTON, INPUT);
        pinMode(R_BUTTON, INPUT);
    #endif

    while (1) {
        // Check for knob state updates
        if (knob_state_queue_) {
            PB_SmartKnobState state;
            if (xQueueReceive(knob_state_queue_, &state, 0) == pdTRUE) {
                processKnobState(state);
            }
        }

        // Process incoming Bluetooth data
        if (SerialBT.available()) {
            char rx_byte = SerialBT.read();
            if (rx_byte != '\n') {
                rx_buffer_ += String(rx_byte);
            } else {
                processCommand(rx_buffer_);
                rx_buffer_ = "";
            }
        }
        updateHardware();

        vTaskDelay(pdMS_TO_TICKS(25)); // Small delay to prevent task from hogging CPU
    }
}

void BluetoothTask::processCommand(const String& command) {
    // Try to send without waiting
    if (xQueueSend(command_queue_, &command, 0) != pdTRUE) {
        // Queue is full, notify user
        SerialBT.println("System busy, command not processed"); // portMAX_DELAY is for waitint until the queue is available to send again
    } else {
        // Command was queued successfully
        SerialBT.println("Received: " + command);
    }
}

void BluetoothTask::processKnobState(const PB_SmartKnobState& state) {
    // Static variables to keep track of previous values so we dont need to be sending data all the time through bluetooth
    static int32_t past_position = 0;

    if (past_position != state.current_position) {
        // Send position data over Bluetooth
        //SerialBT.printf("Position: %d, Sub-position: %.2f\n", state.current_position, state.sub_position_unit);
        SerialBT.printf("%d\n", state.current_position);
        // save the past value
        past_position = state.current_position;
    }
}

void BluetoothTask::updateHardware(void) {

    static int leftButton = 0;
    static int rightButton = 0;

    static bool alreadyReadRight = false;
    static bool alreadyReadLeft = false;

// TODO: Implement the selector logic if needed
    leftButton = digitalRead(L_BUTTON);
    rightButton = digitalRead(R_BUTTON);

    if (!leftButton && !alreadyReadLeft) {
        SerialBT.println("Left Button Pressed..");
        alreadyReadLeft = true;
    } else if (leftButton && alreadyReadLeft){
        alreadyReadLeft = false;
    }

    if (!rightButton && !alreadyReadRight) {
        SerialBT.println("Right Button Pressed..");
        alreadyReadRight = true;
    } else if (rightButton && alreadyReadRight){
        alreadyReadRight = false;
    }
}