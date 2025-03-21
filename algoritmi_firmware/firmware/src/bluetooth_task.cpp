#if AF_SELECTOR
#include "bluetooth_task.h"

BluetoothTask::BluetoothTask(const uint8_t task_core, MotorTask& motor_task) 
    : Task("Bluetooth", 4000, 1, task_core),
      motor_task_(motor_task),
      device_name_("ESP32-BT-Slave") {
        
    // Create command queue for strings
    command_queue_ = xQueueCreate(1, sizeof(BT_AlgoritmiFOC));
    assert(command_queue_ != NULL);


    #if AF_DISPLAY
    r1 = {10, 10, 101, 115};
    r2 = {111, 10, 202, 115};
    r3 = {10, 125, 202, 230};
    r4 = {212, 10, 310, 230};

    touchscreenSPI = SPIClass(VSPI);

    #endif

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
    #if AF_DISPLAY
    XPT2046_Touchscreen touchscreen(XPT2046_CS, XPT2046_IRQ);
    touchscreenSPI.begin(XPT2046_CLK, XPT2046_MISO, XPT2046_MOSI, XPT2046_CS);
    touchscreen.begin(touchscreenSPI);
    touchscreen.setRotation(3);
    #endif

    // Initialize Bluetooth
    SerialBT.begin(device_name_);

    #if AF_BUTTONS
    pinMode(Z_BUTTON, INPUT);
    pinMode(Y_BUTTON, INPUT);
    pinMode(X_BUTTON, INPUT);
    pinMode(W_BUTTON, INPUT);
    #endif

    int rx_index = 0;
    
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
            char debug[32];
            if (rx_byte != -1 && rx_byte != '\n') {  
                if (rx_index < sizeof(rx_buffer_.data) - 1) {  
                    rx_buffer_.data[rx_index++] = rx_byte;  // Cast to char for storage
                } else {
                    SerialBT.println("Message Overflow!"); // buffer overflow handling
                }
            } else {
                rx_buffer_.data[rx_index] = '\0'; // insertign null terminator for end of string
                processCommand(rx_buffer_);
                
                rx_index = 0; // reset index variable, even tho it really doesn't need this initialization
            }
        }

        #if AF_BUTTONS
        updateHardware();
        #endif

        #if AF_DISPLAY
        if (touchscreen.tirqTouched() && touchscreen.touched()) {
            // Get Touchscreen points
            TS_Point p = touchscreen.getPoint();
            // Calibrate Touchscreen points with map function to the correct width and height
            x = map(p.x, 200, 3700, 1, 320);
            y = map(p.y, 240, 3800, 240, 1); // INVERT LAST TWO PARAMETERS DEPEENDING ON DISPLAY
            z = p.z;

            updateTouch(x, y, z);
            
            vTaskDelay(pdMS_TO_TICKS(75));
            x = 0;
            y = 0;
            z = 0;
        }
        #endif

        vTaskDelay(pdMS_TO_TICKS(25)); // Small delay to prevent task from hogging CPU
    }
}

void BluetoothTask::updateTouch(int touchX, int touchY, int touchZ) {
    #if AF_DISPLAY
    if(touchZ > 1500) {
        if (r1.x1 < touchX && touchX < r1.x2 && r1.y1 < touchY && touchY < r1.y2) {
        SerialBT.printf("PHONE\n"); 
        } else if (r2.x1 < touchX && touchX < r2.x2 && r2.y1 < touchY && touchY < r2.y2) {
            SerialBT.printf("MUSIC\n");
        } else if (r3.x1 < touchX && touchX < r3.x2 && r3.y1 < touchY && touchY < r3.y2) {
            SerialBT.printf("MAP\n");
        } else if (r4.x1 < touchX && touchX < r4.x2 && r4.y1 < touchY && touchY < r4.y2) {
            SerialBT.printf("SOUND\n");
        }
    }
    #endif
}

void BluetoothTask::processCommand(const BT_AlgoritmiFOC& command) {
    // Try to send without waiting
    if (xQueueSend(command_queue_, &command, 0) != pdTRUE) {
        // Queue is full, notify user
        SerialBT.println("System busy, command not processed"); // portMAX_DELAY is for waitint until the queue is available to send again
    } else {
        // Command was queued successfully
        SerialBT.print("Received: ");
        SerialBT.println(command.data); // Debug through bluetooth terminal! - Android App called Serial BT Terminal
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

/* This part maybe needs to be in a separate task futurely */
void BluetoothTask::updateHardware(void) {

    static int leftButton = 0;
    static int rightButton = 0;
    static int wButton = 0;
    static int xButton = 0;

    static bool alreadyReadRight = false;
    static bool alreadyReadLeft = false;
    static bool alreadyReadW = false;
    static bool alreadyReadX = false;

// TODO: Implement the selector logic if needed
    leftButton = digitalRead(Z_BUTTON);
    rightButton = digitalRead(Y_BUTTON);
    wButton = digitalRead(W_BUTTON);
    xButton = digitalRead(X_BUTTON);

    if (!leftButton && !alreadyReadLeft) {
        SerialBT.printf("BL\n");
        alreadyReadLeft = true;
    } else if (leftButton && alreadyReadLeft){
        alreadyReadLeft = false;
    }

    if (!rightButton && !alreadyReadRight) {
        SerialBT.printf("BR\n");
        alreadyReadRight = true;
    } else if (rightButton && alreadyReadRight){
        alreadyReadRight = false;
    }

    if (!wButton && !alreadyReadW) {
        SerialBT.printf("BW\n");
        alreadyReadW = true;
    } else if (wButton && alreadyReadW){
        alreadyReadW = false;
    }

    if (!xButton && !alreadyReadX) {
        SerialBT.printf("BX\n");
        alreadyReadX = true;
    } else if (xButton && alreadyReadX){
        alreadyReadX = false;
    }

}
#endif