//*******************************************************************
/*!
\file   ORBremote.h
\author
\date
\brief
*/

//*******************************************************************
#ifndef _ORB_REMOTE_H
#define _ORB_REMOTE_H

//*******************************************************************
#include <stdio.h>

//*******************************************************************
#include "lib.h"
#include "Module/RTOS.h"
#include "Module/ISC.h"

#include "IPC_Repository.h"
#include "ORB.h"
#include "Properties.h"
#include "Daten.h"


cNetAddr<4> serverAddr = {127,0,0,1};

//*******************************************************************
class cORBremote : public ORB, public cRTOS::Task
{
  private:
    //---------------------------------------------------------------
    cNetWin                     &net;
    cISC                        &ipc;
    cISC                        &ipcMon;

    cISC::Data<Daten::ConfigToORB,   0>  configOut;
    cISC::Data<Daten::PropToORB,     1>  propOut;
    cISC::Data<Daten::PropFromORB,   2>  propIn;
    cISC::Data<Daten::MonitorToORB,  3>  monitorIn;
    cISC::Data<Daten::MonitorFromORB,4>  monitorOut;

//Daten::PropToORB       propOut;
//Daten::MonitorFromORB  monitorOut;

//    cNetUDP udp;
//    UDP_IO  udpIO;

  private:
    //---------------------------------------------------------------
    cRTOS::Timer  timeoutTimer;
    bool          dataOK;

    char  dText[4][32];
    DWORD addr;

    bool  isConfigNew;
    bool  isConfigAcknReq;
    bool  isPropNew;

  public:
    //---------------------------------------------------------------
    cORBremote( cRTOS   &rtosIn,
                cISC    &ipcIn,
                cISC    &ipcMonIn,
                cNetWin &netIn
                )

    : cRTOS::Task ( rtosIn, 0x800 ),
      net         ( netIn ),
      ipc         ( ipcIn ),
      ipcMon      ( ipcMonIn ),
      configOut   ( ipc    ),
      propOut     ( ipc    ),
      propIn      ( ipc    ),
      monitorOut  ( ipcMon ),
      monitorIn   ( ipcMon ),
//      udp(netIn),
//      udpIO(udp,serverAddr,20002),

      timeoutTimer( 3000/*ms*/)

    {
//      printf("%p %p\n",&ipc, &ipcMon);

      dataOK          = false;
      addr            = 0;
      isConfigNew     = false;
      isConfigAcknReq = false;
      isPropNew       = false;


      Start();
    }

    //---------------------------------------------------------------
    virtual void update( )
    {
      Pause( 1 );
      int dcnt = 0;
      while(1)
      {
        cSystem::enableInterrupt();
        Sleep(50);
        cSystem::disableInterrupt();

       // Sleep( 50 );

        static int c=0;

        net.update();
        ipc.update();

        // Sende cPropToORB
        propOut.write();

//        udpIO.send(1,(BYTE*)&propOut.data, sizeof(Daten::PropToORB::Data),0);
//        udpIO.send(1,(BYTE*)&monitorOut.data, sizeof(Daten::MonitorFromORB::Data),0);

        if( propIn.isNew() )
        {
          timeoutTimer.start();
          dataOK      = true;
          isPropNew   = true;
        }

        // Sende cConfigToORB, wenn sich etwas geändert hat
        // Sicherstellen, dass die letzte Änderung berücksichtigt wird.
        // Solange scheiben, bis Antwort vom ORB vorliegt
        if(    isConfigNew
            && !(propIn.data.status & 0x02)
            && !isConfigAcknReq )
        {
          isConfigNew     = false;
          isConfigAcknReq = true;
        }
        if( isPropNew && isConfigAcknReq )
        {
          if( (propIn.data.status & 0x02) )
          {
            isConfigAcknReq = false;
          }
          else
          {
            configOut.write();
          }
        }

        // Sende Text für Monitor
//1        monitorOut.data.line = (monitorOut.data.line < 3)?monitorOut.data.line+1:0;
//1        strncpy( monitorOut.data.text, dText[monitorOut.data.line], 31);


        monitorOut.write();

        if( timeoutTimer.timeout() )
        {
          dataOK = false;
          isConfigNew = true;
        }

    //    printf("%d %d %d %d\n",dataOK, isConfigNew, propIn.data.status & 0x02, isConfigAcknReq );
      }
    }

    //---------------------------------------------------------------
    //---------------------------------------------------------------
    void configMotor( BYTE id, WORD ticsPerRotation, BYTE acc, BYTE Kp, BYTE Ki )
    {
      if( id < 4 )
      {
        configOut.data.motor[id].ticsPerRotation = ticsPerRotation;
        configOut.data.motor[id].acceleration    = acc;
        configOut.data.motor[id].Regler_Kp       = Kp;
        configOut.data.motor[id].Regler_Ki       = Ki;

        isConfigNew = true;
      }
    }

    //---------------------------------------------------------------
    void setMotor( BYTE id, BYTE mode, short speed, int pos )
    {
      if( id < 4 )
      {
        propOut.data.motor[id].mmode  = mode;
        propOut.data.motor[id].speed = speed;
        propOut.data.motor[id].pos   = pos;
      }
    }

    //-------------------------------------------------------------------
    ORB::Motor getMotor( BYTE id )
    {
      ORB::Motor motorReport;
      if( id < NUM_OF_MOTOR_PORTS )
      {
        motorReport.pwr   = propIn.data.motor[id].pwr;
        motorReport.speed = propIn.data.motor[id].speed;
        motorReport.pos   = propIn.data.motor[id].pos;
      }
      return(motorReport);
    }

//
//
//    //---------------------------------------------------------------
//    short getMotorPwr( BYTE id )
//    {
//      if( id < 4 && dataOK )
//        return( propIn.data.motor[id].pwr );
//      return( 0 );
//    }
//
//    //---------------------------------------------------------------
//    short getMotorSpeed( BYTE id )
//    {
//      if( id < 4 && dataOK )
//        return( propIn.data.motor[id].speed );
//      return( 0 );
//    }
//
//    //---------------------------------------------------------------
//    int getMotorPos( BYTE id )
//    {
//      if( id < 4 && dataOK )
//        return( propIn.data.motor[id].pos );
//      return( 0 );
//    }
//
    //---------------------------------------------------------------
    void  setModelServo( BYTE id, BYTE speed, BYTE angle )
    {
      if( id < 2 )
      {
        propOut.data.modelServo[id].smode = speed;
        propOut.data.modelServo[id].spos  = angle;
      }
    }

    //---------------------------------------------------------------
    void configSensor( BYTE id, BYTE type, BYTE mode, BYTE option )
    {
      if( id < 4 )
      {
        configOut.data.sensor[id].type   = type;
        configOut.data.sensor[id].mode   = mode;
        configOut.data.sensor[id].option = option;

        isConfigNew = true;
      }
    }

    //---------------------------------------------------------------
    ORB::Sensor getSensor( BYTE id )
    {
        ORB::Sensor  sensorReport;

      if(    id < 4
          && dataOK )
      {
        sensorReport.type =  propIn.data.sensor[id].type;
        sensorReport.option =  propIn.data.sensor[id].option;
        sensorReport.value[0] =  propIn.data.sensor[id].value[0];
        sensorReport.value[1] =  propIn.data.sensor[id].value[1];
      }
      return( sensorReport );
    }

    //---------------------------------------------------------------
    WORD getSensorValueExt( BYTE id, BYTE ch )
    {
//     // return( propIn.data.sensor[id].valueExtra );
//
//     switch( ch )
//           {
//               case 0: return(   (WORD)propIn.data.sensor[id].valueExtra[0]
//                              | ((WORD)propIn.data.sensor[id].valueExtra[1]&0x0F)<<8 ); break;
//               case 1: return(  ((WORD)propIn.data.sensor[id].valueExtra[1]&0xF0)>>4
//                              | ((WORD)propIn.data.sensor[id].valueExtra[2])<<4  ); break;
//               case 2: return( propIn.data.digital & (1<<(2*id  ))); break;
//               case 3: return( propIn.data.digital & (1<<(2*id+1))); break;
//           }
      return(0);
    }

    //---------------------------------------------------------------
    BYTE getSensorDigital( BYTE id )
    {
//      if( id < 2 )
//        return( (propIn.data.isValid & (0x40<<id) )?true:false );
      return( false );
    }

    //---------------------------------------------------------------
    void setMonitorText( BYTE line, const char *format, va_list va )
    {
      if( line < 4 )
      {
        vsnprintf( monitorOut.data.text[line], 31, format, va );
      }
    }

    //---------------------------------------------------------------
    BYTE getMonitorKey( void )
    {
        return( monitorIn.data.keycode );
    }

    //---------------------------------------------------------------
    virtual DWORD getTime( void )
    {
      return( cHwRTOS_MCU::getSysTime() );
    }

    //---------------------------------------------------------------
    virtual void wait( DWORD time )
    {
      Pause( time );
    }

    //---------------------------------------------------------------
    void clearMemory( void )
    {
      mem1.clear();
      addr = 0;
    }

    //---------------------------------------------------------------
    void setMemory( DWORD addr, BYTE *data, DWORD size )
    {
      for( DWORD i=0;i<size;i++)
        mem1.write(addr++,data[i]);
    }

    //---------------------------------------------------------------
    void getMemory( DWORD addr, BYTE *data, DWORD size )
    {
      for( DWORD i=0;i<size;i++)
        data[i] = mem1.read(addr++);
    }

    //---------------------------------------------------------------
    float getVcc( void )
    {
  //    if( dataOK )
  //      return( 0.1*propIn.data.Vcc );
      return( 0 );
    }
};

#endif // _ORB_H
