#line 1 "Lib\\entry.cpp"





#line 1 "..\\..\\..\\Firmware\\Common/Src/ORBlocal.h"






 






#line 1 "..\\..\\..\\Firmware\\Common/Src/ORB.h"






 






#line 1 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdarg.h"
 
 
 





 











      namespace std {

          extern "C" {











 

 
 
  typedef struct __va_list { void *__ap; } va_list;

   






 


   










 


   















 




   

 


   




 



   





 


         }   
      }   


#line 119 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdarg.h"





      using ::std::va_list;





 

#line 15 "..\\..\\..\\Firmware\\Common/Src/ORB.h"
#line 1 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\inttypes.h"
 
 





 

 








#line 1 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"
 
 





 











      namespace std {

          extern "C" {










 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     
typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;

     
typedef   signed       __int64 intmax_t;
typedef unsigned       __int64 uintmax_t;


#line 203 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"

#line 222 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"


         }   
      }   





      using ::std::int8_t;
      using ::std::int16_t;
      using ::std::int32_t;
      using ::std::int64_t;
      using ::std::uint8_t;
      using ::std::uint16_t;
      using ::std::uint32_t;
      using ::std::uint64_t;
      using ::std::int_least8_t;
      using ::std::int_least16_t;
      using ::std::int_least32_t;
      using ::std::int_least64_t;
      using ::std::uint_least8_t;
      using ::std::uint_least16_t;
      using ::std::uint_least32_t;
      using ::std::uint_least64_t;
      using ::std::int_fast8_t;
      using ::std::int_fast16_t;
      using ::std::int_fast32_t;
      using ::std::int_fast64_t;
      using ::std::uint_fast8_t;
      using ::std::uint_fast16_t;
      using ::std::uint_fast32_t;
      using ::std::uint_fast64_t;
      using ::std::intptr_t;
      using ::std::uintptr_t;
      using ::std::intmax_t;
      using ::std::uintmax_t;





 



#line 20 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\inttypes.h"

#line 191 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\inttypes.h"

#line 209 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\inttypes.h"

typedef struct imaxdiv_t { intmax_t quot, rem; } imaxdiv_t;
    


extern "C" {


__declspec(__nothrow) intmax_t strtoimax(const char * __restrict  ,
                   char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
     
__declspec(__nothrow) uintmax_t strtoumax(const char * __restrict  ,
                    char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
     

__declspec(__nothrow) intmax_t wcstoimax(const wchar_t * __restrict  ,
                   wchar_t ** __restrict  , int  ) __attribute__((__nonnull__(1)));
__declspec(__nothrow) uintmax_t wcstoumax(const wchar_t * __restrict  ,
                    wchar_t ** __restrict  , int  ) __attribute__((__nonnull__(1)));

extern __declspec(__nothrow) __pure intmax_t imaxabs(intmax_t  );
   



 
extern __declspec(__nothrow) __pure imaxdiv_t imaxdiv(intmax_t  , intmax_t  );
   











 


}




 

#line 16 "..\\..\\..\\Firmware\\Common/Src/ORB.h"



 
typedef uint8_t        BYTE;  
typedef uint16_t       WORD;  
typedef unsigned long  DWORD; 









 
class ORB
{
  public:
    
    


 
    class Motor
    {
      public:
        float pwr;    
        float speed;  
        int   pos;    
    };

  public:
    
    


 
    class Sensor
    {
      public:
        
        
        DWORD value[2];
        BYTE  type;
        BYTE  option;
        BYTE  lenExp;
    };

  public:
    
    
 
    typedef enum
    {
      POWER_MODE  = 0, 
      BRAKE_MODE  = 1, 
      SPEED_MODE  = 2, 
      MOVETO_MODE = 3  
                       
                       
                       
                       
    } MotorMode;

    
    
 
    typedef enum
    {
      ANALOG   = 0, 
      UART   = 1, 
      I2C    = 2, 
      TOF    = 3,
      TOUCH  = 4
    } SensorType;

    
    
 
    ORB( void )
    {
    }

    
    
    
    
    
    














 
    virtual void configMotor( BYTE id,
                              WORD ticsPerRotation,
                              BYTE acc,
                              BYTE Kp,
                              BYTE Ki ) = 0;

    
    










 
    virtual void setMotor ( BYTE  id,
                            BYTE  mode,
                            short speed,
                            int   pos ) = 0;

    
    


 
    virtual ORB::Motor getMotor( BYTE id ) = 0;

    

    
    
    
    
    
    






 
    virtual void setModelServo( BYTE id,
                                BYTE speed,
                                BYTE angle ) = 0;
    

    
    
    
    
    
    




 
    virtual void configSensor( BYTE id,
                               BYTE type,
                               BYTE mode,
                               WORD option ) = 0;



    
    


 
    virtual ORB::Sensor getSensor( BYTE id ) = 0;

    
    









 
    virtual WORD getSensorValueExt( BYTE id, BYTE ch ) = 0;

    
    


 
    virtual BYTE getSensorDigital( BYTE id ) = 0;

    

    
    
    
    
    
    



 
    virtual void setMonitorText( BYTE        line,
                                 const char *format,
                                 va_list     va ) = 0;

    
    

 
    virtual BYTE getMonitorKey( void ) = 0;

    

    
    
    
    
    
    

 
    virtual DWORD getTime( void ) = 0;

    
    

 
    virtual void wait( DWORD time ) = 0;

    

    
    
    
    
    
    



 
    virtual void clearMemory( void ) = 0;

    
    






 
    virtual void setMemory( DWORD  addr,
                            BYTE  *data,
                            DWORD  size ) = 0;

    
    






 
    virtual void getMemory( DWORD  addr,
                            BYTE  *data,
                            DWORD  size ) = 0;

    

    
    
    
    
    
    

 
    virtual float getVcc( void ) = 0;

    


    unsigned *prog;

};

#line 15 "..\\..\\..\\Firmware\\Common/Src/ORBlocal.h"
#line 16 "..\\..\\..\\Firmware\\Common/Src/ORBlocal.h"


#pragma pack(1)





 
class cORBlocal : public ORB
{
  public:
    
    void        (*funcPtr_configMotor       )(void *, BYTE, WORD, BYTE, BYTE, BYTE      );
    void        (*funcPtr_setMotor          )(void *, BYTE, BYTE, short, int            );
    ORB::Motor  (*funcPtr_getMotor          )(void *, BYTE                              );
    void        (*funcPtr_setModelServo     )(void *, BYTE, BYTE, BYTE                  );
    void        (*funcPtr_configSensor      )(void *, BYTE, BYTE, BYTE, WORD            );
    ORB::Sensor (*funcPtr_getSensor         )(void *, BYTE                              );
    WORD        (*funcPtr_getSensorValueExt )(void *, BYTE, BYTE                        );
    BYTE        (*funcPtr_getSensorDigital  )(void *, BYTE                              );
    void        (*funcPtr_setMonitorText    )(void *, BYTE, const char *, va_list       );
    int         (*funcPtr_getMonitorKey     )(void *                                    );
    DWORD       (*funcPtr_getTime           )(void *                                    );
    void        (*funcPtr_wait              )(void *, DWORD                             );
    void        (*funcPtr_clearMemory       )(void *                                    );
    void        (*funcPtr_setMemory         )(void *, DWORD addr, BYTE *data, DWORD size);
    void        (*funcPtr_getMemory         )(void *, DWORD addr, BYTE *data, DWORD size);

public:
    
    virtual void        configMotor      (BYTE id,WORD t,BYTE a,BYTE Kp,BYTE Ki) {return(funcPtr_configMotor      (ptr,id,t,a,Kp,Ki));}
    virtual void        setMotor         (BYTE id,BYTE m, short s, int p       ) {return(funcPtr_setMotor         (ptr,id,m,s,p    ));}
    virtual ORB::Motor  getMotor         (BYTE id                              ) {return(funcPtr_getMotor         (ptr,id          ));}
    virtual void        setModelServo    (BYTE id, BYTE s, BYTE w              ) {return(funcPtr_setModelServo    (ptr,id,s,w      ));}
    virtual void        configSensor     (BYTE id,BYTE t,BYTE m,WORD o         ) {return(funcPtr_configSensor     (ptr,id,t,m,o    ));}
    virtual ORB::Sensor getSensor        (BYTE id                              ) {return(funcPtr_getSensor        (ptr,id          ));}
    virtual WORD        getSensorValueExt(BYTE id, BYTE ch                     ) {return(funcPtr_getSensorValueExt(ptr,id, ch      ));}
    virtual BYTE        getSensorDigital (BYTE id                              ) {return(funcPtr_getSensorDigital (ptr,id          ));}
    virtual void        setMonitorText   (BYTE line,const char *fmt, va_list va) {return(funcPtr_setMonitorText   (ptr,line,fmt,va ));}
    virtual BYTE        getMonitorKey    (                                     ) {return(funcPtr_getMonitorKey    (ptr             ));}
    virtual DWORD       getTime          (                                     ) {return(funcPtr_getTime          (ptr             ));}
    virtual void        wait             (DWORD time                           ) {return(funcPtr_wait             (ptr,time        ));}
    virtual void        clearMemory      (                                     ) {return(funcPtr_clearMemory      (ptr             ));}
    virtual void        setMemory        (DWORD addr, BYTE *data, DWORD s      ) {return(funcPtr_setMemory        (ptr,addr,data,s ));}
    virtual void        getMemory        (DWORD addr, BYTE *data, DWORD s      ) {return(funcPtr_getMemory        (ptr,addr,data,s ));}

    
    virtual float getVcc( void ) {return(0);}

    void *ptr;

};
#pragma pack()

#line 7 "Lib\\entry.cpp"
int Main( BYTE para, cORBlocal &orb ); 




int foo( BYTE para, cORBlocal &orb ) 
{
  int y = -1;
  
 
    y = Main(para, orb); 
  return(y);
	
}
















 unsigned x2 __attribute__((at( 0x8020000))) = (unsigned )foo;  




