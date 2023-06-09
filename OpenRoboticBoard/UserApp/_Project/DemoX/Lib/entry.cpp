////*******************************************************************
//#include "Module/RTOS.h"
//#include "config.h"

//#include "lib.h"
#include "Common/Src/ORBlocal.h"
int Main( BYTE para, cORBlocal &orb ); //, IO::Data *ptr);

//extern IO io;
//unsigned x2 __attribute__((section( ".ARM.__at_0x08020000"	))) = 0x41424344; //__attribute__((section( ".__at_0x8020000"	))) = 0x41424344; //(unsigned )foo; /* RO */

int foo( BYTE para, cORBlocal &orb ) //, IO::Data *ioDataIn, int x)
{
  int y = -1;
  //io.ptr = ioDataIn;
 // if( ioDataIn != NULL )
    y = Main(para, orb); //, ioDataIn);
  return(y);
	
}

// GCC only:
//int main()
//{
//}

//EOF
//const int x1 __attribute__((at(0x8020000))) = 0x40414243; /* RO */

//int var __attribute__((section(".ARM.__at_0x40001000")));
//var = 4;   // changes the memory location at 0x40001000
//const unsigned x2 __attribute__((section( ".text.__at_0x8020000"	))) = 0x41424344; //(unsigned )foo; /* RO */

//
#if defined _KEIL
/// Keil 5:
 unsigned x2 __attribute__((at( 0x8020000))) = (unsigned )foo; /* RO */
//  unsigned x2 __attribute__((at( 0x8020000))) = (unsigned )foo; /* RO */

// Keil armclang 6:
//  unsigned x2 __attribute__((section( ".ARM.__at_0x8020000"	))) = (unsigned )foo; /* RO */
#elif defined _GCC
  int __attribute__((section(".startAppSection"))) x2 = (unsigned )foo; /* RO */
#endif
