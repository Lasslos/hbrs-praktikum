#line 1 "Lib\\main.cpp"

#line 1 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdio.h"
 
 
 





 






 















      namespace std {

        extern "C" {





  
  typedef unsigned int size_t;    








 
 

 
  typedef struct __va_list __va_list;





   




 




typedef struct __fpos_t_struct {
    unsigned __int64 __pos;
    



 
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
   


 


   

 

typedef struct __FILE FILE;
   






 

extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;

#line 129 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






extern __declspec(__nothrow) int remove(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int rename(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) FILE *tmpfile(void);
   




 
extern __declspec(__nothrow) char *tmpnam(char *  );
   











 

extern __declspec(__nothrow) int fclose(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) int fflush(FILE *  );
   







 
extern __declspec(__nothrow) FILE *fopen(const char * __restrict  ,
                           const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   








































 
extern __declspec(__nothrow) FILE *freopen(const char * __restrict  ,
                    const char * __restrict  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(2,3)));
   








 
extern __declspec(__nothrow) void setbuf(FILE * __restrict  ,
                    char * __restrict  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) int setvbuf(FILE * __restrict  ,
                   char * __restrict  ,
                   int  , size_t  ) __attribute__((__nonnull__(1)));
   















 
#pragma __printf_args
extern __declspec(__nothrow) int fprintf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   


















 
#pragma __printf_args
extern __declspec(__nothrow) int _fprintf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   




 
#pragma __printf_args
extern __declspec(__nothrow) int _printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






 
#pragma __printf_args
extern __declspec(__nothrow) int _sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   















 

#pragma __printf_args
extern __declspec(__nothrow) int _snprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int fscanf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






























 
#pragma __scanf_args
extern __declspec(__nothrow) int _fscanf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   






 
#pragma __scanf_args
extern __declspec(__nothrow) int _scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int sscanf(const char * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   








 
#pragma __scanf_args
extern __declspec(__nothrow) int _sscanf(const char * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

 
extern __declspec(__nothrow) int vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int _vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int _vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int _vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int _vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int vfprintf(FILE * __restrict  ,
                    const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int vsprintf(char * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 

extern __declspec(__nothrow) int vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   







 

extern __declspec(__nothrow) int _vsprintf(char * __restrict  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vfprintf(FILE * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vsnprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   



 
extern __declspec(__nothrow) int fgetc(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) char *fgets(char * __restrict  , int  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   










 
extern __declspec(__nothrow) int fputc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   







 
extern __declspec(__nothrow) int fputs(const char * __restrict  , FILE * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int getc(FILE *  ) __attribute__((__nonnull__(1)));
   







 

    inline int getchar() { return getc((& ::std:: __stdin)); }




   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 

    inline int putchar(int __c) { return putc(__c, (& ::std:: __stdout)); }




   



 
extern __declspec(__nothrow) int puts(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int ungetc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   






















 

extern __declspec(__nothrow) size_t fread(void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   











 

extern __declspec(__nothrow) size_t __fread_bytes_avail(void * __restrict  ,
                    size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   











 

extern __declspec(__nothrow) size_t fwrite(const void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   







 

extern __declspec(__nothrow) int fgetpos(FILE * __restrict  , fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) int fseek(FILE *  , long int  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) int fsetpos(FILE * __restrict  , const fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   










 
extern __declspec(__nothrow) long int ftell(FILE *  ) __attribute__((__nonnull__(1)));
   











 
extern __declspec(__nothrow) void rewind(FILE *  ) __attribute__((__nonnull__(1)));
   





 

extern __declspec(__nothrow) void clearerr(FILE *  ) __attribute__((__nonnull__(1)));
   




 

extern __declspec(__nothrow) int feof(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) int ferror(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) void perror(const char *  );
   









 

extern __declspec(__nothrow) int _fisatty(FILE *   ) __attribute__((__nonnull__(1)));
    
 

extern __declspec(__nothrow) void __use_no_semihosting_swi(void);
extern __declspec(__nothrow) void __use_no_semihosting(void);
    





 


        }   
      }   








    using ::std::size_t;
    using ::std::fpos_t;
    using ::std::FILE;
    using ::std::remove;
    using ::std::rename;
    using ::std::tmpfile;
    using ::std::tmpnam;
    using ::std::fclose;
    using ::std::fflush;
    using ::std::fopen;
    using ::std::freopen;
    using ::std::setbuf;
    using ::std::setvbuf;
    using ::std::fprintf;
    using ::std::_fprintf;
    using ::std::printf;
    using ::std::_printf;
    using ::std::sprintf;
    using ::std::_sprintf;

      using ::std::snprintf;
      using ::std::vsnprintf;
      using ::std::vfscanf;
      using ::std::vscanf;
      using ::std::vsscanf;

    using ::std::_snprintf;
    using ::std::_vsnprintf;
    using ::std::fscanf;
    using ::std::_fscanf;
    using ::std::scanf;
    using ::std::_scanf;
    using ::std::sscanf;
    using ::std::_sscanf;
    using ::std::_vfscanf;
    using ::std::_vscanf;
    using ::std::_vsscanf;
    using ::std::vprintf;
    using ::std::_vprintf;
    using ::std::vfprintf;
    using ::std::_vfprintf;
    using ::std::vsprintf;
    using ::std::_vsprintf;
    using ::std::fgetc;
    using ::std::fgets;
    using ::std::fputc;
    using ::std::fputs;
    using ::std::getc;
    using ::std::getchar;
    using ::std::gets;
    using ::std::putc;
    using ::std::putchar;
    using ::std::puts;
    using ::std::ungetc;
    using ::std::fread;
    using ::std::__fread_bytes_avail;
    using ::std::fwrite;
    using ::std::fgetpos;
    using ::std::fseek;
    using ::std::fsetpos;
    using ::std::ftell;
    using ::std::rewind;
    using ::std::clearerr;
    using ::std::feof;
    using ::std::ferror;
    using ::std::perror;
    using ::std::_fisatty;
    using ::std::__use_no_semihosting_swi;
    using ::std::__use_no_semihosting;




 

#line 3 "Lib\\main.cpp"
#line 1 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\string.h"
 
 
 
 




 








 













        namespace std {

        extern "C" {





  
  typedef unsigned int size_t;








extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 



extern __declspec(__nothrow) const void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
extern "C++" void *memchr(void * __s, int __c, size_t __n) __attribute__((__nonnull__(1)));
extern "C++" inline void *memchr(void * __s, int __c, size_t __n)
    { return const_cast<void *>(memchr(const_cast<const void *>(__s), __c, __n)); }



   





 


extern __declspec(__nothrow) const char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));
extern "C++" char *strchr(char * __s, int __c) __attribute__((__nonnull__(1)));
extern "C++" inline char *strchr(char * __s, int __c)
    { return const_cast<char *>(strchr(const_cast<const char *>(__s), __c)); }



   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 


extern __declspec(__nothrow) const char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
extern "C++" char *strpbrk(char * __s1, const char * __s2) __attribute__((__nonnull__(1,2)));
extern "C++" inline char *strpbrk(char * __s1, const char * __s2)
    { return const_cast<char *>(strpbrk(const_cast<const char *>(__s1), __s2)); }



   




 


extern __declspec(__nothrow) const char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));
extern "C++" char *strrchr(char * __s, int __c) __attribute__((__nonnull__(1)));
extern "C++" inline char *strrchr(char * __s, int __c)
    { return const_cast<char *>(strrchr(const_cast<const char *>(__s), __c)); }



   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 


extern __declspec(__nothrow) const char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
extern "C++" char *strstr(char * __s1, const char * __s2) __attribute__((__nonnull__(1,2)));
extern "C++" inline char *strstr(char * __s1, const char * __s2)
    { return const_cast<char *>(strstr(const_cast<const char *>(__s1), __s2)); }



   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 


         }   
      }   





      using ::std::size_t;
      using ::std::memcpy;
      using ::std::memmove;
      using ::std::strcpy;
      using ::std::strncpy;
      using ::std::strcat;
      using ::std::strncat;
      using ::std::memcmp;
      using ::std::strcmp;
      using ::std::strncmp;
      using ::std::strcasecmp;
      using ::std::strncasecmp;
      using ::std::strcoll;
      using ::std::strxfrm;
      using ::std::memchr;
      using ::std::strchr;
      using ::std::strcspn;
      using ::std::strpbrk;
      using ::std::strrchr;
      using ::std::strspn;
      using ::std::strstr;
      using ::std::strtok;

      using ::std::strtok_r;

      using ::std::_strtok_r;
      using ::std::memset;
      using ::std::strerror;
      using ::std::strlen;
      using ::std::strlcpy;
      using ::std::strlcat;
      using ::std::_membitcpybl;
      using ::std::_membitcpybb;
      using ::std::_membitcpyhl;
      using ::std::_membitcpyhb;
      using ::std::_membitcpywl;
      using ::std::_membitcpywb;
      using ::std::_membitmovebl;
      using ::std::_membitmovebb;
      using ::std::_membitmovehl;
      using ::std::_membitmovehb;
      using ::std::_membitmovewl;
      using ::std::_membitmovewb;





 

#line 4 "Lib\\main.cpp"
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




 

#line 5 "Lib\\main.cpp"

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

#line 7 "Lib\\main.cpp"

cORBlocal *orbPtr;


class cApplicationBase
{
public:
  virtual void run(BYTE para) = 0;

};


#line 1 "..\\..\\..\\Middleware\\Src\\Value.h"






 








 
template <class T> class Value
{
  protected:
    
    virtual T get( void ) = 0;

  public:
    
    








 
    operator T( void )
    {
      return( get() );
    }
};



#line 20 "Lib\\main.cpp"
#line 1 "..\\..\\..\\Middleware\\Src\\Memory.h"






 







 
class Memory
{
  public:
    
    







 
    class Item
    {
      private:
        
        Item   *next;
        int     value;
        DWORD   addr;

      public:
        
        














 
        Item( DWORD addr = (DWORD)(-1) )
        {
          next = 0;
          Memory::addItem( this, addr );
        }

        
        

 
        void operator=( int x )
        {
          value = x;
        }

        
        


 
        operator int()
        {
          return( value );
        }

      friend class Memory;
    };

  private:
    
    static Memory::Item *first;

    
    static void addItem( Memory::Item *item, DWORD addr );

  public:
    
    

 
    static void clean( void )
    {
      first = 0;
    }

    
    





 
    static void store( void );

    friend class Memory::Item;
};


Memory::Item *Memory::first = 0;


void Memory::addItem( Memory::Item *notiz, DWORD addrIn )
{
  unsigned int addr = 0;

  if( first )
  {
    Memory::Item *ptr = first;
    while( ptr )
    {
      addr += sizeof(int);

      if( ptr->next == 0 )
      {
        ptr->next = notiz;
        break;
      }
      ptr = ptr->next;
    }
  }
  else
  {
    first = notiz;
  }

  notiz->addr = ( addrIn != (DWORD)(-1) ) ? addrIn : addr;
  orbPtr->getMemory(notiz->addr, (unsigned char*)&notiz->value, sizeof(notiz->value) );
}


void Memory::store( void )
{
  bool dirty = false;

  Memory::Item *ptr = first;

  while( ptr && !dirty)
  {
    int original = 0;
    orbPtr->getMemory( ptr->addr, (unsigned char*)&original, sizeof(ptr->value) );
    if( original != ptr->value )
    {
      dirty = true;
    }
    ptr = ptr->next;
  }

  if( dirty )
  {
    orbPtr->clearMemory();
  }

  ptr = first;

  while( ptr )
  {
    if( dirty )
    {
      orbPtr->setMemory( ptr->addr, (unsigned char*)&ptr->value, sizeof(ptr->value) );
    }
    orbPtr->getMemory( ptr->addr, (unsigned char*)&ptr->value, sizeof(ptr->value) );
    ptr = ptr->next;
  }
}

#line 21 "Lib\\main.cpp"
#line 1 "..\\..\\..\\Middleware\\Src\\Timer.h"






 






#line 15 "..\\..\\..\\Middleware\\Src\\Timer.h"
























 
class Timer : public Value<DWORD>
{
  private:
    
    DWORD  timeoutTime;
    bool   isRunning;
    DWORD  startTime;
    ORB   &orb;

  public:
    
    


 
    Timer( DWORD time = 0 )
    : orb( *orbPtr )
    {
      timeoutTime = 0;
      reset();
      start( time );
    }

    
    


 
    virtual DWORD get( void )
    {
      return( orb.getTime() - startTime );
    }

    
    


 
    virtual void reset( void )
    {
      startTime = orb.getTime();
    }

    
    






 
    virtual void start( DWORD time = 0 )
    {
      reset();
      if( time > 0 )
      {
        timeoutTime = time;
      }
      isRunning = (timeoutTime > 0);
    }

    
    



 
    virtual void stop( void )
    {
      isRunning = false;
    }

    
    



 
    virtual bool timeout( void )
    {
      if( isRunning )
      {
        if( get() >= timeoutTime )
        {
          start();
          return( true );
        }
      }
      return( false );
    }

    
    


 
    virtual void wait( DWORD time )
    {
      orb.wait( time );
    }
};
#line 22 "Lib\\main.cpp"

#line 1 "..\\..\\..\\Middleware\\Src\\Motor.h"






 






#line 15 "..\\..\\..\\Middleware\\Src\\Motor.h"






 
class Motor
{
  public:
    
    
 
    typedef enum
    {
      M1  = 0x00, 
      M2,         
      M3,         
      M4          
    } Port_type;

    
    
 
    typedef enum
    {
      NORMAL = 0,      
      REVERSE = 0x80   
    } Orientation_type;

    
    
 
    typedef enum
    {
      LEGO,        
      MAKEBLOCK,   
      FAULHABER    
    } Type_type;

  private:
    
    BYTE   port;
    float  orientation;
    ORB   &orb;

  public:
    
    



 
    Motor( Port_type        port,
           Orientation_type orientation,
           Type_type        type )
    : orb( *orbPtr )
    {
      this->port        = port;
      this->orientation = (orientation==NORMAL)?+1.0:-1.0;

      switch( type )
      {
        case LEGO:      orb.configMotor( port,   72, 25, 20, 30 ); break;
        case MAKEBLOCK: orb.configMotor( port,  144, 50, 50, 30 ); break;
        case FAULHABER: orb.configMotor( port, 8800, 25, 50, 50 ); break;
      }
    }

  public:
    
    

 
    virtual void brake( void )
    {
      orb.setMotor( port, ORB::BRAKE_MODE, 0, 0 );
    }

    
    

 
    virtual void setPower( short power )
    {
      orb.setMotor( port, ORB::POWER_MODE, orientation*power, 0 );
    }

    
    


 
    virtual void setSpeed( short speed )
    {
      orb.setMotor( port, ORB::SPEED_MODE, orientation*speed, 0 );
    }

    
    



 
    virtual void setPosition( short speed, int position )
    {
      orb.setMotor( port, ORB::MOVETO_MODE,orientation*speed, orientation*position );
    }

    
    

 
    short getPower()
    {
     
      return( orientation*orb.getMotor(port).pwr );
    }

    
    

 
    short getSpeed()
    {
      return( orientation*orb.getMotor(port).speed );
    }

    
    

 
    int getPos()
    {
      return( orientation*orb.getMotor(port).pos );
    }
};
#line 24 "Lib\\main.cpp"
#line 1 "..\\..\\..\\Middleware\\Src\\DoppelMotor.h"






 






#line 15 "..\\..\\..\\Middleware\\Src\\DoppelMotor.h"






 
class DoppelMotor : public Motor
{
  public:
    
  private:
    
    Motor  motor;
	  

  public:
    
    



 
    DoppelMotor( Port_type        port,
                 Port_type        port2,
                 Orientation_type orientation,
                 Type_type        type )
    : Motor(port,orientation,type), motor( port2,orientation,type)
    {
      
    }

  public:
    
    

 
    virtual void brake( void )
    {
      Motor::brake(); 
			motor.brake();
    }

    
    

 
    virtual void setPower( short power )
    {
      Motor::setPower( power );
			motor.setPower( power );
    }

    
    


 
    virtual void setSpeed( short speed )
    {
      Motor::setSpeed( speed );
			motor.setSpeed( speed );
    }

    
    



 
    virtual void setPosition( short speed, int position )
    {
      Motor::setPosition( speed, position );
			motor.setPosition( speed, position );
    }

    
    

 
    short getPower()
    {
      return( 0.5*(Motor::getPower() + motor.getPower()) );
    }

    
    

 
    short getSpeed()
    {
      return( 0.5*(Motor::getSpeed() + motor.getSpeed()) );
    }

    
    

 
    int getPos()
    {
      return( 0.5*(Motor::getPos()+motor.getPos()) );
    }
};
#line 25 "Lib\\main.cpp"

#line 1 "..\\..\\..\\Middleware\\Src\\Sensor.h"






 






#line 15 "..\\..\\..\\Middleware\\Src\\Sensor.h"





 
class Sensor : public Value<int>
{
  public:
    
    
 
    typedef enum
    {
      S1 = 0, 
      S2,     
      S3,     
      S4      
    } SensorPort_type;

    
    
 
    typedef enum
    {
      NONE    = 0,                   
      EV3_FARBSENSOR_HELLIGKEIT = 1, 
      EV3_FARBSENSOR_FARBE = 3,      
      NXT_ULTRASCHALL = 9,           
      ANALOG_ON  = 10,               
      ANALOG_OFF  = 11,              
	    MB_ULTRASCHALL = 12,            
	    TCS3472_COLOR      = 13,
      VL53L0X_DISTANCE = 14,          
      EV3_GYRO_ANGLE = 15,      
      EV3_GYRO_RATE = 16,      
      EV3_ULTRASCHALL = 17,      
    } SensorType_type;

  protected:
    
    ORB  &orb;

    BYTE port;
    BYTE mode;

    float gain;
    float offset;

    Memory::Item kalib0;
    Memory::Item kalib1;

    BYTE numOfCh;
    BYTE maxNumOfCh;

  public:
    
    





 
    Sensor( SensorPort_type port, BYTE mode )
    : orb( *orbPtr ),
      kalib0(0x1000 + port*0x10               ),
      kalib1(0x1000 + port*0x10 + sizeof(int) )
    {
      this->port = port;
      numOfCh = 0;
      maxNumOfCh = 1;

      init(mode );
    }

    
    





 
    Sensor( Sensor &s )
    : orb( *orbPtr ),
      kalib0(0x1000 + port*0x10               ),
      kalib1(0x1000 + port*0x10 + sizeof(int) )
    {
      this->port   = s.port;
      this->gain   = s.gain;
      this->offset = s.offset;
      this->mode    = s.mode;
      this->numOfCh = s.numOfCh;
      this->maxNumOfCh = s.maxNumOfCh;
      if( numOfCh < maxNumOfCh)
      {
          numOfCh++;
      }

      init(mode );
    }

  private:
    
    void init(unsigned char modeIn)
    {
      mode = modeIn;

      gain   = (kalib0!=kalib1)?100.0f/(float)(kalib1-kalib0):1.0f;
      offset = kalib0;

      switch( mode )
      {
        default:
            maxNumOfCh = 1;
          orb.configSensor( port, ORB::ANALOG, 0, 0 );
          break;

        case EV3_FARBSENSOR_HELLIGKEIT:
            maxNumOfCh = 1;
          orb.configSensor( port, ORB::UART, 0, 0 );
          break;

        case EV3_FARBSENSOR_FARBE:
            maxNumOfCh = 1;
          orb.configSensor( port, ORB::UART, 2, 0 );
          break;

        case NXT_ULTRASCHALL:
            maxNumOfCh = 1;
          orb.configSensor( port, ORB::I2C, 0, 0 );
				  gain = 10.0;
				offset = 0.0;
          break;

        case ANALOG_OFF:
            maxNumOfCh = 1;
          orb.configSensor( port, ORB::ANALOG, 0, 0 );
          break;

        case ANALOG_ON:
            maxNumOfCh = 1;
          orb.configSensor( port, ORB::ANALOG, 0, 6>>8 );
          break;

        case MB_ULTRASCHALL:
            maxNumOfCh = 1;
					
				  



          orb.configSensor( port, ORB::TOF, 0, 0 );
				  gain   = 0.170;  
          offset = 30; 
          break;

        case TCS3472_COLOR:
            maxNumOfCh = 1;
          orb.configSensor( port, ORB::I2C, 1, 0 );
				  gain = 1.0;
				offset = 0.0;

        break;

        case VL53L0X_DISTANCE:
            maxNumOfCh = 2;
          orb.configSensor( port, ORB::I2C, 2, numOfCh );
				  gain = 1.0;
				offset = 0.0;
          break;

        case EV3_ULTRASCHALL:
          maxNumOfCh = 1;
          orb.configSensor(port, ORB::UART, 0, 0);
          break;
      }
    }

  public:
    
    





 
    void kalibHundert()
    {
      kalib1 = orbPtr->getSensor(port).value[0]&0xFFF;
      gain   = (kalib1!=kalib0)?100.0f/(float)(kalib1-kalib0):1.0f;
      offset = kalib0;
    }

    
    





 
    void kalibNull()
    {
      kalib0 = orbPtr->getSensor(port).value[0]&0xFFF;
      gain   = (kalib1!=kalib0)?100.0f/(float)(kalib1-kalib0):1.0f;
      offset = kalib0;
    }

    
    

 
    virtual int get()
    {
      switch( mode )
      {
        case TCS3472_COLOR:
            return(orbPtr->getSensor(port).value[0]);

        case VL53L0X_DISTANCE:
            if( numOfCh == 0)
                return(orbPtr->getSensor(port).value[0] & 0xFFFF);
            else
                return ((orbPtr->getSensor(port).value[0]>>16) & 0xFFFF);

        case EV3_FARBSENSOR_FARBE:
          return(orbPtr->getSensor(port).value[0] & 0xFFFF);

        case ANALOG_ON:
        case ANALOG_OFF:
            return(gain*((float)(orbPtr->getSensor(port).value[0]&0xFFF)-offset));

        default:
            return(gain*((float)orbPtr->getSensor(port).value[0]-offset));
      }
    }

};
#line 27 "Lib\\main.cpp"
#line 1 "..\\..\\..\\Middleware\\Src\\SensorColorTCS3472.h"






 






#line 15 "..\\..\\..\\Middleware\\Src\\SensorColorTCS3472.h"





 
class SensorColorTCS3472 : public Sensor
{
  public:
    
    
 
    typedef enum
    {
      RED = 0,   
      GREEN,     
      BLAU,      
      WHITE,     
      GRAY,      
      BLACK      
    } Color_type;

  private:

  public:
    
    





 
    SensorColorTCS3472( SensorPort_type port )
    : Sensor(port, Sensor::TCS3472_COLOR)
    {

      kalib();
    }

  private:
    
    void init(unsigned char modeIn)
    {
       orb.configSensor( port, ORB::I2C, 1, 0 );
       gain = 1.0;
       offset = 0.0;
    }

  public:
    
    




 
    void kalibHundert()
    {

    }

    
    




 
    void kalibNull()
    {

    }

    
    

 
    virtual int get()
    {
			return(orbPtr->getSensor(port).value[0]);
    }

    
    

 
    Color_type getColor()
    {
      update();

      if( S > 20 && V >  8) 
      {
        if( 300 <= H || H <  60 )
          return( RED );
        if( 60  <= H && H < 180 )
          return( GREEN );
        return( BLAU );
      }
      else
      {
        if( V > 70 )
          return(WHITE);
        if( V > 30 )
          return(GRAY);
        return(BLACK);
      }
    }

    DWORD raw;

    class RGB
    {
    public:

      int R,G,B;
      RGB(DWORD raw = 0)
      {
        *this = raw;
      }

      void operator=(DWORD raw)
      {
        
        
        
        
        
        R = (raw >> 20)&0xFFC;
        G = (raw >> 10)&0xFFF;
        B = (raw <<  2)&0xFFC;
      }
    };

    public:

    int R,G,B;
    int H, 
        S, 
        V; 

    float Rv,Gv,Bv;
    RGB offset;

    public:


    float range(float x, float min, float max)
    {
      if( x > max)
        return( max );
      if( x < min )
        return( min );
      return( x );
    }

    void update()
    {
      raw = get();

      RGB rgb(raw);


      R = range(Rv*(rgb.R-offset.R),0.0,2000.0);
      G = range(Gv*(rgb.G-offset.G),0.0,2000.0);
      B = range(Bv*(rgb.B-offset.B),0.0,2000.0);

     
     

      int min = 0;
      int max = 0;

      if( R>G && R>B ) 
      {
        max = R;
        min = (G<B?G:B);
        H = ( 60.0*(0.0+(float)(G-B)/(max-min)));
      }
      else if(G>R&&G>B) 
      {
        max = G;
        min = (R<B?R:B);
        H = ( 60.0*(2.0+(float)(B-R)/(max-min)));
      }
      else if(B>R&&B>G) 
      {
        max = B;
        min = (R<G?R:G);
        H = ( 60.0*(4.0+(float)(R-G)/(max-min)));
      }
      else 
      {
        max = R;
        min = R;
        H = 0;
      }
      if(H<0)
        H = 360+H;
      else if( H > 360)
        H = H - 360;

      if( max > 0 )
        S = 100.0*(max-min)/max;
      else
        S = 0;
      V = 0.1*max;
    }

    void kalibBlack()
    {
      update();
      kalib0 = (int)raw;

      kalib();


    }

    void kalibWhite()
    {
      update();
      kalib1 = (int)raw;

      kalib();



    }
  private:
    void kalib()
    {
      RGB c((DWORD)kalib1);
      offset = (DWORD)kalib0;

      if( c.R != offset.R )
        Rv = 1000.0/(c.R - offset.R);
      if( c.G != offset.G )
        Gv = 1000.0/(c.G - offset.G);
      if( c.B != offset.B )
        Bv = 1000.0/(c.B - offset.B);

    }

};
#line 28 "Lib\\main.cpp"
#line 1 "..\\..\\..\\Middleware\\Src\\SensorDigital.h"






 






#line 15 "..\\..\\..\\Middleware\\Src\\SensorDigital.h"





 
class SensorDigital : public Value<int>
{
  public:
    
    
 
    typedef enum
    {
      D1 = 0, 
      D2 = 1  
    } SensorPort_type;

  private:
    
    BYTE  port;
    ORB  &orb;

  public:
    
    

 
    SensorDigital( SensorPort_type port )
    : orb( *orbPtr )
    {
      this->port = port;
    }

  public:
    
    

 
    virtual int get( void )
    {
      return( orbPtr->getSensorDigital( port ) );
    }

};
#line 29 "Lib\\main.cpp"
#line 1 "..\\..\\..\\Middleware\\Src\\SensorExtra.h"






 






#line 15 "..\\..\\..\\Middleware\\Src\\SensorExtra.h"









 
class SensorExtra : public Value<int>
{
  public:
    
    

 
    typedef enum
    {
      ANALOG  = 0, 
      ANALOG_B  = 1, 
      DIGITAL_A,   
      DIGITAL_B,   
    } SensorType_type;

    
    
 
    typedef enum
    {
      S1 = 0, 
      S2,     
      S3,     
      S4      
    } SensorPort_type;

  private:
    
    BYTE port;
    BYTE mode;

    ORB  &orb;

	 float gain;
    float offset;
	
	Memory::Item kalib0;
    Memory::Item kalib1;

  public:
    
    



 
    SensorExtra( SensorPort_type port, BYTE mode )
    : orb( *orbPtr ),
      kalib0(0x1000 + port*0x10+(mode+1)*0x100               ),
      kalib1(0x1000 + port*0x10+(mode+1)*0x100 + sizeof(int) )
    {
      this->port = port;
      this->mode = mode;
			
			init(mode);
    }

		private:
    
    void init(unsigned char modeIn)
    {
      mode = modeIn;

      gain   = (kalib0!=kalib1)?100.0f/(float)(kalib1-kalib0):1.0f;
      offset = kalib0;
    }

		  public:
    
    





 
    void kalibHundert()
    {
      kalib1 = orbPtr->getSensorValueExt(port,mode)&0xFFF;
      gain   = (kalib1!=kalib0)?100.0f/(float)(kalib1-kalib0):1.0f;
      offset = kalib0;
    }

    
    





 
    void kalibNull()
    {
      kalib0 = orbPtr->getSensorValueExt(port,mode)&0xFFF;
      gain   = (kalib1!=kalib0)?100.0f/(float)(kalib1-kalib0):1.0f;
      offset = kalib0;
    }


  public:
    
    

 
    virtual int get( void )
    {
      switch( mode )
      {
        case ANALOG:    return( gain*((float)(orbPtr->getSensorValueExt(port,0)&0xFFF)-offset)  );
        case ANALOG_B:  return( gain*((float)(orbPtr->getSensorValueExt(port,1)&0xFFF)-offset)  );
        case DIGITAL_A: return( (orbPtr->getSensorValueExt(port,2)&(1<<14)) != 0 );
        case DIGITAL_B: return( (orbPtr->getSensorValueExt(port,3)&(1<<13)) != 0 );
        default:        return( 0 );
      }
    }

};
#line 30 "Lib\\main.cpp"
#line 1 "..\\..\\..\\Middleware\\Src\\EncoderServo.h"






 






#line 15 "..\\..\\..\\Middleware\\Src\\EncoderServo.h"
#line 1 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\math.h"




 





 












 








 






#line 48 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\math.h"

#line 62 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\math.h"

   




 















 
#line 93 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\math.h"











 


      extern "C" {


extern __softfp unsigned __ARM_dcmp4(double  , double  );
extern __softfp unsigned __ARM_fcmp4(float  , float  );
    




 

extern __declspec(__nothrow) __softfp int __ARM_fpclassifyf(float  );
extern __declspec(__nothrow) __softfp int __ARM_fpclassify(double  );
     
     

inline __declspec(__nothrow) __softfp int __ARM_isfinitef(float __x)
{
    return (((*(unsigned *)&(__x)) >> 23) & 0xff) != 0xff;
}
inline __declspec(__nothrow) __softfp int __ARM_isfinite(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff) != 0x7ff;
}
     
     

inline __declspec(__nothrow) __softfp int __ARM_isinff(float __x)
{
    return ((*(unsigned *)&(__x)) << 1) == 0xff000000;
}
inline __declspec(__nothrow) __softfp int __ARM_isinf(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) << 1) == 0xffe00000) && ((*(unsigned *)&(__x)) == 0);
}
     
     

inline __declspec(__nothrow) __softfp int __ARM_islessgreaterf(float __x, float __y)
{
    unsigned __f = __ARM_fcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
inline __declspec(__nothrow) __softfp int __ARM_islessgreater(double __x, double __y)
{
    unsigned __f = __ARM_dcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
    


 

inline __declspec(__nothrow) __softfp int __ARM_isnanf(float __x)
{
    return (0x7f800000 - ((*(unsigned *)&(__x)) & 0x7fffffff)) >> 31;
}
inline __declspec(__nothrow) __softfp int __ARM_isnan(double __x)
{
    unsigned __xf = (*(1 + (unsigned *)&(__x))) | (((*(unsigned *)&(__x)) == 0) ? 0 : 1);
    return (0x7ff00000 - (__xf & 0x7fffffff)) >> 31;
}
     
     

inline __declspec(__nothrow) __softfp int __ARM_isnormalf(float __x)
{
    unsigned __xe = ((*(unsigned *)&(__x)) >> 23) & 0xff;
    return (__xe != 0xff) && (__xe != 0);
}
inline __declspec(__nothrow) __softfp int __ARM_isnormal(double __x)
{
    unsigned __xe = ((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff;
    return (__xe != 0x7ff) && (__xe != 0);
}
     
     

inline __declspec(__nothrow) __softfp int __ARM_signbitf(float __x)
{
    return (*(unsigned *)&(__x)) >> 31;
}
inline __declspec(__nothrow) __softfp int __ARM_signbit(double __x)
{
    return (*(1 + (unsigned *)&(__x))) >> 31;
}
     
     


      }  






      namespace std {

        extern "C" {






   
  typedef float float_t;
  typedef double double_t;







extern const int math_errhandling;



extern __declspec(__nothrow) double acos(double  );
    
    
    
extern __declspec(__nothrow) double asin(double  );
    
    
    
    

extern __declspec(__nothrow) __pure double atan(double  );
    
    

extern __declspec(__nothrow) double atan2(double  , double  );
    
    
    
    

extern __declspec(__nothrow) double cos(double  );
    
    
    
    
extern __declspec(__nothrow) double sin(double  );
    
    
    
    

extern void __use_accurate_range_reduction(void);
    
    

extern __declspec(__nothrow) double tan(double  );
    
    
    
    

extern __declspec(__nothrow) double cosh(double  );
    
    
    
    
extern __declspec(__nothrow) double sinh(double  );
    
    
    
    
    

extern __declspec(__nothrow) __pure double tanh(double  );
    
    

extern __declspec(__nothrow) double exp(double  );
    
    
    
    
    

extern __declspec(__nothrow) double frexp(double  , int *  ) __attribute__((__nonnull__(2)));
    
    
    
    
    
    

extern __declspec(__nothrow) double ldexp(double  , int  );
    
    
    
    
extern __declspec(__nothrow) double log(double  );
    
    
    
    
    
extern __declspec(__nothrow) double log10(double  );
    
    
    
extern __declspec(__nothrow) double modf(double  , double *  ) __attribute__((__nonnull__(2)));
    
    
    
    

extern __declspec(__nothrow) double pow(double  , double  );
    
    
    
    
    
    
extern __declspec(__nothrow) double sqrt(double  );
    
    
    




    inline double _sqrt(double __x) { return sqrt(__x); }


    inline float _sqrtf(float __x) { return __sqrtf(__x); }



    



 

extern __declspec(__nothrow) __pure double ceil(double  );
    
    
extern __declspec(__nothrow) __pure double fabs(double  );
    
    

extern __declspec(__nothrow) __pure double floor(double  );
    
    

extern __declspec(__nothrow) double fmod(double  , double  );
    
    
    
    
    

    









 



extern __declspec(__nothrow) double acosh(double  );
    

 
extern __declspec(__nothrow) double asinh(double  );
    

 
extern __declspec(__nothrow) double atanh(double  );
    

 
extern __declspec(__nothrow) double cbrt(double  );
    

 
inline __declspec(__nothrow) __pure double copysign(double __x, double __y)
    

 
{
    (*(1 + (unsigned *)&(__x))) = ((*(1 + (unsigned *)&(__x))) & 0x7fffffff) | ((*(1 + (unsigned *)&(__y))) & 0x80000000);
    return __x;
}
inline __declspec(__nothrow) __pure float copysignf(float __x, float __y)
    

 
{
    (*(unsigned *)&(__x)) = ((*(unsigned *)&(__x)) & 0x7fffffff) | ((*(unsigned *)&(__y)) & 0x80000000);
    return __x;
}
extern __declspec(__nothrow) double erf(double  );
    

 
extern __declspec(__nothrow) double erfc(double  );
    

 
extern __declspec(__nothrow) double expm1(double  );
    

 



    

 






#line 445 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\math.h"


extern __declspec(__nothrow) double hypot(double  , double  );
    




 
extern __declspec(__nothrow) int ilogb(double  );
    

 
extern __declspec(__nothrow) int ilogbf(float  );
    

 
extern __declspec(__nothrow) int ilogbl(long double  );
    

 







    

 





    



 





    



 





    

 





    



 





    



 





    



 





    

 





    

 





    


 

extern __declspec(__nothrow) double lgamma (double  );
    


 
extern __declspec(__nothrow) double log1p(double  );
    

 
extern __declspec(__nothrow) double logb(double  );
    

 
extern __declspec(__nothrow) float logbf(float  );
    

 
extern __declspec(__nothrow) long double logbl(long double  );
    

 
extern __declspec(__nothrow) double nextafter(double  , double  );
    


 
extern __declspec(__nothrow) float nextafterf(float  , float  );
    


 
extern __declspec(__nothrow) long double nextafterl(long double  , long double  );
    


 
extern __declspec(__nothrow) double nexttoward(double  , long double  );
    


 
extern __declspec(__nothrow) float nexttowardf(float  , long double  );
    


 
extern __declspec(__nothrow) long double nexttowardl(long double  , long double  );
    


 
extern __declspec(__nothrow) double remainder(double  , double  );
    

 
extern __declspec(__nothrow) __pure double rint(double  );
    

 
extern __declspec(__nothrow) double scalbln(double  , long int  );
    

 
extern __declspec(__nothrow) float scalblnf(float  , long int  );
    

 
extern __declspec(__nothrow) long double scalblnl(long double  , long int  );
    

 
extern __declspec(__nothrow) double scalbn(double  , int  );
    

 
extern __declspec(__nothrow) float scalbnf(float  , int  );
    

 
extern __declspec(__nothrow) long double scalbnl(long double  , int  );
    

 




    

 



 
extern __declspec(__nothrow) __pure float _fabsf(float);  
inline __declspec(__nothrow) __pure float fabsf(float __f) { return _fabsf(__f); }
extern __declspec(__nothrow) float sinf(float  );
extern __declspec(__nothrow) float cosf(float  );
extern __declspec(__nothrow) float tanf(float  );
extern __declspec(__nothrow) float acosf(float  );
extern __declspec(__nothrow) float asinf(float  );
extern __declspec(__nothrow) float atanf(float  );
extern __declspec(__nothrow) float atan2f(float  , float  );
extern __declspec(__nothrow) float sinhf(float  );
extern __declspec(__nothrow) float coshf(float  );
extern __declspec(__nothrow) float tanhf(float  );
extern __declspec(__nothrow) float expf(float  );
extern __declspec(__nothrow) float logf(float  );
extern __declspec(__nothrow) float log10f(float  );
extern __declspec(__nothrow) float powf(float  , float  );
extern __declspec(__nothrow) float sqrtf(float  );
extern __declspec(__nothrow) float ldexpf(float  , int  );
extern __declspec(__nothrow) float frexpf(float  , int *  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) __pure float ceilf(float  );
extern __declspec(__nothrow) __pure float floorf(float  );
extern __declspec(__nothrow) float fmodf(float  , float  );
extern __declspec(__nothrow) float modff(float  , float *  ) __attribute__((__nonnull__(2)));

 
 













 
__declspec(__nothrow) long double acosl(long double );
__declspec(__nothrow) long double asinl(long double );
__declspec(__nothrow) long double atanl(long double );
__declspec(__nothrow) long double atan2l(long double , long double );
__declspec(__nothrow) long double ceill(long double );
__declspec(__nothrow) long double cosl(long double );
__declspec(__nothrow) long double coshl(long double );
__declspec(__nothrow) long double expl(long double );
__declspec(__nothrow) long double fabsl(long double );
__declspec(__nothrow) long double floorl(long double );
__declspec(__nothrow) long double fmodl(long double , long double );
__declspec(__nothrow) long double frexpl(long double , int* ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double ldexpl(long double , int );
__declspec(__nothrow) long double logl(long double );
__declspec(__nothrow) long double log10l(long double );
__declspec(__nothrow) long double modfl(long double  , long double *  ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double powl(long double , long double );
__declspec(__nothrow) long double sinl(long double );
__declspec(__nothrow) long double sinhl(long double );
__declspec(__nothrow) long double sqrtl(long double );
__declspec(__nothrow) long double tanl(long double );
__declspec(__nothrow) long double tanhl(long double );





 
extern __declspec(__nothrow) float acoshf(float  );
__declspec(__nothrow) long double acoshl(long double );
extern __declspec(__nothrow) float asinhf(float  );
__declspec(__nothrow) long double asinhl(long double );
extern __declspec(__nothrow) float atanhf(float  );
__declspec(__nothrow) long double atanhl(long double );
__declspec(__nothrow) long double copysignl(long double , long double );
extern __declspec(__nothrow) float cbrtf(float  );
__declspec(__nothrow) long double cbrtl(long double );
extern __declspec(__nothrow) float erff(float  );
__declspec(__nothrow) long double erfl(long double );
extern __declspec(__nothrow) float erfcf(float  );
__declspec(__nothrow) long double erfcl(long double );
extern __declspec(__nothrow) float expm1f(float  );
__declspec(__nothrow) long double expm1l(long double );
extern __declspec(__nothrow) float log1pf(float  );
__declspec(__nothrow) long double log1pl(long double );
extern __declspec(__nothrow) float hypotf(float  , float  );
__declspec(__nothrow) long double hypotl(long double , long double );
extern __declspec(__nothrow) float lgammaf(float  );
__declspec(__nothrow) long double lgammal(long double );
extern __declspec(__nothrow) float remainderf(float  , float  );
__declspec(__nothrow) long double remainderl(long double , long double );
extern __declspec(__nothrow) float rintf(float  );
__declspec(__nothrow) long double rintl(long double );



#line 825 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\math.h"






  extern "C++" {
    inline float abs(float __x)   { return fabsf(__x); }
    inline float acos(float __x)  { return acosf(__x); }
    inline float asin(float __x)  { return asinf(__x); }
    inline float atan(float __x)  { return atanf(__x); }
    inline float atan2(float __y, float __x)    { return atan2f(__y,__x); }
    inline float ceil(float __x)  { return ceilf(__x); }
    inline float cos(float __x)   { return cosf(__x); }
    inline float cosh(float __x)  { return coshf(__x); }
    inline float exp(float __x)   { return expf(__x); }
    inline float fabs(float __x)  { return fabsf(__x); }
    inline float floor(float __x) { return floorf(__x); }
    inline float fmod(float __x, float __y)     { return fmodf(__x, __y); }
    float frexp(float __x, int* __exp) __attribute__((__nonnull__(2)));
    inline float frexp(float __x, int* __exp)   { return frexpf(__x, __exp); }
    inline float ldexp(float __x, int __exp)    { return ldexpf(__x, __exp);}
    inline float log(float __x)   { return logf(__x); }
    inline float log10(float __x) { return log10f(__x); }
    float modf(float __x, float* __iptr) __attribute__((__nonnull__(2)));
    inline float modf(float __x, float* __iptr) { return modff(__x, __iptr); }
    inline float pow(float __x, float __y)      { return powf(__x,__y); }
    inline float pow(float __x, int __y)     { return powf(__x, (float)__y); }
    inline float sin(float __x)   { return sinf(__x); }
    inline float sinh(float __x)  { return sinhf(__x); }
    inline float sqrt(float __x)  { return sqrtf(__x); }
    inline float _sqrt(float __x) { return _sqrtf(__x); }
    inline float tan(float __x)   { return tanf(__x); }
    inline float tanh(float __x)  { return tanhf(__x); }

    inline double abs(double __x) { return fabs(__x); }
    inline double pow(double __x, int __y)
                { return pow(__x, (double) __y); }

    inline long double abs(long double __x)
                { return (long double)fabsl(__x); }
    inline long double acos(long double __x)
                { return (long double)acosl(__x); }
    inline long double asin(long double __x)
                { return (long double)asinl(__x); }
    inline long double atan(long double __x)
                { return (long double)atanl(__x); }
    inline long double atan2(long double __y, long double __x)
                { return (long double)atan2l(__y, __x); }
    inline long double ceil(long double __x)
                { return (long double)ceill( __x); }
    inline long double cos(long double __x)
                { return (long double)cosl(__x); }
    inline long double cosh(long double __x)
                { return (long double)coshl(__x); }
    inline long double exp(long double __x)
                { return (long double)expl(__x); }
    inline long double fabs(long double __x)
                { return (long double)fabsl(__x); }
    inline long double floor(long double __x)
                { return (long double)floorl(__x); }
    inline long double fmod(long double __x, long double __y)
                { return (long double)fmodl(__x, __y); }
    long double frexp(long double __x, int* __p) __attribute__((__nonnull__(2)));
    inline long double frexp(long double __x, int* __p)
                { return (long double)frexpl(__x, __p); }
    inline long double ldexp(long double __x, int __exp)
                { return (long double)ldexpl(__x, __exp); }
    inline long double log(long double __x)
                { return (long double)logl(__x); }
    inline long double log10(long double __x)
                { return (long double)log10l(__x); }
    long double modf(long double __x, long double* __p) __attribute__((__nonnull__(2)));
    inline long double modf(long double __x, long double* __p)
                { return (long double)modfl(__x, __p); }
    inline long double pow(long double __x, long double __y)
                { return (long double)powl(__x, __y); }
    inline long double pow(long double __x, int __y)
                { return (long double)powl(__x, __y); }
    inline long double sin(long double __x)
                { return (long double)sinl(__x); }
    inline long double sinh(long double __x)
                { return (long double)sinhl(__x); }
    inline long double sqrt(long double __x)
                { return (long double)sqrtl(__x); }
    inline long double _sqrt(long double __x)
                { return (long double)_sqrt((double) __x); }
    inline long double tan(long double __x)
                { return (long double)tanl(__x); }
    inline long double tanh(long double __x)
                { return (long double)tanhl(__x); }


    inline float acosh(float __x) { return acoshf(__x); }
    inline float asinh(float __x) { return asinhf(__x); }
    inline float atanh(float __x) { return atanhf(__x); }
    inline float cbrt(float __x) { return cbrtf(__x); }
    inline float erf(float __x) { return erff(__x); }
    inline float erfc(float __x) { return erfcf(__x); }
    inline float expm1(float __x) { return expm1f(__x); }
    inline float log1p(float __x) { return log1pf(__x); }
    inline float hypot(float __x, float __y) { return hypotf(__x, __y); }
    inline float lgamma(float __x) { return lgammaf(__x); }
    inline float remainder(float __x, float __y) { return remainderf(__x, __y); }
    inline float rint(float __x) { return rintf(__x); }


#line 977 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\math.h"

  }



        }   
      }   








    using ::std::__use_accurate_range_reduction;
    using ::std::abs;
    using ::std::acos;
    using ::std::asin;
    using ::std::atan2;
    using ::std::atan;
    using ::std::ceil;
    using ::std::cos;
    using ::std::cosh;
    using ::std::exp;
    using ::std::fabs;
    using ::std::floor;
    using ::std::fmod;
    using ::std::frexp;
    using ::std::ldexp;
    using ::std::log10;
    using ::std::log;
    using ::std::modf;
    using ::std::pow;
    using ::std::sin;
    using ::std::sinh;
    using ::std::sqrt;
    using ::std::_sqrt;
    using ::std::_sqrtf;
    using ::std::tan;
    using ::std::tanh;
    using ::std::_fabsf;
     
    using ::std::acosf;
    using ::std::acosl;
    using ::std::asinf;
    using ::std::asinl;
    using ::std::atan2f;
    using ::std::atan2l;
    using ::std::atanf;
    using ::std::atanl;
    using ::std::ceilf;
    using ::std::ceill;
    using ::std::cosf;
    using ::std::coshf;
    using ::std::coshl;
    using ::std::cosl;
    using ::std::expf;
    using ::std::expl;
    using ::std::fabsf;
    using ::std::fabsl;
    using ::std::floorf;
    using ::std::floorl;
    using ::std::fmodf;
    using ::std::fmodl;
    using ::std::frexpf;
    using ::std::frexpl;
    using ::std::ldexpf;
    using ::std::ldexpl;
    using ::std::log10f;
    using ::std::log10l;
    using ::std::logf;
    using ::std::logl;
    using ::std::modff;
    using ::std::modfl;
    using ::std::powf;
    using ::std::powl;
    using ::std::sinf;
    using ::std::sinhf;
    using ::std::sinhl;
    using ::std::sinl;
    using ::std::sqrtf;
    using ::std::sqrtl;
    using ::std::tanf;
    using ::std::tanhf;
    using ::std::tanhl;
    using ::std::tanl;

       
      using ::std::acosh;
      using ::std::asinh;
      using ::std::atanh;
      using ::std::cbrt;
      using ::std::copysign;
      using ::std::copysignf;
      using ::std::erf;
      using ::std::erfc;
      using ::std::expm1;
      using ::std::hypot;
      using ::std::ilogb;
      using ::std::ilogbf;
      using ::std::ilogbl;
      using ::std::lgamma;
      using ::std::log1p;
      using ::std::logb;
      using ::std::logbf;
      using ::std::logbl;
      using ::std::nextafter;
      using ::std::nextafterf;
      using ::std::nextafterl;
      using ::std::nexttoward;
      using ::std::nexttowardf;
      using ::std::nexttowardl;
      using ::std::remainder;
      using ::std::rint;
      using ::std::scalbln;
      using ::std::scalblnf;
      using ::std::scalblnl;
      using ::std::scalbn;
      using ::std::scalbnf;
      using ::std::scalbnl;
      using ::std::math_errhandling;
      using ::std::acoshf;
      using ::std::acoshl;
      using ::std::asinhf;
      using ::std::asinhl;
      using ::std::atanhf;
      using ::std::atanhl;
      using ::std::copysignl;
      using ::std::cbrtf;
      using ::std::cbrtl;
      using ::std::erff;
      using ::std::erfl;
      using ::std::erfcf;
      using ::std::erfcl;
      using ::std::expm1f;
      using ::std::expm1l;
      using ::std::log1pf;
      using ::std::log1pl;
      using ::std::hypotf;
      using ::std::hypotl;
      using ::std::lgammaf;
      using ::std::lgammal;
      using ::std::remainderf;
      using ::std::remainderl;
      using ::std::rintf;
      using ::std::rintl;


       
      using ::std::float_t;
      using ::std::double_t;
#line 1182 "C:\\Keil\\ARM\\ARMCC\\bin\\..\\include\\math.h"



 

#line 16 "..\\..\\..\\Middleware\\Src\\EncoderServo.h"








 
class EncoderServo : public Value<int>
{
  private:
    
    int    offset;
    ORB  &orb;
    Motor &motor;

  public:
    
    



 
    EncoderServo( Motor &motor )
    : orb  ( *orbPtr ),
      motor(  motor )
    {
      offset = motor.getPos();
      halt();
    }

    
    
 
    void reset( void )
    {
      offset = motor.getPos();
    }

    
    





 
    virtual void set( short angle, short speed = 1000 )
    {
      motor.setPosition( speed, (1000.0/360.0)*angle + offset );
    }

    
    




 
    virtual void moveTo( short angle, short speed = 1000 )
    {
      orb.wait( 500 );

      int target = (1000.0/360.0)*angle + offset;

      motor.setPosition( speed, target );

      while( fabs((float)(motor.getPos() - target)) > 2);

      orb.wait( 500 );
    }

    
    
 
    virtual void halt( void )
    {
      motor.setPower( 0 );
    }

    
    
 
    virtual void brake( void )
    {
      motor.brake();
    }

    
    

 
    virtual int get( void )
    {
      return( 0.36*(motor.getPos() - offset) );
    }
};
#line 31 "Lib\\main.cpp"

#line 1 "..\\..\\..\\Middleware\\Src\\ModelServo.h"






 






#line 15 "..\\..\\..\\Middleware\\Src\\ModelServo.h"










 
class ModelServo
{
  public:
    
    
 
    typedef enum
    {
      S1 = 0,
      S2 = 1
    } ServoPort_type;

  private:
    
    BYTE   port;
    float  gain;
    ORB  &orb;

  public:
    
    





 
    ModelServo( ServoPort_type port,
                short          maxAngle = 0
               )
    : orb( *orbPtr )
    {
      this-> port = port;
      gain = (maxAngle>0)?100.0/maxAngle:1.0;
    }

    
    





 
    virtual void set( short angle, short speed = 1000 )
    {
      
      orb.setModelServo( port, speed/10, gain*angle );
    }

    
    
 
    virtual void halt( void )
    {
      
      
    }
};
#line 33 "Lib\\main.cpp"

#line 1 "..\\..\\..\\Middleware\\Src\\Drive.h"






 






#line 15 "..\\..\\..\\Middleware\\Src\\Drive.h"


#line 18 "..\\..\\..\\Middleware\\Src\\Drive.h"

















 
class Drive
{
  public:
    
    


 
    class Distance
    {
      public:
        
        class cStrecke : public Value<int>
        {
          private:
            int offset;
            Drive &robo;
            cStrecke( Drive &r) : robo(r) { reset(); }
            void reset() { offset = robo.distance();}
          public:
            virtual int get()  { return(robo.distance() - offset ); }
          friend class Distance;
        };

        
        class cWinkel : public Value<int>
        {
          private:
            int offset;
            Drive &robo;
            cWinkel( Drive &r) : robo(r) { reset(); }
            void reset() { offset = robo.winkel();}
          public:
            virtual int get()  { return(robo.winkel() - offset ); }
          friend class Distance;
        };

        
        




 
        Distance( Drive &roboter )
        : winkel ( roboter ),
          strecke( roboter )
        {
          reset();
        }

        
        
 
        void reset( void )
        {
          strecke.reset();
          winkel.reset();
        }

        
        cWinkel  winkel;  
        cStrecke strecke; 
    };

  private:
    
    float vmax;
    float faktorMM2Tics;
    float faktorWinkel2Diff;

    Motor &mLi;
    Motor &mRe;

    int dLi;
    int dRe;

    ORB  &orb;

  public:
    
    





 
    Drive( Motor  &motorLinks,
           Motor  &motorRechts,
           int     vmax,
           int     radDurchmesser,
           int     radAbstand )
    : mLi( motorLinks  ),
      mRe( motorRechts ),
      orb( *orbPtr     )
    {
      this->vmax = (float)vmax;

      
      faktorMM2Tics     = 1000.0f/(3.14159265358979323846f*(float)radDurchmesser);
      faktorWinkel2Diff = (float)radAbstand*3.14159265358979323846f/360.0f;

      dLi = mLi.getPos();
      dRe = mRe.getPos();
    }

  private:
    
    virtual void fahre( int li, int re )
    {
      mLi.setSpeed( 0 );
      mRe.setSpeed( 0 );

      orb.wait( 200 );

      int targetLi = mLi.getPos() + li;
      int targetRe = mRe.getPos() + re;

      
      
      float dges  = (fabs((float)li) + fabs((float)re));

      mLi.setPosition(  vmax * (float)li/dges, targetLi );
      mRe.setPosition(  vmax * (float)re/dges, targetRe );

      orb.wait( 200 );

      while(   fabs( (float)mLi.getPos() - targetLi ) > 1
            || fabs( (float)mRe.getPos() - targetRe ) > 1 )
      {
      }

      orb.wait( 200 );
    }

  public:
    
    



 
    virtual void strecke( float distance )
    {
      distance = faktorMM2Tics*distance; 

      fahre( distance, distance );
    }

    
    




 
    virtual void bogen( float distance, float angle )
    {
      float li = distance + faktorWinkel2Diff*angle;
      float re = distance - faktorWinkel2Diff*angle;

      fahre( faktorMM2Tics*li, faktorMM2Tics*re );
    }

    
    


 
    virtual void speed( float li, float re )
    {
      mLi.setSpeed( faktorMM2Tics*li );
      mRe.setSpeed( faktorMM2Tics*re );
    }

    
    


 
    virtual void power( float li, float re )
    {
      mLi.setPower( li );
      mRe.setPower( re );
    }

    
    
 
    virtual void brake( void )
    {
      mLi.brake();
      mRe.brake();
    }

    

  private:
    
    virtual void distanceReset( void )
    {
      dLi = mLi.getPos();
      dRe = mRe.getPos();
    }

    
    virtual int distance( void )
    {
      int li = mLi.getPos()-dLi;
      int re = mRe.getPos()-dRe;

      return( 0.5*(li + re)/faktorMM2Tics+0.5 );
    }

    
    virtual int winkel( void )
    {
      int li = mLi.getPos()-dLi;
      int re = mRe.getPos()-dRe;

      return( (int)(0.5*(li - re)/(faktorMM2Tics*faktorWinkel2Diff)+0.5) );
    }
};
#line 35 "Lib\\main.cpp"
#line 1 "..\\..\\..\\Middleware\\Src\\Monitor.h"






 






#line 15 "..\\..\\..\\Middleware\\Src\\Monitor.h"




 
class Monitor
{
  public:
    
    
 
    typedef enum
    {
      Keine_Taste = 0, 

      Taste_A1  =  1,
      Taste_A2  =  2,
      Taste_A3  =  3,
      Taste_A4  =  4,
      Taste_A5  =  5,
      Taste_A6  =  6,
      Taste_A7  =  7,
      Taste_A8  =  8,

      Taste_B1  =  9,
      Taste_B2  = 10,
      Taste_B3  = 11,

      Taste_B4  = 12,
      Taste_B5  = 13,
      Taste_B6  = 14,

      Taste_B7  = 15,
      Taste_B8  = 16,
      Taste_B9  = 17,

      Taste_B10 = 18,
      Taste_B11 = 19,
      Taste_B12 = 20,

      Taste_C1  = 21,

    } Taste_enum;

  private:
    
    BYTE  lastEvent;
    ORB  &orb;

  public:
    
    

 
    Monitor( void )
    : orb( *orbPtr )
    {
      clear();
    }

    
    
 
    void clear( void )
    {
      lastEvent = 0;

      print(1,"");
      print(2,"");
      print(3,"");
      print(4,"");
    }

    
    





 
    void print( BYTE line, const char *format, ...)
    {
      if( 1 <= line && line <= 4 )
      {
        va_list argzeiger;
        __va_start(argzeiger, format);

        orb.setMonitorText( line-1, format, argzeiger );

        __va_end(argzeiger);
      }
    }

    
    


 
    BYTE getKeyState( void )
    {
      return( orb.getMonitorKey() );
    }

    
    




 
    BYTE getKeyEvent( void )
    {
      BYTE event = orb.getMonitorKey() ;
       if( event != lastEvent )
       {
         lastEvent = event;
         return( lastEvent );
       }
       return( 0 );
    }
};
#line 36 "Lib\\main.cpp"

#line 1 ".\\Src\\Application.h"

class cApplication : public cApplicationBase {
  private:
  Sensor sensor;
  Monitor monitor;
  

  public:
  
  cApplication(  )
  :
  sensor(Sensor::S1, Sensor::EV3_ULTRASCHALL) {
    monitor.clear();
  }

  
  virtual void run(BYTE para) {
    if (para == 0 ) {
      monitor.print(1, "%d (%.6s,%.5s)", para, "Jun  6 2023","09:38:25");
      while(1) {
        monitor.print(1, "%i", sensor.get());
      } 
    }
    else {
      monitor.print(1, "%d (%.6s,%.5s)", para, "Jun  6 2023","09:38:25");
      while(1) {
        
      }
    }
  }
};
#line 38 "Lib\\main.cpp"


int Main( BYTE para, cORBlocal &orb ) 
{
	orbPtr = &orb;


	Memory::clean();
  cApplication app;

  app.run( para );

  return(0);

}

