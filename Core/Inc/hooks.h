/* This File includes all defined hooks */

#ifndef __HOOKS_H
#define __HOOKS_H


#include "FreeRTOS.h"
#include "task.h"


/* Define HOST NAME */
#define mainHOST_NAME					"RTOSDemo"
#define mainDEVICE_NICK_NAME			"stm32"
#define standardTASK_PRIORITY          ( tskIDLE_PRIORITY )

// Return Type: void
// Name: vApplicationMallocFailedHook
// Parameters: void
// Declaration
void vApplicationMallocFailedHook( void );

// Return Type: void
// Name: vApplicationStackOverflowHook
// Parameters: TaskHandle_t xTask, char * pcTaskName
// Declaration
void vApplicationStackOverflowHook( TaskHandle_t xTask, char * pcTaskName );

#endif /* __HOOKS_H */
