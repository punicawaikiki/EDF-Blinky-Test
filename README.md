# Earliest Deadline First (EDF) Blinky Demo

## Introduction
This repository contains a demo project for an EDF Scheduler which is based on [FreeRTOS](https://www.freertos.org/) and implemented on a [STM32F769I-Disc0](https://www.st.com/en/evaluation-tools/32f769idiscovery.html) board.
In the demo the three onboard LED`s were used for visual feedback and the Blue Onboard Button serves for task selection. Each LED represents one task with the following properties:

| Task          | worst execution time | period  | deadline |
|:-------------:|:--------------------:|:-------:|:--------:|
| LED1_FLASH    | 50ms                 | 100ms   | 100ms    |
| LED2_FLASH    | 50ms                 | 100ms   | 100ms    |
| LED3_FLASH    | 50ms                 | 100ms   | 100ms    |

At the beginning the three LED`s are activated but no task except the modified FreeRTOS Idle Tasks are not created.
The user can step thorugh the individual states with the help of the Blue Onboard Button. The States are as follows:

| State | Button pressed counter | task(`s) running                     | total execution time | CPU load  | deadline errors   |
|:-----:|:----------------------:|:------------------------------------:|:--------------------:|:---------:|:-----------------:|
| 1     | 0                      | idle Task                            | 0                    | 0         |:x:                |
| 2     | 1                      | LED1_FLASH + idle Task               | 50ms                 | 50%       |:x:                |
| 3     | 2                      | LED1_FLASH + LED2_FLASH              | 100ms                | 100%      |:x:                |
| 4     | 3                      | LED1_FLASH + LED2_FLASH + LED3_FLASH | 150ms                | 150%      |:heavy_check_mark: |
| 5     | 4                      | LED2_FLASH + LED3_FLASH              | 100ms                | 100%      |:x:                |
| 6     | 5                      | LED3_FLASH + idle Task               | 50ms                 | 50%       |:x:                |
| 1     | 6                      | idle Task                            | 0                    | 0%        |:x:                |
| ...   | ...                    | ...                                  | ...                  | ...       | ...               |

State 4 is the only state with deadline error`s which can be seen visually on the LEDs. There is also the possibility to receive debug messages from the board with the help of an USART, which also contain the deadline errors. The Properties of the USART Connection are as follows:

- Port: STM32F769I-Disc0 USB Port 
- Speed: 115200 B/s
- Databits: 8
- Parity: None
- Stop Bits: 1
- Flow Control: None

The USART print out can be disabled in main.h as under the following line: 
```C
#define DEBUG_MODE ( 1 ) // switch to zero to disable USART print outs
```

## Installation

The binary file can be found under the folder Debug in the repository. Download this file and copy it to the STM32F769I-Disc0 board.  
:warning: **This repository contains only the matching driver and properties for the STM32F769I-Disc0 board.** Please only use the binary file for this board.

## Portability

The whole EDF Scheduler consists if two files and can easily be ported to other projects and boards.  
:warning: **The minimum Stack size for FreeRTOS task must be adjusted at least to 200 words.**

## Contribution
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
[MIT](https://choosealicense.com/licenses/mit/)
