//*******************************************************************
/*!
\file   main.cpp
\author
\date
\brief
*/

//*******************************************************************
#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include <inttypes.h>

#include "Common/Src/ORB.h"

#include "liborb.h"

int flag = 0;

ORB *orbPtr = NULL;

//*******************************************************************
#include "Value.h"
#include "Memory.h"
#include "Timer.h"
#include "Motor.h"
#include "DoppelMotor.h"
#include "EncoderServo.h"
#include "Drive.h"
#include "Sensor.h"
#include "SensorColorTCS3472.h"
#include "SensorExtra.h"
#include "SensorDigital.h"
#include "Monitor.h"
#include "ModelServo.h"


//*******************************************************************
#include "Application.h"

//*******************************************************************
int main (int argc, char **argv)
{
  Main m(argc, argv);

  orbPtr = m.getOrb();

  cApplication     ablauf;

   m.run( ablauf );
}
