/* This File includes all defined hooks */

#include "hooks.h"
#include "main.h"
#include "helper_functions.h"
#include "edf_tasks.h"
#include "strings.h"


#if DEBUG_MODE
	extern edfTasks_s edfTasks;
#endif


/* Declaration of tasks pointers */
TaskHandle_t* UDPReceiveTaskHandle = NULL;
TaskHandle_t* UDPSendTaskHandle = NULL;
TaskHandle_t* FFTTaskHandle = NULL;


const char *pcApplicationHostnameHook( void )
{
	/* Assign the name "rtosdemo" to this network node.  This function will be
	called during the DHCP: the machine will be registered with an IP address
	plus this name. */
	return mainHOST_NAME;
}


void vApplicationMallocFailedHook(void)
{
    /* The malloc failed hook is enabled by setting
    configUSE_MALLOC_FAILED_HOOK to 1 in FreeRTOSConfig.h.
    Called if a call to pvPortMalloc() fails because there is insufficient
    free memory available in the FreeRTOS heap.  pvPortMalloc() is called
    internally by FreeRTOS API functions that create tasks, queues, software
    timers, and semaphores.  The size of the FreeRTOS heap is set by the
    configTOTAL_HEAP_SIZE configuration constant in FreeRTOSConfig.h. */
	debugPrintln("Malloc Failed Hook called!!!");
    for( ;; );
}


void vApplicationStackOverflowHook( TaskHandle_t xTask, char * pcTaskName )
{
    ( void ) pcTaskName;
    ( void ) xTask;

    /* Run time stack overflow checking is performed if
    configconfigCHECK_FOR_STACK_OVERFLOW is defined to 1 or 2.  This hook
    function is called if a stack overflow is detected.  pxCurrentTCB can be
    inspected in the debugger if the task name passed into this function is
    corrupt. */
    for( ;; )
    {
		/* Toggle LED for visualization */
		HAL_GPIO_TogglePin(LD_USER2_GPIO_Port, LD_USER2_Pin);
    }
}

