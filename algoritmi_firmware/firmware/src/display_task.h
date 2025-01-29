#pragma once

#if SK_DISPLAY

#include <Arduino.h>
#include <TFT_eSPI.h>

#include "logger.h"
#include "proto_gen/smartknob.pb.h"
#include "task.h"

class DisplayTask : public Task<DisplayTask> {
    friend class Task<DisplayTask>; // Allow base Task to invoke protected run()

    public:
        DisplayTask(const uint8_t task_core);
        ~DisplayTask();

        QueueHandle_t getKnobStateQueue();

        void setBrightness(uint16_t brightness);
        void setLogger(Logger* logger);

    protected:
        void run();

    private:
        TFT_eSPI tft_ = TFT_eSPI();

        /** Full-size sprite used as a framebuffer */
        TFT_eSprite spr_ = TFT_eSprite(&tft_);

        QueueHandle_t knob_state_queue_;

        PB_SmartKnobState state_;
        SemaphoreHandle_t mutex_;
        uint16_t brightness_;
        Logger* logger_;
        void log(const char* msg);
};
#elif AF_DISPLAY
#include <Arduino.h>
#include <TFT_eSPI.h>
#include <SPI.h>

#include "logger.h"
#include "proto_gen/smartknob.pb.h"
#include "task.h"

struct rectangle{
    int32_t x1, y1, x2, y2;
};

class DisplayTask : public Task<DisplayTask> {
    friend class Task<DisplayTask>; // Allow base Task to invoke protected run()

    public:
        DisplayTask(const uint8_t task_core);
        ~DisplayTask();

        QueueHandle_t getKnobStateQueue();

        void setBrightness(uint16_t brightness);
        void setLogger(Logger* logger);

        int32_t centerBitmapAxis(int32_t , int32_t , int32_t);
        void printTouchToDisplay(int, int);

    protected:
        void run();

    private:
        TFT_eSPI tft_ = TFT_eSPI();

        /** Full-size sprite used as a framebuffer */
        TFT_eSprite spr_ = TFT_eSprite(&tft_);

        QueueHandle_t knob_state_queue_;

        PB_SmartKnobState state_;
        SemaphoreHandle_t mutex_;
        uint16_t brightness_;
        Logger* logger_;
        void log(const char* msg);

        rectangle r1, r2, r3, r4;
};
#else

class DisplayTask {};

#endif
