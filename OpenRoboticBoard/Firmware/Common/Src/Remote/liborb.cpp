//*******************************************************************
/*!
\file   liborb.cpp
\author Thomas Breuer
\date

\brief
*/

//*******************************************************************
#include "lib.h"

//*******************************************************************
#include <fcntl.h>
#include <conio.h>
#include <stdio.h>
#include <windows.h>

//*******************************************************************
cSystem sys;
cHwMemory_MCU     mem1( "memory.dat", 0x4000/*16k*/, 0xFF);
cHwUART_Stdio     uart( false /*echo off*/ );
cDevTextIO_UART   com ( uart, 30, 30, " #\r\n", " \te" );

//*******************************************************************
#include "Module/RTOS.h"
#include "Module/Command.h"
#include "Module/ISC.h"
#include "Module/Option.h"

#include "Common/Src/IPC_Repository.h"
#include "Common/Src/ORBremote.h"

#include "liborb.h"

//*******************************************************************
cNetWin           net;
cNetUDP           udp(net);
cHwUART_Serial    bluetooth;
cUSB              usb;

cIPC_Repository *ipc;
cISC            *ipcMon;
cORBremote      *orb;

BYTE             parameter;

//*******************************************************************
class myRtosTask : public cRTOS::Task
{
  public:
    //---------------------------------------------------------------
    cApplicationBase &ablauf;
    BYTE              para;

  public:
    //---------------------------------------------------------------
    myRtosTask( cRTOS            &rtosIn,
                cApplicationBase &ablaufIn,
                BYTE              para )

    : cRTOS::Task( rtosIn, 3000/* stack size*/ ),
      ablauf( ablaufIn )
    {
      this->para = para;
    }

    //---------------------------------------------------------------
    virtual ~myRtosTask()
    {
    }

    //---------------------------------------------------------------
    virtual void update( void )
    {
      ablauf.run( para );
    }

    //---------------------------------------------------------------
    virtual void OnStop( void )
    {
    }

    //---------------------------------------------------------------
    virtual void OnStart(void)
    {
    }

};

//*******************************************************************
cRTOS_RR<3> rtos;

  unsigned prog[1024];

//*******************************************************************
Main::Main( int    argc,
            char **argv )
{
  Option portX        (argc, argv, "port",  "UDP" );
  Option para         (argc, argv, "para",  "0" );
  Option serverAddrStr(argc, argv, "server","127.0.0.1" );
  Option serverPortStr(argc, argv, "ipport","20000" );
  Option fileNameSkript(argc, argv, "skript",argv[1] );

  cNetAddr<4> serverAddr;
  serverAddr = (char *)serverAddrStr;

  port = (char *)portX;

  ipc = new cIPC_Repository( bluetooth, usb, udp,serverAddr, serverPortStr );
  if( strcmp(portX,"UDP")==0 )
  {
    ipcMon = ipc;
  }
  else
  {
    cISC_UDP *ipcTmp = new cISC_UDP(udp,serverAddr, (int)serverPortStr );
    ipcTmp->open();
    ipcMon = ipcTmp;
    printf("other\n");
  }

  orb = new cORBremote( rtos, *ipc, *ipcMon, net );
//  orb = new cORBremote( rtos, /**ipc, *ipcMon,*/ net );

  if( strcmp("USB",(char*)port ) == 0 )
  {
    ipc->setUsb();
  }
  else if( strcmp("UDP",port ) == 0 )
  {
    ipc->setNet();
  }
  else
  {
    bluetooth.setPortName( port );
    ipc->setUart();
  }

  Sleep(100);

  parameter = (int)para;

  for(int i=0;i<argc;i++)
    printf("argv[%d]:%s\n",i,argv[i]);

  if( strlen((char*)fileNameSkript) > 0 )
  {
    // Read program file
    printf("main: %s\n",(char*)fileNameSkript);

    int fh = open( (char*)fileNameSkript, O_RDONLY );

    unsigned pc     = 0;
    unsigned char c = 0;
    unsigned i      = 0;

    char str[100];

    while( read( fh, &c, 1 ) == 1 )
    {
      if( pc >= 1024 )
      {
        printf("Program incomplete\n");
        while( kbhit() == 0 );
      }

      if( c != '['  )
      {
        if( c == ',' || c==']')
        {
            str[i]=0;
            sscanf(str,"%u",&prog[pc++]);
  //  printf("%u\n",prog[pc-1]);
            i = 0;
        }
        else
        {
          str[i++] = c;
        }
      }
    }

    close(fh);

//    int fhOut = open( "Bin\\main.bin", O_WRONLY|O_CREAT|O_TRUNC );
//    for(int i =0;i<pc;i++)
//      write(fhOut,&prog[i],sizeof(unsigned));
//    close(fhOut);
  }
  else
  {
    memset((BYTE*)prog,0,1024*sizeof(unsigned));
  }

  orb->prog = prog;
}

//*******************************************************************
void Main::run( cApplicationBase &ablauf )
{
  myRtosTask app(rtos,ablauf,parameter);
  cCmd              cmd     ( com );
  cCmdParaEvent     keyTAB  ( cmd, "\t" );
  cCmdParaEvent     keyBLANK( cmd, " "  );
  cCmdParaEvent     keyExit ( cmd, "e"  );

  //-----------------------------------------------------------------
  app.Start();
  while (1)
  {
    cSystem::enableInterrupt();
    Sleep(50);
    cSystem::disableInterrupt();

    cmd.update();
    if( keyBLANK.isNew()  )
    {
      app.Stop();
      Sleep(1500);
      ipc->close();
      exit(0);
    }
  }
}

//*******************************************************************
ORB * Main::getOrb()
{
  return( orb );
}

// EOF
