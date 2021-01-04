#include "blinky.h"

// different button states
extern uint16_t buttonCounter;
extern edfTasks_s edfTasks;
uint8_t ledTask1Created = 0;
uint8_t ledTask2Created = 0;
uint8_t ledTask3Created = 0;


// led task 1
void led1Flash( void* parameter)
{
	for( ;; )
	{
		// unused only need for blocking loop
		uint32_t ledCounter = 0;
		#if DEBUG_MODE
			edfTasks.tasksArray[0].startTime = xTaskGetTickCount();
		#endif
		// get current tick
		TickType_t currentTick = xTaskGetTickCount();
		// blocking loop for ledTaskWCET
		while( (xTaskGetTickCount() - currentTick) < ledTaskWCET)
		{
		    ledCounter++;
		}
		// toggle led
		HAL_GPIO_TogglePin(LD_USER1_GPIO_Port, LD_USER1_Pin);
		#if DEBUG_MODE
			edfTasks.tasksArray[0].stopTime = xTaskGetTickCount();
			edfTasks.tasksArray[0].lastRunningTime = edfTasks.tasksArray[0].stopTime - edfTasks.tasksArray[0].startTime;
			if ( edfTasks.tasksArray[0].lastRunningTime > edfTasks.tasksArray[0].maxRunningTime )
			{
				edfTasks.tasksArray[0].maxRunningTime = edfTasks.tasksArray[0].lastRunningTime;
			}
		#endif
		// check button state
		ledTaskControl();
		// edf rescheduling
		rescheduleEDF();
	}
}

// led task 2
void led2Flash( void* parameter)
{
	for( ;; )
	{
		// unused only need for blocking loop
		uint32_t ledCounter = 0;
		#if DEBUG_MODE
			edfTasks.tasksArray[1].startTime = xTaskGetTickCount();
		#endif
		// get current tick
		TickType_t currentTick = xTaskGetTickCount();
		// blocking loop for ledTaskWCET
		while( (xTaskGetTickCount() - currentTick) < ledTaskWCET)
		{
		    ledCounter++;
		}
		// toggle led
		HAL_GPIO_TogglePin(LD_USER2_GPIO_Port, LD_USER2_Pin);
		#if DEBUG_MODE
			edfTasks.tasksArray[1].stopTime = xTaskGetTickCount();
			edfTasks.tasksArray[1].lastRunningTime = edfTasks.tasksArray[1].stopTime - edfTasks.tasksArray[1].startTime;
			if ( edfTasks.tasksArray[1].lastRunningTime > edfTasks.tasksArray[1].maxRunningTime )
			{
				edfTasks.tasksArray[1].maxRunningTime = edfTasks.tasksArray[1].lastRunningTime;
			}
		#endif
		// check button state
		ledTaskControl();
		// edf rescheduling
		rescheduleEDF();
	}
}


// led task 1
void led3Flash( void* parameter)
{
	for( ;; )
	{
		// unused only need for blocking loop
		uint32_t ledCounter = 0;
		#if DEBUG_MODE
			edfTasks.tasksArray[2].startTime = xTaskGetTickCount();
		#endif
		// get current tick
		TickType_t currentTick = xTaskGetTickCount();
		// blocking loop for ledTaskWCET
		while( (xTaskGetTickCount() - currentTick) < ledTaskWCET)
		{
		    ledCounter++;
		}
		// toggle led
		HAL_GPIO_TogglePin(LD_USER3_GPIO_Port, LD_USER3_Pin);
		#if DEBUG_MODE
			edfTasks.tasksArray[2].stopTime = xTaskGetTickCount();
			edfTasks.tasksArray[2].lastRunningTime = edfTasks.tasksArray[2].stopTime - edfTasks.tasksArray[2].startTime;
			if ( edfTasks.tasksArray[2].lastRunningTime > edfTasks.tasksArray[2].maxRunningTime )
			{
				edfTasks.tasksArray[2].maxRunningTime = edfTasks.tasksArray[2].lastRunningTime;
			}
		#endif
		// check button state
		ledTaskControl();
		// edf rescheduling
		rescheduleEDF();
	}
}


void ledTaskControl( void )
{
	// iterate over button states
	if( buttonCounter == 1 )
	{
		if( ledTask1Created == 0 )
		{
			// create led task 1
			#if DEBUG_MODE
			debugPrintln("ButtonCounter is 1 -> start first EDF LED Task");
			#endif
			createEDFTask(led1Flash, "LED1_FLASH", 500, NULL, ledTaskWCET, ledTaskWCET * 2, ledTaskWCET * 2 );
			ledTask1Created++;
		}
	}
	else if( buttonCounter == 2 )
	{
		if( ledTask2Created == 0 )
		{
			// create led task 2
			#if DEBUG_MODE
			debugPrintln("ButtonCounter is 2 -> start second EDF LED Task");
			#endif
			createEDFTask(led2Flash, "LED2_FLASH", 500, NULL, ledTaskWCET, ledTaskWCET * 2, ledTaskWCET * 2 );
			ledTask2Created++;
		}
	}
	else if( buttonCounter == 3 )
	{
		if( ledTask3Created == 0 )
		{
			// create led task 3
			#if DEBUG_MODE
			debugPrintln("ButtonCounter is 3 -> start third EDF LED Task");
			#endif
			createEDFTask(led3Flash, "LED3_FLASH", 500, NULL, ledTaskWCET, ledTaskWCET * 2, ledTaskWCET * 2 );
			ledTask3Created++;
		}
	}
	else if( buttonCounter == 4 )
	{
		if( ledTask1Created == 1)
		{
			// delete led task 1
			ledTask1Created = 0;
			#if DEBUG_MODE
			debugPrintln("ButtonCounter is 4 -> delete first EDF LED Task");
			#endif
			HAL_GPIO_WritePin(LD_USER1_GPIO_Port, LD_USER1_Pin, 0);
			deleteEDFTask( "LED1_FLASH" );
		}
	}
	else if( buttonCounter == 5 )
	{
		if( ledTask2Created == 1)
		{
			// delete led task 2
			ledTask2Created = 0;
			#if DEBUG_MODE
			debugPrintln("ButtonCounter is 5 -> delete second EDF LED Task");
			#endif
			HAL_GPIO_WritePin(LD_USER2_GPIO_Port, LD_USER2_Pin, 0);
			deleteEDFTask( "LED2_FLASH" );
		}
	}
	else if( buttonCounter == 6 )
	{
		if( ledTask3Created == 1)
		{
			// delete led 3 and reset
			ledTask3Created = 0;
			buttonCounter = 0;
			#if DEBUG_MODE
			debugPrintln("ButtonCounter is 6 -> delete third EDF LED Task");
			#endif
			// enable all LED`s
			HAL_GPIO_WritePin(LD_USER1_GPIO_Port, LD_USER1_Pin, 1);
			HAL_GPIO_WritePin(LD_USER2_GPIO_Port, LD_USER2_Pin, 1);
			HAL_GPIO_WritePin(LD_USER3_GPIO_Port, LD_USER3_Pin, 1);
			deleteEDFTask( "LED3_FLASH" );
		}
	}
}
