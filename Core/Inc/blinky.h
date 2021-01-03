/* This File includes all defined tasks and function for blinky demo */

#ifndef __BLINKY_H
#define __BLINKY_H


#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "edf_tasks.h"
#include "helper_functions.h"

// define led wcet
#define ledTaskWCET 50

// Return Type: void
// Name: led1Flash
// Parameters: void* parameter
// Declaration
void led1Flash( void* parameter);

// Return Type: void
// Name: led2Flash
// Parameters: void* parameter
// Declaration
void led2Flash( void* parameter);

// Return Type: void
// Name: led3Flash
// Parameters: void* parameter
// Declaration
void led3Flash( void* parameter);

// Return Type: void
// Name: ledTaskControl
// Parameters: void
// Declaration
void ledTaskControl( void );


#endif /* __BLINKY_H */

