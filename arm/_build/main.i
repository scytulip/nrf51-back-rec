#line 1 "..\\main.c"










 













 

#line 1 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"
 
 





 







 




  
 







#line 37 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"







 

     

     
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




     

     





     





     





     

     





     





     





     

     





     





     





     

     


     


     


     

     


     


     


     

     



     



     


     
    
 



#line 208 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"

     







     










     











#line 272 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdint.h"



 



#line 28 "..\\main.c"
#line 1 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\string.h"


  
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
   













 


#line 185 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 201 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 224 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 239 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 262 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

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
    














































 







#line 494 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\string.h"



 

#line 29 "..\\main.c"
#line 1 "..\\..\\..\\..\\..\\Include\\nordic_common.h"









  



 




 



 


 


 
    

 
    


#line 68 "..\\..\\..\\..\\..\\Include\\nordic_common.h"




#line 30 "..\\main.c"
#line 1 "..\\..\\..\\..\\..\\Include\\nrf.h"




























 





 
#line 1 "..\\..\\..\\..\\..\\Include\\nrf51.h"

 








































 





 



 









 

typedef enum {
 
  Reset_IRQn                    = -15,               
  NonMaskableInt_IRQn           = -14,               
  HardFault_IRQn                = -13,               
  SVCall_IRQn                   =  -5,               
  DebugMonitor_IRQn             =  -4,               
  PendSV_IRQn                   =  -2,               
  SysTick_IRQn                  =  -1,               
 
  POWER_CLOCK_IRQn              =   0,               
  RADIO_IRQn                    =   1,               
  UART0_IRQn                    =   2,               
  SPI0_TWI0_IRQn                =   3,               
  SPI1_TWI1_IRQn                =   4,               
  GPIOTE_IRQn                   =   6,               
  ADC_IRQn                      =   7,               
  TIMER0_IRQn                   =   8,               
  TIMER1_IRQn                   =   9,               
  TIMER2_IRQn                   =  10,               
  RTC0_IRQn                     =  11,               
  TEMP_IRQn                     =  12,               
  RNG_IRQn                      =  13,               
  ECB_IRQn                      =  14,               
  CCM_AAR_IRQn                  =  15,               
  WDT_IRQn                      =  16,               
  RTC1_IRQn                     =  17,               
  QDEC_IRQn                     =  18,               
  LPCOMP_IRQn                   =  19,               
  SWI0_IRQn                     =  20,               
  SWI1_IRQn                     =  21,               
  SWI2_IRQn                     =  22,               
  SWI3_IRQn                     =  23,               
  SWI4_IRQn                     =  24,               
  SWI5_IRQn                     =  25                
} IRQn_Type;




 


 
 
 

 




   

#line 1 "D:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\4.1.1\\CMSIS\\Include\\core_cm0.h"
 







 

























 
























 




 


 

 













#line 110 "D:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\4.1.1\\CMSIS\\Include\\core_cm0.h"


 







#line 145 "D:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\4.1.1\\CMSIS\\Include\\core_cm0.h"

#line 147 "D:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\4.1.1\\CMSIS\\Include\\core_cm0.h"
#line 1 "D:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\4.1.1\\CMSIS\\Include\\core_cmInstr.h"
 







 

























 






 



 


 









 







 







 






 








 







 







 









 









 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 

__attribute__((section(".revsh_text"))) static __inline __asm int32_t __REVSH(int32_t value)
{
  revsh r0, r0
  bx lr
}










 










 



#line 292 "D:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\4.1.1\\CMSIS\\Include\\core_cmInstr.h"


#line 684 "D:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\4.1.1\\CMSIS\\Include\\core_cmInstr.h"

   

#line 148 "D:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\4.1.1\\CMSIS\\Include\\core_cm0.h"
#line 1 "D:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\4.1.1\\CMSIS\\Include\\core_cmFunc.h"
 







 

























 






 



 


 





 
 






 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}







 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}







 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}







 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}







 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}







 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}







 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}







 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}







 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}







 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}







 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}


#line 271 "D:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\4.1.1\\CMSIS\\Include\\core_cmFunc.h"


#line 307 "D:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\4.1.1\\CMSIS\\Include\\core_cmFunc.h"


#line 634 "D:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\4.1.1\\CMSIS\\Include\\core_cmFunc.h"

 

#line 149 "D:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\4.1.1\\CMSIS\\Include\\core_cm0.h"








 
#line 174 "D:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\4.1.1\\CMSIS\\Include\\core_cm0.h"

 






 
#line 190 "D:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\4.1.1\\CMSIS\\Include\\core_cm0.h"

 










 


 





 


 
typedef union
{
  struct
  {

    uint32_t _reserved0:27;               





    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       

    uint32_t _reserved0:15;               





    uint32_t T:1;                         
    uint32_t IT:2;                        
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t FPCA:1;                      
    uint32_t _reserved0:29;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 






 


 
typedef struct
{
  volatile uint32_t ISER[1];                  
       uint32_t RESERVED0[31];
  volatile uint32_t ICER[1];                  
       uint32_t RSERVED1[31];
  volatile uint32_t ISPR[1];                  
       uint32_t RESERVED2[31];
  volatile uint32_t ICPR[1];                  
       uint32_t RESERVED3[31];
       uint32_t RESERVED4[64];
  volatile uint32_t IP[8];                    
}  NVIC_Type;

 






 


 
typedef struct
{
  volatile const  uint32_t CPUID;                    
  volatile uint32_t ICSR;                     
       uint32_t RESERVED0;
  volatile uint32_t AIRCR;                    
  volatile uint32_t SCR;                      
  volatile uint32_t CCR;                      
       uint32_t RESERVED1;
  volatile uint32_t SHP[2];                   
  volatile uint32_t SHCSR;                    
} SCB_Type;

 















 



























 















 









 






 



 






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t LOAD;                     
  volatile uint32_t VAL;                      
  volatile const  uint32_t CALIB;                    
} SysTick_Type;

 












 



 



 









 








 
 






 

 










 









 

 



 




 

 
 










 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}







 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}











 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));
}







 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}







 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[0] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}










 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] = (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] & ~(0xFF << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ))) |
        (((priority << (8 - 2)) & 0xFF) << ( (((uint32_t)(IRQn) ) & 0x03) * 8 )); }
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( ((uint32_t)(IRQn) >> 2) )] = (((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( ((uint32_t)(IRQn) >> 2) )] & ~(0xFF << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ))) |
        (((priority << (8 - 2)) & 0xFF) << ( (((uint32_t)(IRQn) ) & 0x03) * 8 )); }
}












 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)(((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] >> ( (((uint32_t)(IRQn) ) & 0x03) * 8 ) ) & 0xFF) >> (8 - 2)));  }  
  else {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[ ( ((uint32_t)(IRQn) >> 2) )] >> ( (((uint32_t)(IRQn) ) & 0x03) * 8 ) ) & 0xFF) >> (8 - 2)));  }  
}





 
static __inline void NVIC_SystemReset(void)
{
  __dsb(0xF);                                                     
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = ((0x5FA << 16)      |
                 (1UL << 2));
  __dsb(0xF);                                                      
  while(1);                                                     
}

 



 




 

















 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1) > (0xFFFFFFUL << 0))  return (1);       

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = ticks - 1;                                   
  NVIC_SetPriority (SysTick_IRQn, (1<<2) - 1);   
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0;                                           
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2) |
                   (1UL << 1)   |
                   (1UL << 0);                     
  return (0);                                                   
}



 










#line 120 "..\\..\\..\\..\\..\\Include\\nrf51.h"
#line 1 "..\\..\\..\\..\\..\\Include\\system_nrf51.h"




























 







#line 38 "..\\..\\..\\..\\..\\Include\\system_nrf51.h"


extern uint32_t SystemCoreClock;     









 
extern void SystemInit (void);









 
extern void SystemCoreClockUpdate (void);





#line 121 "..\\..\\..\\..\\..\\Include\\nrf51.h"


 
 
 




 


 

  #pragma push
  #pragma anon_unions
#line 148 "..\\..\\..\\..\\..\\Include\\nrf51.h"


typedef struct {
  volatile uint32_t  CPU0;                               
  volatile uint32_t  SPIS1;                              
  volatile uint32_t  RADIO;                              
  volatile uint32_t  ECB;                                
  volatile uint32_t  CCM;                                
  volatile uint32_t  AAR;                                
} AMLI_RAMPRI_Type;

typedef struct {
  volatile  uint32_t  EN;                                 
  volatile  uint32_t  DIS;                                
} PPI_TASKS_CHG_Type;

typedef struct {
  volatile uint32_t  EEP;                                
  volatile uint32_t  TEP;                                
} PPI_CH_Type;


 
 
 




 

typedef struct {                                     
  volatile const  uint32_t  RESERVED0[30];
  volatile  uint32_t  TASKS_CONSTLAT;                     
  volatile  uint32_t  TASKS_LOWPWR;                       
  volatile const  uint32_t  RESERVED1[34];
  volatile uint32_t  EVENTS_POFWARN;                     
  volatile const  uint32_t  RESERVED2[126];
  volatile uint32_t  INTENSET;                           
  volatile uint32_t  INTENCLR;                           
  volatile const  uint32_t  RESERVED3[61];
  volatile uint32_t  RESETREAS;                          
  volatile const  uint32_t  RESERVED4[9];
  volatile const  uint32_t  RAMSTATUS;                          
  volatile const  uint32_t  RESERVED5[53];
  volatile  uint32_t  SYSTEMOFF;                          
  volatile const  uint32_t  RESERVED6[3];
  volatile uint32_t  POFCON;                             
  volatile const  uint32_t  RESERVED7[2];
  volatile uint32_t  GPREGRET;                          
 
  volatile const  uint32_t  RESERVED8;
  volatile uint32_t  RAMON;                              
  volatile const  uint32_t  RESERVED9[7];
  volatile uint32_t  RESET;                             
 
  volatile const  uint32_t  RESERVED10[3];
  volatile uint32_t  RAMONB;                             
  volatile const  uint32_t  RESERVED11[8];
  volatile uint32_t  DCDCEN;                             
  volatile const  uint32_t  RESERVED12[291];
  volatile uint32_t  DCDCFORCE;                          
} NRF_POWER_Type;


 
 
 




 

typedef struct {                                     
  volatile  uint32_t  TASKS_HFCLKSTART;                   
  volatile  uint32_t  TASKS_HFCLKSTOP;                    
  volatile  uint32_t  TASKS_LFCLKSTART;                   
  volatile  uint32_t  TASKS_LFCLKSTOP;                    
  volatile  uint32_t  TASKS_CAL;                          
  volatile  uint32_t  TASKS_CTSTART;                      
  volatile  uint32_t  TASKS_CTSTOP;                       
  volatile const  uint32_t  RESERVED0[57];
  volatile uint32_t  EVENTS_HFCLKSTARTED;                
  volatile uint32_t  EVENTS_LFCLKSTARTED;                
  volatile const  uint32_t  RESERVED1;
  volatile uint32_t  EVENTS_DONE;                        
  volatile uint32_t  EVENTS_CTTO;                        
  volatile const  uint32_t  RESERVED2[124];
  volatile uint32_t  INTENSET;                           
  volatile uint32_t  INTENCLR;                           
  volatile const  uint32_t  RESERVED3[63];
  volatile const  uint32_t  HFCLKRUN;                           
  volatile const  uint32_t  HFCLKSTAT;                          
  volatile const  uint32_t  RESERVED4;
  volatile const  uint32_t  LFCLKRUN;                           
  volatile const  uint32_t  LFCLKSTAT;                          
  volatile const  uint32_t  LFCLKSRCCOPY;                      
 
  volatile const  uint32_t  RESERVED5[62];
  volatile uint32_t  LFCLKSRC;                           
  volatile const  uint32_t  RESERVED6[7];
  volatile uint32_t  CTIV;                               
  volatile const  uint32_t  RESERVED7[5];
  volatile uint32_t  XTALFREQ;                           
} NRF_CLOCK_Type;


 
 
 




 

typedef struct {                                     
  volatile const  uint32_t  RESERVED0[330];
  volatile uint32_t  PERR0;                              
  volatile uint32_t  RLENR0;                             
  volatile const  uint32_t  RESERVED1[52];
  volatile uint32_t  PROTENSET0;                         
  volatile uint32_t  PROTENSET1;                         
  volatile uint32_t  DISABLEINDEBUG;                     
  volatile uint32_t  PROTBLOCKSIZE;                      
  volatile const  uint32_t  RESERVED2[255];
  volatile uint32_t  ENRBDREG;                           
} NRF_MPU_Type;


 
 
 




 

typedef struct {                                     
  volatile const  uint32_t  RESERVED0[448];
  volatile uint32_t  REPLACEADDR[8];                     
  volatile const  uint32_t  RESERVED1[24];
  volatile uint32_t  PATCHADDR[8];                       
  volatile const  uint32_t  RESERVED2[24];
  volatile uint32_t  PATCHEN;                            
  volatile uint32_t  PATCHENSET;                         
  volatile uint32_t  PATCHENCLR;                         
} NRF_PU_Type;


 
 
 




 

typedef struct {                                     
  volatile const  uint32_t  RESERVED0[896];
  AMLI_RAMPRI_Type RAMPRI;                           
} NRF_AMLI_Type;


 
 
 




 

typedef struct {                                     
  volatile  uint32_t  TASKS_TXEN;                         
  volatile  uint32_t  TASKS_RXEN;                         
  volatile  uint32_t  TASKS_START;                        
  volatile  uint32_t  TASKS_STOP;                         
  volatile  uint32_t  TASKS_DISABLE;                      
  volatile  uint32_t  TASKS_RSSISTART;                    
  volatile  uint32_t  TASKS_RSSISTOP;                     
  volatile  uint32_t  TASKS_BCSTART;                      
  volatile  uint32_t  TASKS_BCSTOP;                       
  volatile const  uint32_t  RESERVED0[55];
  volatile uint32_t  EVENTS_READY;                       
  volatile uint32_t  EVENTS_ADDRESS;                     
  volatile uint32_t  EVENTS_PAYLOAD;                     
  volatile uint32_t  EVENTS_END;                         
  volatile uint32_t  EVENTS_DISABLED;                    
  volatile uint32_t  EVENTS_DEVMATCH;                    
  volatile uint32_t  EVENTS_DEVMISS;                     
  volatile uint32_t  EVENTS_RSSIEND;                    
 
  volatile const  uint32_t  RESERVED1[2];
  volatile uint32_t  EVENTS_BCMATCH;                     
  volatile const  uint32_t  RESERVED2[53];
  volatile uint32_t  SHORTS;                             
  volatile const  uint32_t  RESERVED3[64];
  volatile uint32_t  INTENSET;                           
  volatile uint32_t  INTENCLR;                           
  volatile const  uint32_t  RESERVED4[61];
  volatile const  uint32_t  CRCSTATUS;                          
  volatile const  uint32_t  CD;                                 
  volatile const  uint32_t  RXMATCH;                            
  volatile const  uint32_t  RXCRC;                              
  volatile const  uint32_t  DAI;                                
  volatile const  uint32_t  RESERVED5[60];
  volatile uint32_t  PACKETPTR;                          
  volatile uint32_t  FREQUENCY;                          
  volatile uint32_t  TXPOWER;                            
  volatile uint32_t  MODE;                               
  volatile uint32_t  PCNF0;                              
  volatile uint32_t  PCNF1;                              
  volatile uint32_t  BASE0;                              
  volatile uint32_t  BASE1;                              
  volatile uint32_t  PREFIX0;                            
  volatile uint32_t  PREFIX1;                            
  volatile uint32_t  TXADDRESS;                          
  volatile uint32_t  RXADDRESSES;                        
  volatile uint32_t  CRCCNF;                             
  volatile uint32_t  CRCPOLY;                            
  volatile uint32_t  CRCINIT;                            
  volatile uint32_t  TEST;                               
  volatile uint32_t  TIFS;                               
  volatile const  uint32_t  RSSISAMPLE;                         
  volatile const  uint32_t  RESERVED6;
  volatile const  uint32_t  STATE;                              
  volatile uint32_t  DATAWHITEIV;                        
  volatile const  uint32_t  RESERVED7[2];
  volatile uint32_t  BCC;                                
  volatile const  uint32_t  RESERVED8[39];
  volatile uint32_t  DAB[8];                             
  volatile uint32_t  DAP[8];                             
  volatile uint32_t  DACNF;                              
  volatile const  uint32_t  RESERVED9[56];
  volatile uint32_t  OVERRIDE0;                          
  volatile uint32_t  OVERRIDE1;                          
  volatile uint32_t  OVERRIDE2;                          
  volatile uint32_t  OVERRIDE3;                          
  volatile uint32_t  OVERRIDE4;                          
  volatile const  uint32_t  RESERVED10[561];
  volatile uint32_t  POWER;                              
} NRF_RADIO_Type;


 
 
 




 

typedef struct {                                     
  volatile  uint32_t  TASKS_STARTRX;                      
  volatile  uint32_t  TASKS_STOPRX;                       
  volatile  uint32_t  TASKS_STARTTX;                      
  volatile  uint32_t  TASKS_STOPTX;                       
  volatile const  uint32_t  RESERVED0[3];
  volatile  uint32_t  TASKS_SUSPEND;                      
  volatile const  uint32_t  RESERVED1[56];
  volatile uint32_t  EVENTS_CTS;                         
  volatile uint32_t  EVENTS_NCTS;                        
  volatile uint32_t  EVENTS_RXDRDY;                      
  volatile const  uint32_t  RESERVED2[4];
  volatile uint32_t  EVENTS_TXDRDY;                      
  volatile const  uint32_t  RESERVED3;
  volatile uint32_t  EVENTS_ERROR;                       
  volatile const  uint32_t  RESERVED4[7];
  volatile uint32_t  EVENTS_RXTO;                        
  volatile const  uint32_t  RESERVED5[46];
  volatile uint32_t  SHORTS;                             
  volatile const  uint32_t  RESERVED6[64];
  volatile uint32_t  INTENSET;                           
  volatile uint32_t  INTENCLR;                           
  volatile const  uint32_t  RESERVED7[93];
  volatile uint32_t  ERRORSRC;                           
  volatile const  uint32_t  RESERVED8[31];
  volatile uint32_t  ENABLE;                             
  volatile const  uint32_t  RESERVED9;
  volatile uint32_t  PSELRTS;                            
  volatile uint32_t  PSELTXD;                            
  volatile uint32_t  PSELCTS;                            
  volatile uint32_t  PSELRXD;                            
  volatile const  uint32_t  RXD;                               

 
  volatile  uint32_t  TXD;                                
  volatile const  uint32_t  RESERVED10;
  volatile uint32_t  BAUDRATE;                           
  volatile const  uint32_t  RESERVED11[17];
  volatile uint32_t  CONFIG;                             
  volatile const  uint32_t  RESERVED12[675];
  volatile uint32_t  POWER;                              
} NRF_UART_Type;


 
 
 




 

typedef struct {                                     
  volatile const  uint32_t  RESERVED0[66];
  volatile uint32_t  EVENTS_READY;                       
  volatile const  uint32_t  RESERVED1[126];
  volatile uint32_t  INTENSET;                           
  volatile uint32_t  INTENCLR;                           
  volatile const  uint32_t  RESERVED2[125];
  volatile uint32_t  ENABLE;                             
  volatile const  uint32_t  RESERVED3;
  volatile uint32_t  PSELSCK;                            
  volatile uint32_t  PSELMOSI;                           
  volatile uint32_t  PSELMISO;                           
  volatile const  uint32_t  RESERVED4;
  volatile const  uint32_t  RXD;                                
  volatile uint32_t  TXD;                                
  volatile const  uint32_t  RESERVED5;
  volatile uint32_t  FREQUENCY;                          
  volatile const  uint32_t  RESERVED6[11];
  volatile uint32_t  CONFIG;                             
  volatile const  uint32_t  RESERVED7[681];
  volatile uint32_t  POWER;                              
} NRF_SPI_Type;


 
 
 




 

typedef struct {                                     
  volatile  uint32_t  TASKS_STARTRX;                      
  volatile const  uint32_t  RESERVED0;
  volatile  uint32_t  TASKS_STARTTX;                      
  volatile const  uint32_t  RESERVED1[2];
  volatile  uint32_t  TASKS_STOP;                         
  volatile const  uint32_t  RESERVED2;
  volatile  uint32_t  TASKS_SUSPEND;                      
  volatile  uint32_t  TASKS_RESUME;                       
  volatile const  uint32_t  RESERVED3[56];
  volatile uint32_t  EVENTS_STOPPED;                     
  volatile uint32_t  EVENTS_RXDREADY;                    
  volatile const  uint32_t  RESERVED4[4];
  volatile uint32_t  EVENTS_TXDSENT;                     
  volatile const  uint32_t  RESERVED5;
  volatile uint32_t  EVENTS_ERROR;                       
  volatile const  uint32_t  RESERVED6[4];
  volatile uint32_t  EVENTS_BB;                          
  volatile const  uint32_t  RESERVED7[3];
  volatile uint32_t  EVENTS_SUSPENDED;                   
  volatile const  uint32_t  RESERVED8[45];
  volatile uint32_t  SHORTS;                             
  volatile const  uint32_t  RESERVED9[64];
  volatile uint32_t  INTENSET;                           
  volatile uint32_t  INTENCLR;                           
  volatile const  uint32_t  RESERVED10[110];
  volatile uint32_t  ERRORSRC;                           
  volatile const  uint32_t  RESERVED11[14];
  volatile uint32_t  ENABLE;                             
  volatile const  uint32_t  RESERVED12;
  volatile uint32_t  PSELSCL;                            
  volatile uint32_t  PSELSDA;                            
  volatile const  uint32_t  RESERVED13[2];
  volatile const  uint32_t  RXD;                                
  volatile uint32_t  TXD;                                
  volatile const  uint32_t  RESERVED14;
  volatile uint32_t  FREQUENCY;                          
  volatile const  uint32_t  RESERVED15[24];
  volatile uint32_t  ADDRESS;                            
  volatile const  uint32_t  RESERVED16[668];
  volatile uint32_t  POWER;                              
} NRF_TWI_Type;


 
 
 




 

typedef struct {                                     
  volatile const  uint32_t  RESERVED0[9];
  volatile  uint32_t  TASKS_ACQUIRE;                      
  volatile  uint32_t  TASKS_RELEASE;                      
  volatile const  uint32_t  RESERVED1[54];
  volatile uint32_t  EVENTS_END;                         
  volatile const  uint32_t  RESERVED2[8];
  volatile uint32_t  EVENTS_ACQUIRED;                    
  volatile const  uint32_t  RESERVED3[53];
  volatile uint32_t  SHORTS;                             
  volatile const  uint32_t  RESERVED4[64];
  volatile uint32_t  INTENSET;                           
  volatile uint32_t  INTENCLR;                           
  volatile const  uint32_t  RESERVED5[61];
  volatile const  uint32_t  SEMSTAT;                            
  volatile const  uint32_t  RESERVED6[15];
  volatile uint32_t  STATUS;                             
  volatile const  uint32_t  RESERVED7[47];
  volatile uint32_t  ENABLE;                             
  volatile const  uint32_t  RESERVED8;
  volatile uint32_t  PSELSCK;                            
  volatile uint32_t  PSELMISO;                           
  volatile uint32_t  PSELMOSI;                           
  volatile uint32_t  PSELCSN;                            
  volatile const  uint32_t  RESERVED9[7];
  volatile uint32_t  RXDPTR;                             
  volatile uint32_t  MAXRX;                              
  volatile const  uint32_t  AMOUNTRX;                           
  volatile const  uint32_t  RESERVED10;
  volatile uint32_t  TXDPTR;                             
  volatile uint32_t  MAXTX;                              
  volatile const  uint32_t  AMOUNTTX;                           
  volatile const  uint32_t  RESERVED11;
  volatile uint32_t  CONFIG;                             
  volatile const  uint32_t  RESERVED12;
  volatile uint32_t  DEF;                                
  volatile const  uint32_t  RESERVED13[24];
  volatile uint32_t  ORC;                                
  volatile const  uint32_t  RESERVED14[654];
  volatile uint32_t  POWER;                              
} NRF_SPIS_Type;


 
 
 




 

typedef struct {                                     
  volatile  uint32_t  TASKS_OUT[4];                       
  volatile const  uint32_t  RESERVED0[60];
  volatile uint32_t  EVENTS_IN[4];                       
  volatile const  uint32_t  RESERVED1[27];
  volatile uint32_t  EVENTS_PORT;                        
  volatile const  uint32_t  RESERVED2[97];
  volatile uint32_t  INTENSET;                           
  volatile uint32_t  INTENCLR;                           
  volatile const  uint32_t  RESERVED3[129];
  volatile uint32_t  CONFIG[4];                          
  volatile const  uint32_t  RESERVED4[695];
  volatile uint32_t  POWER;                              
} NRF_GPIOTE_Type;


 
 
 




 

typedef struct {                                     
  volatile  uint32_t  TASKS_START;                        
  volatile  uint32_t  TASKS_STOP;                         
  volatile const  uint32_t  RESERVED0[62];
  volatile uint32_t  EVENTS_END;                         
  volatile const  uint32_t  RESERVED1[128];
  volatile uint32_t  INTENSET;                           
  volatile uint32_t  INTENCLR;                           
  volatile const  uint32_t  RESERVED2[61];
  volatile const  uint32_t  BUSY;                               
  volatile const  uint32_t  RESERVED3[63];
  volatile uint32_t  ENABLE;                             
  volatile uint32_t  CONFIG;                             
  volatile const  uint32_t  RESULT;                             
  volatile const  uint32_t  RESERVED4[700];
  volatile uint32_t  POWER;                              
} NRF_ADC_Type;


 
 
 




 

typedef struct {                                     
  volatile  uint32_t  TASKS_START;                        
  volatile  uint32_t  TASKS_STOP;                         
  volatile  uint32_t  TASKS_COUNT;                        
  volatile  uint32_t  TASKS_CLEAR;                        
  volatile  uint32_t  TASKS_SHUTDOWN;                     
  volatile const  uint32_t  RESERVED0[11];
  volatile  uint32_t  TASKS_CAPTURE[4];                   
  volatile const  uint32_t  RESERVED1[60];
  volatile uint32_t  EVENTS_COMPARE[4];                  
  volatile const  uint32_t  RESERVED2[44];
  volatile uint32_t  SHORTS;                             
  volatile const  uint32_t  RESERVED3[64];
  volatile uint32_t  INTENSET;                           
  volatile uint32_t  INTENCLR;                           
  volatile const  uint32_t  RESERVED4[126];
  volatile uint32_t  MODE;                               
  volatile uint32_t  BITMODE;                            
  volatile const  uint32_t  RESERVED5;
  volatile uint32_t  PRESCALER;                         
 
  volatile const  uint32_t  RESERVED6[11];
  volatile uint32_t  CC[4];                              
  volatile const  uint32_t  RESERVED7[683];
  volatile uint32_t  POWER;                              
} NRF_TIMER_Type;


 
 
 




 

typedef struct {                                     
  volatile  uint32_t  TASKS_START;                        
  volatile  uint32_t  TASKS_STOP;                         
  volatile  uint32_t  TASKS_CLEAR;                        
  volatile  uint32_t  TASKS_TRIGOVRFLW;                   
  volatile const  uint32_t  RESERVED0[60];
  volatile uint32_t  EVENTS_TICK;                        
  volatile uint32_t  EVENTS_OVRFLW;                      
  volatile const  uint32_t  RESERVED1[14];
  volatile uint32_t  EVENTS_COMPARE[4];                  
  volatile const  uint32_t  RESERVED2[109];
  volatile uint32_t  INTENSET;                           
  volatile uint32_t  INTENCLR;                           
  volatile const  uint32_t  RESERVED3[13];
  volatile uint32_t  EVTEN;                              
  volatile uint32_t  EVTENSET;                          
 
  volatile uint32_t  EVTENCLR;                          
 
  volatile const  uint32_t  RESERVED4[110];
  volatile const  uint32_t  COUNTER;                            
  volatile uint32_t  PRESCALER;                         
 
  volatile const  uint32_t  RESERVED5[13];
  volatile uint32_t  CC[4];                              
  volatile const  uint32_t  RESERVED6[683];
  volatile uint32_t  POWER;                              
} NRF_RTC_Type;


 
 
 




 

typedef struct {                                     
  volatile  uint32_t  TASKS_START;                        
  volatile  uint32_t  TASKS_STOP;                         
  volatile const  uint32_t  RESERVED0[62];
  volatile uint32_t  EVENTS_DATARDY;                     
  volatile const  uint32_t  RESERVED1[128];
  volatile uint32_t  INTENSET;                           
  volatile uint32_t  INTENCLR;                           
  volatile const  uint32_t  RESERVED2[127];
  volatile const  int32_t   TEMP;                               
  volatile const  uint32_t  RESERVED3[700];
  volatile uint32_t  POWER;                              
} NRF_TEMP_Type;


 
 
 




 

typedef struct {                                     
  volatile  uint32_t  TASKS_START;                        
  volatile  uint32_t  TASKS_STOP;                         
  volatile const  uint32_t  RESERVED0[62];
  volatile uint32_t  EVENTS_VALRDY;                      
  volatile const  uint32_t  RESERVED1[63];
  volatile uint32_t  SHORTS;                             
  volatile const  uint32_t  RESERVED2[64];
  volatile uint32_t  INTENSET;                           
  volatile uint32_t  INTENCLR;                           
  volatile const  uint32_t  RESERVED3[126];
  volatile uint32_t  CONFIG;                             
  volatile const  uint32_t  VALUE;                              
  volatile const  uint32_t  RESERVED4[700];
  volatile uint32_t  POWER;                              
} NRF_RNG_Type;


 
 
 




 

typedef struct {                                     
  volatile  uint32_t  TASKS_STARTECB;                    

 
  volatile  uint32_t  TASKS_STOPECB;                     
 
  volatile const  uint32_t  RESERVED0[62];
  volatile uint32_t  EVENTS_ENDECB;                      
  volatile uint32_t  EVENTS_ERRORECB;                   
 
  volatile const  uint32_t  RESERVED1[127];
  volatile uint32_t  INTENSET;                           
  volatile uint32_t  INTENCLR;                           
  volatile const  uint32_t  RESERVED2[126];
  volatile uint32_t  ECBDATAPTR;                         
  volatile const  uint32_t  RESERVED3[701];
  volatile uint32_t  POWER;                              
} NRF_ECB_Type;


 
 
 




 

typedef struct {                                     
  volatile  uint32_t  TASKS_START;                       
 
  volatile const  uint32_t  RESERVED0;
  volatile  uint32_t  TASKS_STOP;                         
  volatile const  uint32_t  RESERVED1[61];
  volatile uint32_t  EVENTS_END;                         
  volatile uint32_t  EVENTS_RESOLVED;                    
  volatile uint32_t  EVENTS_NOTRESOLVED;                 
  volatile const  uint32_t  RESERVED2[126];
  volatile uint32_t  INTENSET;                           
  volatile uint32_t  INTENCLR;                           
  volatile const  uint32_t  RESERVED3[61];
  volatile const  uint32_t  STATUS;                             
  volatile const  uint32_t  RESERVED4[63];
  volatile uint32_t  ENABLE;                             
  volatile uint32_t  NIRK;                               
  volatile uint32_t  IRKPTR;                             
  volatile const  uint32_t  RESERVED5;
  volatile uint32_t  ADDRPTR;                            
  volatile uint32_t  SCRATCHPTR;                        
 
  volatile const  uint32_t  RESERVED6[697];
  volatile uint32_t  POWER;                              
} NRF_AAR_Type;


 
 
 




 

typedef struct {                                     
  volatile  uint32_t  TASKS_KSGEN;                       
 
  volatile  uint32_t  TASKS_CRYPT;                       
 
  volatile  uint32_t  TASKS_STOP;                         
  volatile const  uint32_t  RESERVED0[61];
  volatile uint32_t  EVENTS_ENDKSGEN;                    
  volatile uint32_t  EVENTS_ENDCRYPT;                    
  volatile uint32_t  EVENTS_ERROR;                       
  volatile const  uint32_t  RESERVED1[61];
  volatile uint32_t  SHORTS;                             
  volatile const  uint32_t  RESERVED2[64];
  volatile uint32_t  INTENSET;                           
  volatile uint32_t  INTENCLR;                           
  volatile const  uint32_t  RESERVED3[61];
  volatile const  uint32_t  MICSTATUS;                          
  volatile const  uint32_t  RESERVED4[63];
  volatile uint32_t  ENABLE;                             
  volatile uint32_t  MODE;                               
  volatile uint32_t  CNFPTR;                             
  volatile uint32_t  INPTR;                              
  volatile uint32_t  OUTPTR;                             
  volatile uint32_t  SCRATCHPTR;                        
 
  volatile const  uint32_t  RESERVED5[697];
  volatile uint32_t  POWER;                              
} NRF_CCM_Type;


 
 
 




 

typedef struct {                                     
  volatile  uint32_t  TASKS_START;                        
  volatile const  uint32_t  RESERVED0[63];
  volatile uint32_t  EVENTS_TIMEOUT;                     
  volatile const  uint32_t  RESERVED1[128];
  volatile uint32_t  INTENSET;                           
  volatile uint32_t  INTENCLR;                           
  volatile const  uint32_t  RESERVED2[61];
  volatile const  uint32_t  RUNSTATUS;                          
  volatile const  uint32_t  REQSTATUS;                          
  volatile const  uint32_t  RESERVED3[63];
  volatile uint32_t  CRV;                                
  volatile uint32_t  RREN;                               
  volatile uint32_t  CONFIG;                             
  volatile const  uint32_t  RESERVED4[60];
  volatile  uint32_t  RR[8];                              
  volatile const  uint32_t  RESERVED5[631];
  volatile uint32_t  POWER;                              
} NRF_WDT_Type;


 
 
 




 

typedef struct {                                     
  volatile  uint32_t  TASKS_START;                        
  volatile  uint32_t  TASKS_STOP;                         
  volatile  uint32_t  TASKS_READCLRACC;                  
 
  volatile const  uint32_t  RESERVED0[61];
  volatile uint32_t  EVENTS_SAMPLERDY;                   
  volatile uint32_t  EVENTS_REPORTRDY;                  
 
  volatile uint32_t  EVENTS_ACCOF;                       
  volatile const  uint32_t  RESERVED1[61];
  volatile uint32_t  SHORTS;                             
  volatile const  uint32_t  RESERVED2[64];
  volatile uint32_t  INTENSET;                           
  volatile uint32_t  INTENCLR;                           
  volatile const  uint32_t  RESERVED3[125];
  volatile uint32_t  ENABLE;                             
  volatile uint32_t  LEDPOL;                             
  volatile uint32_t  SAMPLEPER;                          
  volatile const  int32_t   SAMPLE;                             
  volatile uint32_t  REPORTPER;                          
  volatile const  int32_t   ACC;                                
  volatile const  int32_t   ACCREAD;                           
 
  volatile uint32_t  PSELLED;                            
  volatile uint32_t  PSELA;                              
  volatile uint32_t  PSELB;                              
  volatile uint32_t  DBFEN;                              
  volatile const  uint32_t  RESERVED4[5];
  volatile uint32_t  LEDPRE;                             
  volatile const  uint32_t  ACCDBL;                             
  volatile const  uint32_t  ACCDBLREAD;                        
 
  volatile const  uint32_t  RESERVED5[684];
  volatile uint32_t  POWER;                              
} NRF_QDEC_Type;


 
 
 




 

typedef struct {                                     
  volatile  uint32_t  TASKS_START;                        
  volatile  uint32_t  TASKS_STOP;                         
  volatile  uint32_t  TASKS_SAMPLE;                       
  volatile const  uint32_t  RESERVED0[61];
  volatile uint32_t  EVENTS_READY;                       
  volatile uint32_t  EVENTS_DOWN;                        
  volatile uint32_t  EVENTS_UP;                          
  volatile uint32_t  EVENTS_CROSS;                       
  volatile const  uint32_t  RESERVED1[60];
  volatile uint32_t  SHORTS;                             
  volatile const  uint32_t  RESERVED2[64];
  volatile uint32_t  INTENSET;                           
  volatile uint32_t  INTENCLR;                           
  volatile const  uint32_t  RESERVED3[61];
  volatile const  uint32_t  RESULT;                             
  volatile const  uint32_t  RESERVED4[63];
  volatile uint32_t  ENABLE;                             
  volatile uint32_t  PSEL;                               
  volatile uint32_t  REFSEL;                             
  volatile uint32_t  EXTREFSEL;                          
  volatile const  uint32_t  RESERVED5[4];
  volatile uint32_t  ANADETECT;                          
  volatile const  uint32_t  RESERVED6[694];
  volatile uint32_t  POWER;                              
} NRF_LPCOMP_Type;


 
 
 




 

typedef struct {                                     
  volatile const  uint32_t  UNUSED;                             
} NRF_SWI_Type;


 
 
 




 

typedef struct {                                     
  volatile const  uint32_t  RESERVED0[256];
  volatile const  uint32_t  READY;                              
  volatile const  uint32_t  RESERVED1[64];
  volatile uint32_t  CONFIG;                             
  volatile uint32_t  ERASEPAGE;                          
  volatile uint32_t  ERASEALL;                           
  volatile uint32_t  ERASEPROTECTEDPAGE;                 
  volatile uint32_t  ERASEUICR;                          
} NRF_NVMC_Type;


 
 
 




 

typedef struct {                                     
  PPI_TASKS_CHG_Type TASKS_CHG[4];                   
  volatile const  uint32_t  RESERVED0[312];
  volatile uint32_t  CHEN;                               
  volatile uint32_t  CHENSET;                            
  volatile uint32_t  CHENCLR;                            
  volatile const  uint32_t  RESERVED1;
  PPI_CH_Type CH[16];                                
  volatile const  uint32_t  RESERVED2[156];
  volatile uint32_t  CHG[4];                             
} NRF_PPI_Type;


 
 
 




 

typedef struct {                                     
  volatile const  uint32_t  RESERVED0[4];
  volatile const  uint32_t  CODEPAGESIZE;                       
  volatile const  uint32_t  CODESIZE;                           
  volatile const  uint32_t  RBD;                                
  volatile const  uint32_t  RESERVED1[3];
  volatile const  uint32_t  CLENR0;                             
  volatile const  uint32_t  PPFC;                               
  volatile const  uint32_t  RESERVED2;
  volatile const  uint32_t  NUMRAMBLOCK;                        
  
  union {
    volatile const  uint32_t  SIZERAMBLOCK[4];                 

 
    volatile const  uint32_t  SIZERAMBLOCKS;                    
  };
  volatile const  uint32_t  RESERVED3[5];
  volatile const  uint32_t  CONFIGID;                           
  volatile const  uint32_t  DEVICEID[2];                        
  volatile const  uint32_t  RESERVED4[6];
  volatile const  uint32_t  ER[4];                              
  volatile const  uint32_t  IR[4];                              
  volatile const  uint32_t  DEVICEADDRTYPE;                     
  volatile const  uint32_t  DEVICEADDR[2];                      
  volatile const  uint32_t  OVERRIDEEN;                         
  volatile const  uint32_t  NRF_1MBIT[5];                      
 
  volatile const  uint32_t  RESERVED5[10];
  volatile const  uint32_t  BLE_1MBIT[5];                      
 
} NRF_FICR_Type;


 
 
 




 

typedef struct {                                     
  volatile uint32_t  CLENR0;                             
  volatile uint32_t  RBPCONF;                            
  volatile uint32_t  XTALFREQ;                           
  volatile const  uint32_t  RESERVED0;
  volatile const  uint32_t  FWID;                               
  volatile uint32_t  BOOTLOADERADDR;                     
} NRF_UICR_Type;


 
 
 




 

typedef struct {                                     
  volatile const  uint32_t  RESERVED0[321];
  volatile uint32_t  OUT;                                
  volatile uint32_t  OUTSET;                             
  volatile uint32_t  OUTCLR;                             
  volatile const  uint32_t  IN;                                 
  volatile uint32_t  DIR;                                
  volatile uint32_t  DIRSET;                             
  volatile uint32_t  DIRCLR;                             
  volatile const  uint32_t  RESERVED1[120];
  volatile uint32_t  PIN_CNF[32];                        
} NRF_GPIO_Type;


 

  #pragma pop
#line 1141 "..\\..\\..\\..\\..\\Include\\nrf51.h"




 
 
 

#line 1182 "..\\..\\..\\..\\..\\Include\\nrf51.h"


 
 
 

#line 1221 "..\\..\\..\\..\\..\\Include\\nrf51.h"


   
   
   








#line 38 "..\\..\\..\\..\\..\\Include\\nrf.h"
#line 1 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"




























 



 

#line 1 "D:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\4.1.1\\CMSIS\\Include\\core_cm0.h"
 







 

























 






#line 151 "D:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\4.1.1\\CMSIS\\Include\\core_cm0.h"



#line 697 "D:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\4.1.1\\CMSIS\\Include\\core_cm0.h"





#line 36 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
 

 
 

 






 






 






 
 

 






 






 






 
 

 



 
 

 





 
 

 



 
 

 






 
 

 
 

 






 
 

 






 
 

 





 
 

 





 
 

 






 
#line 184 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 192 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 201 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 






 
 

 



 
 

 






 
 

 
 

 
#line 243 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 255 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 267 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 279 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 291 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 303 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 315 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 327 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
 

 
#line 342 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 354 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 366 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 378 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 390 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 402 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 414 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 426 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
 

 
#line 441 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 453 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 465 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 477 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 489 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 501 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 513 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 525 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
 

 
#line 540 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 552 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 564 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 576 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 588 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 600 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 612 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 624 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
 

 
#line 639 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 651 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 663 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 675 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 687 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 699 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 711 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 723 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
 

 
#line 738 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 750 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 762 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 774 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 786 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 798 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 810 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
#line 822 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
 

 
 

 





 
 

 






 






 






 
 

 






 






 






 
 

 





 
 

 





 
 

 





 
 

 






 
 

 
 

 






 






 






 






 
 

 






 






 






 






 
 

 





 
 

 





 





 
 

 





 
 

 





 






 
 

 






 
 

 






 
 

 



 
 

 






 
 

 
 

 






 






 
 

 






 






 
 

 






 
 

 
 

 





 
 

 





 
 

 



 



 
 

 





 
 

 





 






 
 

 
 

 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 
 

 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 
 

 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 
 

 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 
 

 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 
 

 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 
 

 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 
 

 






 
#line 2692 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 






 





 






 
 

 
 

 






 






 






 






 






 
 

 






 






 






 






 






 
 

 





 






 



 






 
 

 






 
 

 
 

 





 





 





 





 





 
 

 






 






 






 






 
 

 






 






 






 






 
 

 





 
 

 





 
 

 
#line 2959 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
 

 
#line 2974 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
 

 





 
 

 






 
 

 






 
 

 
 

 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 
 

 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 
 

 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 
 

 





 
 

 




 
 

 






 
 

 
 

 





 
 

 






 
 

 





 
 

 






 
 

 
 

 






 
 

 






 
 

 



 



 



 



 



 



 



 
 

 





 





 





 





 
 

 




 
 

 
#line 3757 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 





 
 

 



 
 

 





 





 





 





 
 

 





 
 

 





 





 





 





 
 

 





 
 

 





 






 
 

 
 

 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 
 

 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 
 

 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 
 

 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 





 






 
 

 
 

 



 
 

 





 





 





 





 





 





 





 





 
 

 






 






 






 






 






 






 






 






 
 

 






 






 






 






 






 






 






 







 
 

 
 

 





 





 
 

 






 






 






 
 

 






 






 






 
 

 





 
 

 





 
 

 
#line 4881 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
 

 



 
 

 
#line 4903 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
 

 





 
 

 



 
 

 



 
 

 



 
 

 






 
 

 
 

 





 





 





 





 





 





 





 





 
 

 






 






 






 






 






 






 






 






 






 
 

 






 






 






 






 






 






 






 






 






 
 

 





 
 

 



 
 

 



 
 

 



 
 

 



 
 

 



 
 

 
#line 5188 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
 

 
#line 5199 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
 

 



 



 



 
 

 





 





 



 



 



 
 

 



 



 



 



 
 

 



 



 



 



 
 

 



 
 

 





 





 





 





 





 





 





 





 
 

 





 
#line 5354 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
 

 



 
 

 



 
 

 





 





 
 

 



 
 

 



 
 

 
#line 5413 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
 

 



 
 

 



 
 

 



 



 



 



 



 



 



 



 





 





 





 





 





 





 





 





 
 

 



 
 

 



 
 

 



 
 

 



 
 

 





 



 
 

 






 
 

 
 

 





 
 

 






 
 

 






 
 

 





 
 

 



 
 

 






 
 

 
 

 






 






 






 






 






 






 
 

 






 






 






 






 






 






 
 

 





 





 





 





 





 





 
 

 






 






 






 






 






 






 
 

 






 






 






 






 






 






 
 

 



 
 

 



 
 

 



 
 

 






 
 

 
 

 






 
 

 






 
 

 





 
 

 



 
 

 



 
 

 
#line 5932 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
 

 





 





 





 
 

 






 
 

 
 

 





 
 

 






 






 
 

 






 






 
 

 
#line 6020 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
 

 






 






 
 

 





 
 

 



 
 

 



 
 

 



 
 

 



 
 

 





 





 





 
 

 



 
 

 



 
 

 






 
 

 
 

 






 
 

 






 
 

 






 
 

 
 

 





 





 





 





 





 





 





 





 
 

 






 






 






 






 
 

 






 






 






 






 
 

 





 
 

 
#line 6288 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
 

 



 
 

 






 
 

 
 

 





 





 
 

 






 






 






 






 






 






 
 

 






 






 






 






 






 






 
 

 






 






 
 

 





 
 

 



 
 

 



 
 

 






 
 

 



 
 

 






 
 

 
 

 





 





 
 

 






 






 






 






 






 






 
 

 






 






 






 






 






 






 
 

 






 






 






 






 
 

 





 
 

 



 
 

 



 
 

 
#line 6665 "..\\..\\..\\..\\..\\Include\\nrf51_bitfields.h"

 
 

 





 





 
 

 






 
 

 
 

 





 





 
 

 





 
 

 




 
 

 
 

 






 
 

 






 
 

 





 
 

 





 





 





 





 





 





 





 





 
 

 





 





 





 





 





 





 





 





 
 

 





 





 
 

 




 
 

 






 
#line 39 "..\\..\\..\\..\\..\\Include\\nrf.h"
#line 1 "..\\..\\..\\..\\..\\Include\\nrf51_deprecated.h"




























 



 




 

 
 

 

 
 
 

 
 
 
 




 
 
 
 




 




 




 





 
 
 

 




 




 






 
 




 


 




 




 




 
 
#line 136 "..\\..\\..\\..\\..\\Include\\nrf51_deprecated.h"
 
#line 169 "..\\..\\..\\..\\..\\Include\\nrf51_deprecated.h"
 




 
#line 431 "..\\..\\..\\..\\..\\Include\\nrf51_deprecated.h"



 



#line 40 "..\\..\\..\\..\\..\\Include\\nrf.h"




#line 1 "..\\..\\..\\..\\..\\Include\\compiler_abstraction.h"




























 



 


    



    



    

  
#line 90 "..\\..\\..\\..\\..\\Include\\compiler_abstraction.h"

 

#line 45 "..\\..\\..\\..\\..\\Include\\nrf.h"





#line 31 "..\\main.c"
#line 1 "..\\..\\..\\..\\..\\Include\\app_common\\app_error.h"










 
 







 




#line 26 "..\\..\\..\\..\\..\\Include\\app_common\\app_error.h"
#line 1 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdbool.h"
 






 





#line 25 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdbool.h"



#line 27 "..\\..\\..\\..\\..\\Include\\app_common\\app_error.h"
#line 1 "..\\..\\..\\..\\..\\Include\\s110\\nrf_error.h"







 
 




 

 




 




 

#line 46 "..\\..\\..\\..\\..\\Include\\s110\\nrf_error.h"





 
#line 28 "..\\..\\..\\..\\..\\Include\\app_common\\app_error.h"






 
void app_error_handler(uint32_t error_code, uint32_t line_num, const uint8_t * p_file_name);




 









     
#line 60 "..\\..\\..\\..\\..\\Include\\app_common\\app_error.h"
    



     
#line 74 "..\\..\\..\\..\\..\\Include\\app_common\\app_error.h"



 
#line 32 "..\\main.c"
#line 1 "..\\..\\..\\..\\..\\Include\\nrf_gpio.h"



#line 5 "..\\..\\..\\..\\..\\Include\\nrf_gpio.h"
#line 6 "..\\..\\..\\..\\..\\Include\\nrf_gpio.h"












 




 
typedef enum
{
    NRF_GPIO_PORT_DIR_OUTPUT,       
    NRF_GPIO_PORT_DIR_INPUT         
} nrf_gpio_port_dir_t;




 
typedef enum
{
    NRF_GPIO_PIN_DIR_INPUT,   
    NRF_GPIO_PIN_DIR_OUTPUT   
} nrf_gpio_pin_dir_t;




 
typedef enum
{
    NRF_GPIO_PORT_SELECT_PORT0 = 0,           
    NRF_GPIO_PORT_SELECT_PORT1,               
    NRF_GPIO_PORT_SELECT_PORT2,               
    NRF_GPIO_PORT_SELECT_PORT3,               
} nrf_gpio_port_select_t;




 
typedef enum
{
    NRF_GPIO_PIN_NOPULL   = (0x00UL),                 
    NRF_GPIO_PIN_PULLDOWN = (0x01UL),                 
    NRF_GPIO_PIN_PULLUP   = (0x03UL),                   
} nrf_gpio_pin_pull_t;




 
typedef enum
{
    NRF_GPIO_PIN_NOSENSE    = (0x00UL),              
    NRF_GPIO_PIN_SENSE_LOW  = (0x03UL),                   
    NRF_GPIO_PIN_SENSE_HIGH = (0x02UL),                  
} nrf_gpio_pin_sense_t;











 
static __inline void nrf_gpio_range_cfg_output(uint32_t pin_range_start, uint32_t pin_range_end)
{
     
    for (; pin_range_start <= pin_range_end; pin_range_start++)
    {
        ((NRF_GPIO_Type *) 0x50000000UL)->PIN_CNF[pin_range_start] = ((0x00UL) << (16UL))
                                        | ((0x00UL) << (8UL))
                                        | ((0x00UL) << (2UL))
                                        | ((1UL) << (1UL))
                                        | ((1UL) << (0UL));
    }
}













 
static __inline void nrf_gpio_range_cfg_input(uint32_t pin_range_start, uint32_t pin_range_end, nrf_gpio_pin_pull_t pull_config)
{
     
    for (; pin_range_start <= pin_range_end; pin_range_start++)
    {
        ((NRF_GPIO_Type *) 0x50000000UL)->PIN_CNF[pin_range_start] = ((0x00UL) << (16UL))
                                        | ((0x00UL) << (8UL))
                                        | (pull_config << (2UL))
                                        | ((0UL) << (1UL))
                                        | ((0UL) << (0UL));
    }
}








 
static __inline void nrf_gpio_cfg_output(uint32_t pin_number)
{
     
    ((NRF_GPIO_Type *) 0x50000000UL)->PIN_CNF[pin_number] = ((0x00UL) << (16UL))
                                            | ((0x00UL) << (8UL))
                                            | ((0x00UL) << (2UL))
                                            | ((1UL) << (1UL))
                                            | ((1UL) << (0UL));
}










 
static __inline void nrf_gpio_cfg_input(uint32_t pin_number, nrf_gpio_pin_pull_t pull_config)
{
     
    ((NRF_GPIO_Type *) 0x50000000UL)->PIN_CNF[pin_number] = ((0x00UL) << (16UL))
                                        | ((0x00UL) << (8UL))
                                        | (pull_config << (2UL))
                                        | ((0UL) << (1UL))
                                        | ((0UL) << (0UL));
}











 
static __inline void nrf_gpio_cfg_sense_input(uint32_t pin_number, nrf_gpio_pin_pull_t pull_config, nrf_gpio_pin_sense_t sense_config)
{
     
    ((NRF_GPIO_Type *) 0x50000000UL)->PIN_CNF[pin_number] = (sense_config << (16UL))
                                        | ((0x00UL) << (8UL))
                                        | (pull_config << (2UL))
                                        | ((0UL) << (1UL))
                                        | ((0UL) << (0UL));
}








 
static __inline void nrf_gpio_pin_dir_set(uint32_t pin_number, nrf_gpio_pin_dir_t direction)
{
    if(direction == NRF_GPIO_PIN_DIR_INPUT)
    {
        ((NRF_GPIO_Type *) 0x50000000UL)->PIN_CNF[pin_number] =
          ((0x00UL) << (16UL))
        | ((0x00UL) << (8UL))
        | ((0x00UL) << (2UL))
        | ((0UL) << (1UL))
        | ((0UL) << (0UL));
    }
    else
    {
        ((NRF_GPIO_Type *) 0x50000000UL)->DIRSET = (1UL << pin_number);
    }
}









 
static __inline void nrf_gpio_pin_set(uint32_t pin_number)
{
    ((NRF_GPIO_Type *) 0x50000000UL)->OUTSET = (1UL << pin_number);
}









 
static __inline void nrf_gpio_pin_clear(uint32_t pin_number)
{
    ((NRF_GPIO_Type *) 0x50000000UL)->OUTCLR = (1UL << pin_number);
}









 
static __inline void nrf_gpio_pin_toggle(uint32_t pin_number)
{
    const uint32_t pin_bit   = 1UL << pin_number;
    const uint32_t pin_state = ((((NRF_GPIO_Type *) 0x50000000UL)->OUT >> pin_number) & 1UL);
    
    if (pin_state == 0)
    {
        
        ((NRF_GPIO_Type *) 0x50000000UL)->OUTSET = pin_bit;        
    }
    else
    {
        
        ((NRF_GPIO_Type *) 0x50000000UL)->OUTCLR = pin_bit;       
    }
}













 
static __inline void nrf_gpio_pin_write(uint32_t pin_number, uint32_t value)
{
    if (value == 0)
    {
        nrf_gpio_pin_clear(pin_number);
    }
    else
    {
        nrf_gpio_pin_set(pin_number);
    }
}














 
static __inline uint32_t nrf_gpio_pin_read(uint32_t pin_number)
{
    return  ((((NRF_GPIO_Type *) 0x50000000UL)->IN >> pin_number) & 1UL);
}














 
static __inline void nrf_gpio_word_byte_write(volatile uint32_t * word_address, uint8_t byte_no, uint8_t value)
{
    *((volatile uint8_t*)(word_address) + byte_no) = value;
}













 
static __inline uint8_t nrf_gpio_word_byte_read(const volatile uint32_t* word_address, uint8_t byte_no)
{
    return (*((const volatile uint8_t*)(word_address) + byte_no));
}







 
static __inline void nrf_gpio_port_dir_set(nrf_gpio_port_select_t port, nrf_gpio_port_dir_t dir)
{
    if (dir == NRF_GPIO_PORT_DIR_OUTPUT)
    {
        nrf_gpio_word_byte_write(&((NRF_GPIO_Type *) 0x50000000UL)->DIRSET, port, 0xFF);
    }
    else
    {
        nrf_gpio_range_cfg_input(port*8, (port+1)*8-1, NRF_GPIO_PIN_NOPULL);
    }
}







 
static __inline uint8_t nrf_gpio_port_read(nrf_gpio_port_select_t port)
{
    return nrf_gpio_word_byte_read(&((NRF_GPIO_Type *) 0x50000000UL)->IN, port);
}









 
static __inline void nrf_gpio_port_write(nrf_gpio_port_select_t port, uint8_t value)
{
    nrf_gpio_word_byte_write(&((NRF_GPIO_Type *) 0x50000000UL)->OUT, port, value);
}











 
static __inline void nrf_gpio_port_set(nrf_gpio_port_select_t port, uint8_t set_mask)
{
    nrf_gpio_word_byte_write(&((NRF_GPIO_Type *) 0x50000000UL)->OUTSET, port, set_mask);
}











 
static __inline void nrf_gpio_port_clear(nrf_gpio_port_select_t port, uint8_t clr_mask)
{
    nrf_gpio_word_byte_write(&((NRF_GPIO_Type *) 0x50000000UL)->OUTCLR, port, clr_mask);
}

 

#line 33 "..\\main.c"
#line 34 "..\\main.c"
#line 1 "..\\..\\..\\..\\..\\Include\\s110\\ble.h"






 








 




#line 1 "..\\..\\..\\..\\..\\Include\\s110\\ble_ranges.h"






 


















 






























































 
#line 22 "..\\..\\..\\..\\..\\Include\\s110\\ble.h"
#line 1 "..\\..\\..\\..\\..\\Include\\s110\\ble_types.h"






 







 




#line 21 "..\\..\\..\\..\\..\\Include\\s110\\ble_types.h"


 


 


 



 
 
#line 46 "..\\..\\..\\..\\..\\Include\\s110\\ble_types.h"
 


 
#line 56 "..\\..\\..\\..\\..\\Include\\s110\\ble_types.h"
 



 



 




 
#line 119 "..\\..\\..\\..\\..\\Include\\s110\\ble_types.h"
 

 




 




 




 



 



 


 

 
typedef struct
{ 
    unsigned char uuid128[16];
} ble_uuid128_t;

 
typedef struct
{
    uint16_t    uuid;  
    uint8_t     type;  
} ble_uuid_t;

 






 
#line 23 "..\\..\\..\\..\\..\\Include\\s110\\ble.h"
#line 1 "..\\..\\..\\..\\..\\Include\\s110\\ble_gap.h"






 




 




#line 18 "..\\..\\..\\..\\..\\Include\\s110\\ble_gap.h"
#line 19 "..\\..\\..\\..\\..\\Include\\s110\\ble_gap.h"
#line 1 "..\\..\\..\\..\\..\\Include\\s110\\nrf_svc.h"







#line 31 "..\\..\\..\\..\\..\\Include\\s110\\nrf_svc.h"

#line 20 "..\\..\\..\\..\\..\\Include\\s110\\ble_gap.h"



 


 
enum BLE_GAP_SVCS
{
  SD_BLE_GAP_ADDRESS_SET  = 0x70,   
  SD_BLE_GAP_ADDRESS_GET,                       
  SD_BLE_GAP_ADV_DATA_SET,                      
  SD_BLE_GAP_ADV_START,                         
  SD_BLE_GAP_ADV_STOP,                          
  SD_BLE_GAP_CONN_PARAM_UPDATE,                 
  SD_BLE_GAP_DISCONNECT,                        
  SD_BLE_GAP_TX_POWER_SET,                      
  SD_BLE_GAP_APPEARANCE_SET,                    
  SD_BLE_GAP_APPEARANCE_GET,                    
  SD_BLE_GAP_PPCP_SET,                          
  SD_BLE_GAP_PPCP_GET,                          
  SD_BLE_GAP_DEVICE_NAME_SET,                   
  SD_BLE_GAP_DEVICE_NAME_GET,                   
  SD_BLE_GAP_AUTHENTICATE,                      
  SD_BLE_GAP_SEC_PARAMS_REPLY,                  
  SD_BLE_GAP_AUTH_KEY_REPLY,                    
  SD_BLE_GAP_SEC_INFO_REPLY,                    
  SD_BLE_GAP_CONN_SEC_GET,                      
  SD_BLE_GAP_RSSI_START,                         
  SD_BLE_GAP_RSSI_STOP,                          
};
 


 


 



 




 



 



 


 



 




 


 


 

 


 





 
#line 135 "..\\..\\..\\..\\..\\Include\\s110\\ble_gap.h"
 



 
#line 147 "..\\..\\..\\..\\..\\Include\\s110\\ble_gap.h"
 



 



  


 




 




 



 




 



 


 



 



 


 





 



 



 


 
#line 226 "..\\..\\..\\..\\..\\Include\\s110\\ble_gap.h"
 


 


 


 
#line 246 "..\\..\\..\\..\\..\\Include\\s110\\ble_gap.h"
 


 






 
 

 

 

 

 

 

 


 


 


 




 



 

 

 


 

 
typedef struct
{
  uint8_t addr_type;                     
  uint8_t addr[6];        
} ble_gap_addr_t;






 
typedef struct
{
  uint16_t min_conn_interval;          
  uint16_t max_conn_interval;          
  uint16_t slave_latency;              
  uint16_t conn_sup_timeout;           
} ble_gap_conn_params_t;












 
typedef struct
{
  uint8_t sm : 4;                      
  uint8_t lv : 4;                      

} ble_gap_conn_sec_mode_t;


 
typedef struct
{
  ble_gap_conn_sec_mode_t sec_mode;            
  uint8_t                 encr_key_size;       
} ble_gap_conn_sec_t;


 
typedef struct
{
  uint8_t irk[16];    
} ble_gap_irk_t;


 
typedef struct
{
  ble_gap_addr_t   ** pp_addrs;         
  uint8_t             addr_count;       
  ble_gap_irk_t    ** pp_irks;          
  uint8_t             irk_count;        
} ble_gap_whitelist_t;


 
typedef struct
{
  uint8_t               type;                  
  ble_gap_addr_t*       p_peer_addr;           
  uint8_t               fp;                    
  ble_gap_whitelist_t * p_whitelist;           
  uint16_t              interval;              
  uint16_t              timeout;               
} ble_gap_adv_params_t;


 
typedef struct
{
  uint8_t    filter;                     
  uint8_t    active    : 1;              
  uint8_t    selective : 1;              
  uint16_t   interval;                   
  uint16_t   window;                     
  uint16_t   timeout;                    
} ble_gap_scan_params_t;


 
typedef struct
{
  uint16_t   timeout;                    
  uint8_t    bond    : 1;                
  uint8_t    mitm    : 1;                
  uint8_t    io_caps : 3;                
  uint8_t    oob     : 1;                
  uint8_t    min_key_size;               
  uint8_t    max_key_size;               
} ble_gap_sec_params_t;


 
typedef struct
{
  uint16_t  div;                         
  uint8_t   ltk[16];    
  uint8_t   auth : 1;                    
  uint8_t   ltk_len : 7;                 
} ble_gap_enc_info_t;


 
typedef struct
{
  uint16_t  ediv;                        
  uint8_t   rand[8];                     
} ble_gap_master_id_t;


 
typedef struct
{
  ble_gap_addr_t  addr;                        
  uint8_t         irk[16];    
} ble_gap_id_info_t;


 
typedef struct
{
  uint8_t   csrk[16];  
} ble_gap_sign_info_t;




 
enum BLE_GAP_EVTS
{
  BLE_GAP_EVT_CONNECTED  = 0x10,     
  BLE_GAP_EVT_DISCONNECTED,                      
  BLE_GAP_EVT_CONN_PARAM_UPDATE,                 
  BLE_GAP_EVT_SEC_PARAMS_REQUEST,                
  BLE_GAP_EVT_SEC_INFO_REQUEST,                  
  BLE_GAP_EVT_PASSKEY_DISPLAY,                   
  BLE_GAP_EVT_AUTH_KEY_REQUEST,                  
  BLE_GAP_EVT_AUTH_STATUS,                       
  BLE_GAP_EVT_CONN_SEC_UPDATE,                   
  BLE_GAP_EVT_TIMEOUT,                           
  BLE_GAP_EVT_RSSI_CHANGED,                      
};





 
enum BLE_GAP_OPTS
{
  BLE_GAP_OPT_LOCAL_CONN_LATENCY  = 0x20,     
  BLE_GAP_OPT_PASSKEY,                                    
  BLE_GAP_OPT_PRIVACY,                                    
};
 


 
typedef struct
{
  ble_gap_addr_t        peer_addr;               
  uint8_t               irk_match :1;            
  uint8_t               irk_match_idx  :7;       
  ble_gap_conn_params_t conn_params;             
} ble_gap_evt_connected_t;


 
typedef struct
{
  uint8_t reason;                                
} ble_gap_evt_disconnected_t;


 
typedef struct
{
  ble_gap_conn_params_t conn_params;             
} ble_gap_evt_conn_param_update_t;


 
typedef struct
{
  ble_gap_sec_params_t peer_params;              
} ble_gap_evt_sec_params_request_t;


 
typedef struct
{
  ble_gap_addr_t peer_addr;                      
  uint16_t       div;                            
  uint8_t        enc_info  : 1;                  
  uint8_t        id_info   : 1;                  
  uint8_t        sign_info : 1;                  
} ble_gap_evt_sec_info_request_t;


 
typedef struct
{
  uint8_t passkey[6];          
} ble_gap_evt_passkey_display_t;


 
typedef struct
{
  uint8_t key_type;                              
} ble_gap_evt_auth_key_request_t;




 
typedef struct
{
  uint8_t lv1 : 1;                               
  uint8_t lv2 : 1;                               
  uint8_t lv3 : 1;                               
} ble_gap_sec_levels_t;


 
typedef struct
{
  uint8_t ltk       : 1;                         
  uint8_t ediv_rand : 1;                         
  uint8_t irk       : 1;                         
  uint8_t address   : 1;                         
  uint8_t csrk      : 1;                         
} ble_gap_sec_keys_t;


 
typedef struct
{
  uint8_t               auth_status;             
  uint8_t               error_src;               
  ble_gap_sec_levels_t  sm1_levels;              
  ble_gap_sec_levels_t  sm2_levels;              
  ble_gap_sec_keys_t    periph_kex;              
  ble_gap_sec_keys_t    central_kex;             
  struct periph_keys_t
  {
    ble_gap_enc_info_t    enc_info;              
  } periph_keys;                                  
  struct central_keys_t
  {
    ble_gap_irk_t         irk;                   
    ble_gap_addr_t        id_info;               
  } central_keys;                                
} ble_gap_evt_auth_status_t;


 
typedef struct
{
  ble_gap_conn_sec_t conn_sec;                   
} ble_gap_evt_conn_sec_update_t;


 
typedef struct
{
  uint8_t src;                                   
} ble_gap_evt_timeout_t;


 
typedef struct
{
  int8_t  rssi;                                
} ble_gap_evt_rssi_changed_t;


 
typedef struct
{
  uint16_t conn_handle;                                      
  union                                                      
  {
    ble_gap_evt_connected_t          connected;              
    ble_gap_evt_disconnected_t       disconnected;           
    ble_gap_evt_conn_param_update_t  conn_param_update;      
    ble_gap_evt_sec_params_request_t sec_params_request;     
    ble_gap_evt_sec_info_request_t   sec_info_request;       
    ble_gap_evt_passkey_display_t    passkey_display;        
    ble_gap_evt_auth_key_request_t   auth_key_request;       
    ble_gap_evt_auth_status_t        auth_status;            
    ble_gap_evt_conn_sec_update_t    conn_sec_update;        
    ble_gap_evt_timeout_t            timeout;                
    ble_gap_evt_rssi_changed_t       rssi_changed;           
  } params;

} ble_gap_evt_t;























 
typedef struct
{
  uint16_t   conn_handle;                        
  uint16_t   requested_latency;                  
  uint16_t * p_actual_latency;                   
} ble_gap_opt_local_conn_latency_t;










 
typedef struct
{
  uint8_t * p_passkey;                           
} ble_gap_opt_passkey_t;












 
typedef struct
{
  ble_gap_irk_t * p_irk;         
  uint16_t        interval_s;    
} ble_gap_opt_privacy_t;


 
typedef union
{
  ble_gap_opt_local_conn_latency_t local_conn_latency;   
  ble_gap_opt_passkey_t            passkey;              
  ble_gap_opt_privacy_t            privacy;              
} ble_gap_opt_t;
 



 






































 
uint32_t __svc(SD_BLE_GAP_ADDRESS_SET) sd_ble_gap_address_set(uint8_t addr_cycle_mode, ble_gap_addr_t const * const p_addr);








 
uint32_t __svc(SD_BLE_GAP_ADDRESS_GET) sd_ble_gap_address_get(ble_gap_addr_t * const p_addr);

























 
uint32_t __svc(SD_BLE_GAP_ADV_DATA_SET) sd_ble_gap_adv_data_set(uint8_t const * const p_data, uint8_t dlen, uint8_t const * const p_sr_data, uint8_t srdlen);












 
uint32_t __svc(SD_BLE_GAP_ADV_START) sd_ble_gap_adv_start(ble_gap_adv_params_t const * const p_adv_params);






 
uint32_t __svc(SD_BLE_GAP_ADV_STOP) sd_ble_gap_adv_stop(void);






















 
uint32_t __svc(SD_BLE_GAP_CONN_PARAM_UPDATE) sd_ble_gap_conn_param_update(uint16_t conn_handle, ble_gap_conn_params_t const * const p_conn_params);














 
uint32_t __svc(SD_BLE_GAP_DISCONNECT) sd_ble_gap_disconnect(uint16_t conn_handle, uint8_t hci_status_code);











 
uint32_t __svc(SD_BLE_GAP_TX_POWER_SET) sd_ble_gap_tx_power_set(int8_t tx_power);








 
uint32_t __svc(SD_BLE_GAP_APPEARANCE_SET) sd_ble_gap_appearance_set(uint16_t appearance);








 
uint32_t __svc(SD_BLE_GAP_APPEARANCE_GET) sd_ble_gap_appearance_get(uint16_t * const p_appearance);









 
uint32_t __svc(SD_BLE_GAP_PPCP_SET) sd_ble_gap_ppcp_set(ble_gap_conn_params_t const * const p_conn_params);








 
uint32_t __svc(SD_BLE_GAP_PPCP_GET) sd_ble_gap_ppcp_get(ble_gap_conn_params_t * const p_conn_params);












 
uint32_t __svc(SD_BLE_GAP_DEVICE_NAME_SET) sd_ble_gap_device_name_set(ble_gap_conn_sec_mode_t const * const p_write_perm, uint8_t const * const p_dev_name, uint16_t len);















 
uint32_t __svc(SD_BLE_GAP_DEVICE_NAME_GET) sd_ble_gap_device_name_get(uint8_t * const p_dev_name, uint16_t * const p_len);





















 
uint32_t __svc(SD_BLE_GAP_AUTHENTICATE) sd_ble_gap_authenticate(uint16_t conn_handle, ble_gap_sec_params_t const * const p_sec_params);


















 
uint32_t __svc(SD_BLE_GAP_SEC_PARAMS_REPLY) sd_ble_gap_sec_params_reply(uint16_t conn_handle, uint8_t sec_status, ble_gap_sec_params_t const * const p_sec_params);


















 
uint32_t __svc(SD_BLE_GAP_AUTH_KEY_REPLY) sd_ble_gap_auth_key_reply(uint16_t conn_handle, uint8_t key_type, uint8_t const * const key);

















 
uint32_t __svc(SD_BLE_GAP_SEC_INFO_REPLY) sd_ble_gap_sec_info_reply(uint16_t conn_handle, ble_gap_enc_info_t const * const p_enc_info, ble_gap_sign_info_t const * const p_sign_info);










 
uint32_t __svc(SD_BLE_GAP_CONN_SEC_GET) sd_ble_gap_conn_sec_get(uint16_t conn_handle, ble_gap_conn_sec_t * const p_conn_sec);











 
uint32_t __svc(SD_BLE_GAP_RSSI_START) sd_ble_gap_rssi_start(uint16_t conn_handle);












 
uint32_t __svc(SD_BLE_GAP_RSSI_STOP) sd_ble_gap_rssi_stop(uint16_t conn_handle);
 





 
#line 24 "..\\..\\..\\..\\..\\Include\\s110\\ble.h"
#line 1 "..\\..\\..\\..\\..\\Include\\s110\\ble_l2cap.h"






 




 




#line 18 "..\\..\\..\\..\\..\\Include\\s110\\ble_l2cap.h"
#line 19 "..\\..\\..\\..\\..\\Include\\s110\\ble_l2cap.h"
#line 1 "..\\..\\..\\..\\..\\Include\\s110\\ble_err.h"







 
 













 



#line 28 "..\\..\\..\\..\\..\\Include\\s110\\ble_err.h"


 




 





 




 







 
#line 20 "..\\..\\..\\..\\..\\Include\\s110\\ble_l2cap.h"
#line 21 "..\\..\\..\\..\\..\\Include\\s110\\ble_l2cap.h"


 

 
enum BLE_L2CAP_SVCS 
{
  SD_BLE_L2CAP_CID_REGISTER = 0xB0,   
  SD_BLE_L2CAP_CID_UNREGISTER,                      
  SD_BLE_L2CAP_TX                                   
};

 


 


 

 

 


 


 


 


 


 

 
typedef struct
{
  uint16_t   len;                                  
  uint16_t   cid;                                  
} ble_l2cap_header_t;

 
enum BLE_L2CAP_EVTS 
{
  BLE_L2CAP_EVT_RX  = 0x70           
};


 
typedef struct
{
  ble_l2cap_header_t header;                       
  uint8_t    data[1];                              
} ble_l2cap_evt_rx_t;


 
typedef struct
{
  uint16_t conn_handle;                            
  union
  {
    ble_l2cap_evt_rx_t rx;                         
  } params;
} ble_l2cap_evt_t;












 
uint32_t __svc(SD_BLE_L2CAP_CID_REGISTER) sd_ble_l2cap_cid_register(uint16_t cid);










 
uint32_t __svc(SD_BLE_L2CAP_CID_UNREGISTER) sd_ble_l2cap_cid_unregister(uint16_t cid);


















 
uint32_t __svc(SD_BLE_L2CAP_TX) sd_ble_l2cap_tx(uint16_t conn_handle, ble_l2cap_header_t const * const p_header, uint8_t const * const p_data);

 





 
#line 25 "..\\..\\..\\..\\..\\Include\\s110\\ble.h"
#line 1 "..\\..\\..\\..\\..\\Include\\s110\\ble_gatt.h"






 
 



 




#line 18 "..\\..\\..\\..\\..\\Include\\s110\\ble_gatt.h"
#line 19 "..\\..\\..\\..\\..\\Include\\s110\\ble_gatt.h"



 

 


 



 



 

 


 
#line 47 "..\\..\\..\\..\\..\\Include\\s110\\ble_gatt.h"
 


 


 


 



 


 
#line 95 "..\\..\\..\\..\\..\\Include\\s110\\ble_gatt.h"
 




 
#line 129 "..\\..\\..\\..\\..\\Include\\s110\\ble_gatt.h"
 



 


 

 


 

 
typedef struct
{
   
  uint8_t broadcast       :1;  
  uint8_t read            :1;  
  uint8_t write_wo_resp   :1;  
  uint8_t write           :1;  
  uint8_t notify          :1;  
  uint8_t indicate        :1;  
  uint8_t auth_signed_wr  :1;  
} ble_gatt_char_props_t;

 
typedef struct
{
   
  uint8_t reliable_wr     :1;  
  uint8_t wr_aux          :1;  
} ble_gatt_char_ext_props_t;



 




 
#line 26 "..\\..\\..\\..\\..\\Include\\s110\\ble.h"
#line 1 "..\\..\\..\\..\\..\\Include\\s110\\ble_gattc.h"






 




 




#line 18 "..\\..\\..\\..\\..\\Include\\s110\\ble_gattc.h"
#line 19 "..\\..\\..\\..\\..\\Include\\s110\\ble_gattc.h"
#line 20 "..\\..\\..\\..\\..\\Include\\s110\\ble_gattc.h"
#line 21 "..\\..\\..\\..\\..\\Include\\s110\\ble_gattc.h"


 

 
enum BLE_GATTC_SVCS
{
  SD_BLE_GATTC_PRIMARY_SERVICES_DISCOVER = 0x90,  
  SD_BLE_GATTC_RELATIONSHIPS_DISCOVER,                          
  SD_BLE_GATTC_CHARACTERISTICS_DISCOVER,                        
  SD_BLE_GATTC_DESCRIPTORS_DISCOVER,                            
  SD_BLE_GATTC_CHAR_VALUE_BY_UUID_READ,                         
  SD_BLE_GATTC_READ,                                            
  SD_BLE_GATTC_CHAR_VALUES_READ,                                
  SD_BLE_GATTC_WRITE,                                           
  SD_BLE_GATTC_HV_CONFIRM                                       
};

 


 


 

 

 


 


 

 
typedef struct
{
  uint16_t          start_handle;  
  uint16_t          end_handle;    
} ble_gattc_handle_range_t;


 
typedef struct
{
  ble_uuid_t               uuid;           
  ble_gattc_handle_range_t handle_range;   
} ble_gattc_service_t;


 
typedef struct
{
  uint16_t            handle;            
  ble_gattc_service_t included_srvc;     
} ble_gattc_include_t;


 
typedef struct
{
  ble_uuid_t              uuid;                  
  ble_gatt_char_props_t   char_props;            
  uint8_t                 char_ext_props : 1;    
  uint16_t                handle_decl;           
  uint16_t                handle_value;          
} ble_gattc_char_t;


 
typedef struct
{
  uint16_t          handle;          
  ble_uuid_t        uuid;            
} ble_gattc_desc_t;


 
typedef struct
{
  uint8_t    write_op;                  
  uint16_t   handle;                    
  uint16_t   offset;                    
  uint16_t   len;                       
  uint8_t*   p_value;                   
  uint8_t    flags;                     
} ble_gattc_write_params_t;




 
enum BLE_GATTC_EVTS
{
  BLE_GATTC_EVT_PRIM_SRVC_DISC_RSP = 0x30,   
  BLE_GATTC_EVT_REL_DISC_RSP,                              
  BLE_GATTC_EVT_CHAR_DISC_RSP,                             
  BLE_GATTC_EVT_DESC_DISC_RSP,                             
  BLE_GATTC_EVT_CHAR_VAL_BY_UUID_READ_RSP,                 
  BLE_GATTC_EVT_READ_RSP,                                  
  BLE_GATTC_EVT_CHAR_VALS_READ_RSP,                        
  BLE_GATTC_EVT_WRITE_RSP,                                 
  BLE_GATTC_EVT_HVX,                                       
  BLE_GATTC_EVT_TIMEOUT                                    
};

 
typedef struct
{
  uint16_t             count;            
  ble_gattc_service_t services[1];       
} ble_gattc_evt_prim_srvc_disc_rsp_t;

 
typedef struct
{
  uint16_t             count;            
  ble_gattc_include_t includes[1];       
} ble_gattc_evt_rel_disc_rsp_t;

 
typedef struct
{
  uint16_t            count;           
  ble_gattc_char_t    chars[1];        
} ble_gattc_evt_char_disc_rsp_t;

 
typedef struct
{
  uint16_t            count;           
  ble_gattc_desc_t    descs[1];        
} ble_gattc_evt_desc_disc_rsp_t;

 
typedef struct 
{
  uint16_t            handle;           
  uint8_t             *p_value;        

 
} ble_gattc_handle_value_t;

 
typedef struct
{
  uint16_t                  count;             
  uint16_t                  value_len;         
  ble_gattc_handle_value_t  handle_value[1];   
} ble_gattc_evt_char_val_by_uuid_read_rsp_t;

 
typedef struct
{
  uint16_t            handle;          
  uint16_t            offset;          
  uint16_t            len;             
  uint8_t             data[1];         
} ble_gattc_evt_read_rsp_t;

 
typedef struct
{
  uint16_t            len;             
  uint8_t             values[1];       
} ble_gattc_evt_char_vals_read_rsp_t;

 
typedef struct
{
  uint16_t            handle;            
  uint8_t             write_op;          
  uint16_t            offset;            
  uint16_t            len;               
  uint8_t             data[1];           
} ble_gattc_evt_write_rsp_t;

 
typedef struct
{
  uint16_t            handle;          
  uint8_t             type;            
  uint16_t            len;             
  uint8_t             data[1];         
} ble_gattc_evt_hvx_t;

 
typedef struct
{
  uint8_t          src;                        
} ble_gattc_evt_timeout_t;

 
typedef struct
{
  uint16_t            conn_handle;                 
  uint16_t            gatt_status;                 
  uint16_t            error_handle;                
  union
  {
    ble_gattc_evt_prim_srvc_disc_rsp_t          prim_srvc_disc_rsp;          
    ble_gattc_evt_rel_disc_rsp_t                rel_disc_rsp;                
    ble_gattc_evt_char_disc_rsp_t               char_disc_rsp;               
    ble_gattc_evt_desc_disc_rsp_t               desc_disc_rsp;               
    ble_gattc_evt_char_val_by_uuid_read_rsp_t   char_val_by_uuid_read_rsp;   
    ble_gattc_evt_read_rsp_t                    read_rsp;                    
    ble_gattc_evt_char_vals_read_rsp_t          char_vals_read_rsp;          
    ble_gattc_evt_write_rsp_t                   write_rsp;                   
    ble_gattc_evt_hvx_t                         hvx;                         
    ble_gattc_evt_timeout_t                     timeout;                     
  } params;                                                                  
} ble_gattc_evt_t;
 


 

















 
uint32_t __svc(SD_BLE_GATTC_PRIMARY_SERVICES_DISCOVER) sd_ble_gattc_primary_services_discover(uint16_t conn_handle, uint16_t start_handle, ble_uuid_t const * const p_srvc_uuid);















 
uint32_t __svc(SD_BLE_GATTC_RELATIONSHIPS_DISCOVER) sd_ble_gattc_relationships_discover(uint16_t conn_handle, ble_gattc_handle_range_t const * const p_handle_range);

















 
uint32_t __svc(SD_BLE_GATTC_CHARACTERISTICS_DISCOVER) sd_ble_gattc_characteristics_discover(uint16_t conn_handle, ble_gattc_handle_range_t const * const p_handle_range);














 
uint32_t __svc(SD_BLE_GATTC_DESCRIPTORS_DISCOVER) sd_ble_gattc_descriptors_discover(uint16_t conn_handle, ble_gattc_handle_range_t const * const p_handle_range);















 
uint32_t __svc(SD_BLE_GATTC_CHAR_VALUE_BY_UUID_READ) sd_ble_gattc_char_value_by_uuid_read(uint16_t conn_handle, ble_uuid_t const * const p_uuid, ble_gattc_handle_range_t const * const p_handle_range);
















 
uint32_t __svc(SD_BLE_GATTC_READ) sd_ble_gattc_read(uint16_t conn_handle, uint16_t handle, uint16_t offset);














 
uint32_t __svc(SD_BLE_GATTC_CHAR_VALUES_READ) sd_ble_gattc_char_values_read(uint16_t conn_handle, uint16_t const * const p_handles, uint16_t handle_count);





















 
uint32_t __svc(SD_BLE_GATTC_WRITE) sd_ble_gattc_write(uint16_t conn_handle, ble_gattc_write_params_t const * const p_write_params);












 
uint32_t __svc(SD_BLE_GATTC_HV_CONFIRM) sd_ble_gattc_hv_confirm(uint16_t conn_handle, uint16_t handle);

 






 
#line 27 "..\\..\\..\\..\\..\\Include\\s110\\ble.h"
#line 1 "..\\..\\..\\..\\..\\Include\\s110\\ble_gatts.h"






 




 




#line 18 "..\\..\\..\\..\\..\\Include\\s110\\ble_gatts.h"
#line 19 "..\\..\\..\\..\\..\\Include\\s110\\ble_gatts.h"
#line 20 "..\\..\\..\\..\\..\\Include\\s110\\ble_gatts.h"
#line 21 "..\\..\\..\\..\\..\\Include\\s110\\ble_gatts.h"
#line 22 "..\\..\\..\\..\\..\\Include\\s110\\ble_gatts.h"
#line 23 "..\\..\\..\\..\\..\\Include\\s110\\ble_gatts.h"


 



 
enum BLE_GATTS_SVCS
{
  SD_BLE_GATTS_SERVICE_ADD = 0xA0,  
  SD_BLE_GATTS_INCLUDE_ADD,                       
  SD_BLE_GATTS_CHARACTERISTIC_ADD,                
  SD_BLE_GATTS_DESCRIPTOR_ADD,                    
  SD_BLE_GATTS_VALUE_SET,                         
  SD_BLE_GATTS_VALUE_GET,                         
  SD_BLE_GATTS_HVX,                               
  SD_BLE_GATTS_SERVICE_CHANGED,                   
  SD_BLE_GATTS_RW_AUTHORIZE_REPLY,                 
  SD_BLE_GATTS_SYS_ATTR_SET,                        
  SD_BLE_GATTS_SYS_ATTR_GET,                      
};

 


 

 



 


 


 


 


 



 



 
#line 83 "..\\..\\..\\..\\..\\Include\\s110\\ble_gatts.h"
 



 
#line 95 "..\\..\\..\\..\\..\\Include\\s110\\ble_gatts.h"
 


 




 


 



 


 


 



 
typedef struct
{
  uint8_t   service_changed:1;              
} ble_gatts_enable_params_t;

 
typedef struct
{
  ble_gap_conn_sec_mode_t read_perm;        
  ble_gap_conn_sec_mode_t write_perm;       
  uint8_t                 vlen       :1;    
  uint8_t                 vloc       :2;    
  uint8_t                 rd_auth    :1;     
  uint8_t                 wr_auth    :1;    
} ble_gatts_attr_md_t;


 
typedef struct
{
  ble_uuid_t*          p_uuid;           
  ble_gatts_attr_md_t* p_attr_md;        
  uint16_t             init_len;         
  uint16_t             init_offs;        
  uint16_t             max_len;          
  uint8_t*             p_value;         

 
} ble_gatts_attr_t;


 
typedef struct
{
  ble_uuid_t           srvc_uuid;        
  ble_uuid_t           char_uuid;        
  ble_uuid_t           desc_uuid;        
  uint16_t             srvc_handle;      
  uint16_t             value_handle;     
  uint8_t              type;             
} ble_gatts_attr_context_t;


 
typedef struct
{
  uint8_t          format;       
  int8_t           exponent;     
  uint16_t         unit;         
  uint8_t          name_space;   
  uint16_t         desc;         
} ble_gatts_char_pf_t;


 
typedef struct
{
  ble_gatt_char_props_t       char_props;                
  ble_gatt_char_ext_props_t   char_ext_props;            
  uint8_t*                    p_char_user_desc;          
  uint16_t                    char_user_desc_max_size;   
  uint16_t                    char_user_desc_size;        
  ble_gatts_char_pf_t*        p_char_pf;                 
  ble_gatts_attr_md_t*        p_user_desc_md;            
  ble_gatts_attr_md_t*        p_cccd_md;                 
  ble_gatts_attr_md_t*        p_sccd_md;                 
} ble_gatts_char_md_t;


 
typedef struct
{
  uint16_t          value_handle;        
  uint16_t          user_desc_handle;    
  uint16_t          cccd_handle;         
  uint16_t          sccd_handle;         
} ble_gatts_char_handles_t;


 
typedef struct
{
  uint16_t          handle;              
  uint8_t           type;                
  uint16_t          offset;              
  uint16_t*         p_len;               
  uint8_t*          p_data;              
} ble_gatts_hvx_params_t;

 
typedef struct
{
  uint16_t          gatt_status;         
  uint8_t           update : 1;          
  uint16_t          offset;              
  uint16_t          len;                 
  uint8_t*          p_data;              
} ble_gatts_read_authorize_params_t;

 
typedef struct
{
  uint16_t          gatt_status;         
} ble_gatts_write_authorize_params_t;

 
typedef struct
{
  uint8_t                               type;    
  union {
    ble_gatts_read_authorize_params_t   read;    
    ble_gatts_write_authorize_params_t  write;   
  } params;
} ble_gatts_rw_authorize_reply_params_t;




 
enum BLE_GATTS_EVTS
{
  BLE_GATTS_EVT_WRITE = 0x50,        
  BLE_GATTS_EVT_RW_AUTHORIZE_REQUEST,              
  BLE_GATTS_EVT_SYS_ATTR_MISSING,                  
  BLE_GATTS_EVT_HVC,                               
  BLE_GATTS_EVT_SC_CONFIRM,                        
  BLE_GATTS_EVT_TIMEOUT                            
};


 
typedef struct
{
  uint16_t                    handle;              
  uint8_t                     op;                  
  ble_gatts_attr_context_t    context;             
  uint16_t                    offset;              
  uint16_t                    len;                 
  uint8_t                     data[1];             
} ble_gatts_evt_write_t;

 
typedef struct
{
  uint16_t                    handle;              
  ble_gatts_attr_context_t    context;             
  uint16_t                    offset;              
} ble_gatts_evt_read_t;

 
typedef struct
{
  uint8_t                     type;              
  union {
    ble_gatts_evt_read_t      read;              
    ble_gatts_evt_write_t     write;             
  } request;
} ble_gatts_evt_rw_authorize_request_t;

 
typedef struct
{
  uint8_t hint;
} ble_gatts_evt_sys_attr_missing_t;


 
typedef struct
{
  uint16_t          handle;                        
} ble_gatts_evt_hvc_t;

 
typedef struct
{
  uint8_t          src;                        
} ble_gatts_evt_timeout_t;


 
typedef struct
{
  uint16_t conn_handle;                                        
  union
  {
    ble_gatts_evt_write_t                 write;               
    ble_gatts_evt_rw_authorize_request_t  authorize_request;   
    ble_gatts_evt_sys_attr_missing_t      sys_attr_missing;    
    ble_gatts_evt_hvc_t                   hvc;                 
    ble_gatts_evt_timeout_t               timeout;             
  } params;
} ble_gatts_evt_t;

 


 















 
uint32_t __svc(SD_BLE_GATTS_SERVICE_ADD) sd_ble_gatts_service_add(uint8_t type, ble_uuid_t const*const p_uuid, uint16_t *const p_handle);



















 
uint32_t __svc(SD_BLE_GATTS_INCLUDE_ADD) sd_ble_gatts_include_add(uint16_t service_handle, uint16_t inc_srvc_handle, uint16_t *const p_include_handle);























 
uint32_t __svc(SD_BLE_GATTS_CHARACTERISTIC_ADD) sd_ble_gatts_characteristic_add(uint16_t service_handle, ble_gatts_char_md_t const*const p_char_md, ble_gatts_attr_t const*const p_attr_char_value, ble_gatts_char_handles_t *const p_handles);

















 
uint32_t __svc(SD_BLE_GATTS_DESCRIPTOR_ADD) sd_ble_gatts_descriptor_add(uint16_t char_handle, ble_gatts_attr_t const * const p_attr, uint16_t* const p_handle);














 
uint32_t __svc(SD_BLE_GATTS_VALUE_SET) sd_ble_gatts_value_set(uint16_t handle, uint16_t offset, uint16_t* const p_len, uint8_t const * const p_value);
















 
uint32_t __svc(SD_BLE_GATTS_VALUE_GET) sd_ble_gatts_value_get(uint16_t handle, uint16_t offset, uint16_t *const p_len, uint8_t* const p_data);



































 
uint32_t __svc(SD_BLE_GATTS_HVX) sd_ble_gatts_hvx(uint16_t conn_handle, ble_gatts_hvx_params_t const*const p_hvx_params);




















 
uint32_t __svc(SD_BLE_GATTS_SERVICE_CHANGED) sd_ble_gatts_service_changed(uint16_t conn_handle, uint16_t start_handle, uint16_t end_handle);














 
uint32_t __svc(SD_BLE_GATTS_RW_AUTHORIZE_REPLY) sd_ble_gatts_rw_authorize_reply(uint16_t conn_handle, ble_gatts_rw_authorize_reply_params_t const*const p_rw_authorize_reply_params);



























  
uint32_t __svc(SD_BLE_GATTS_SYS_ATTR_SET) sd_ble_gatts_sys_attr_set(uint16_t conn_handle, uint8_t const*const p_sys_attr_data, uint16_t len); 

 

















  
uint32_t __svc(SD_BLE_GATTS_SYS_ATTR_GET) sd_ble_gatts_sys_attr_get(uint16_t conn_handle, uint8_t * const p_sys_attr_data, uint16_t* const p_len); 

 





 
#line 28 "..\\..\\..\\..\\..\\Include\\s110\\ble.h"


 



 
enum BLE_COMMON_SVCS
{
  SD_BLE_ENABLE = 0x60,          
  SD_BLE_EVT_GET,                        
  SD_BLE_TX_BUFFER_COUNT_GET,            
  SD_BLE_UUID_VS_ADD,                    
  SD_BLE_UUID_DECODE,                    
  SD_BLE_UUID_ENCODE,                    
  SD_BLE_VERSION_GET,                    
  SD_BLE_USER_MEM_REPLY,                 
  SD_BLE_OPT_SET,                        
  SD_BLE_OPT_GET,                        
};

 


 


 



 


 


 


 


 



 
enum BLE_COMMON_EVTS
{
  BLE_EVT_TX_COMPLETE  = 0x01,   
  BLE_EVT_USER_MEM_REQUEST,              
  BLE_EVT_USER_MEM_RELEASE               
};

 
typedef struct
{
  uint8_t*          p_mem;       
  uint16_t          len;         
} ble_user_mem_block_t;



 
typedef struct
{
  uint8_t count;                         
} ble_evt_tx_complete_t;

 
typedef struct
{
  uint8_t                     type;      
} ble_evt_user_mem_request_t;

 
typedef struct
{
  uint8_t                     type;        
  ble_user_mem_block_t        mem_block;   
} ble_evt_user_mem_release_t;


 
typedef struct
{
  uint16_t conn_handle;                  
  union
  {
    ble_evt_tx_complete_t           tx_complete;         
    ble_evt_user_mem_request_t      user_mem_request;    
    ble_evt_user_mem_release_t      user_mem_release;    
  } params;
} ble_common_evt_t;

 
typedef struct
{
  uint16_t evt_id;                       
  uint16_t evt_len;                      
} ble_evt_hdr_t;

 
typedef struct
{
  ble_evt_hdr_t header;                  
  union
  {
    ble_common_evt_t  common_evt;          
    ble_gap_evt_t     gap_evt;             
    ble_l2cap_evt_t   l2cap_evt;           
    ble_gattc_evt_t   gattc_evt;           
    ble_gatts_evt_t   gatts_evt;           
  } evt;
} ble_evt_t;




 
typedef struct
{
  uint8_t   version_number;              
  uint16_t  company_id;                  
  uint16_t  subversion_number;           
} ble_version_t;

 
typedef union
{
  ble_gap_opt_t     gap;             
} ble_opt_t;



 
typedef struct
{
  ble_gatts_enable_params_t  gatts_enable_params;    
} ble_enable_params_t;

 


 









 
uint32_t __svc(SD_BLE_ENABLE) sd_ble_enable(ble_enable_params_t * p_ble_enable_params);

























 
uint32_t __svc(SD_BLE_EVT_GET) sd_ble_evt_get(uint8_t* p_dest, uint16_t *p_len);



































 
uint32_t __svc(SD_BLE_TX_BUFFER_COUNT_GET) sd_ble_tx_buffer_count_get(uint8_t* p_count);



























 
uint32_t __svc(SD_BLE_UUID_VS_ADD) sd_ble_uuid_vs_add(ble_uuid128_t const * const p_vs_uuid, uint8_t * const p_uuid_type);



















                                                  
uint32_t __svc(SD_BLE_UUID_DECODE) sd_ble_uuid_decode(uint8_t uuid_le_len, uint8_t const * const p_uuid_le, ble_uuid_t * const p_uuid);













 
uint32_t __svc(SD_BLE_UUID_ENCODE) sd_ble_uuid_encode(ble_uuid_t const * const p_uuid, uint8_t * const p_uuid_le_len, uint8_t * const p_uuid_le);











 
uint32_t __svc(SD_BLE_VERSION_GET) sd_ble_version_get(ble_version_t * p_version);












 
uint32_t __svc(SD_BLE_USER_MEM_REPLY) sd_ble_user_mem_reply(uint16_t conn_handle, ble_user_mem_block_t *p_block);















 
uint32_t __svc(SD_BLE_OPT_SET) sd_ble_opt_set(uint32_t opt_id, ble_opt_t const *p_opt);

















 
uint32_t __svc(SD_BLE_OPT_GET) sd_ble_opt_get(uint32_t opt_id, ble_opt_t *p_opt);

 






 
#line 35 "..\\main.c"
#line 1 "..\\..\\..\\..\\..\\Include\\s110\\ble_hci.h"






 



 






 






 






 





 









 




 




 

 




 


















 






 




 
#line 36 "..\\main.c"
#line 1 "..\\..\\..\\..\\..\\Include\\ble\\ble_services\\ble_srv_common.h"










 







 




#line 25 "..\\..\\..\\..\\..\\Include\\ble\\ble_services\\ble_srv_common.h"
#line 26 "..\\..\\..\\..\\..\\Include\\ble\\ble_services\\ble_srv_common.h"
#line 27 "..\\..\\..\\..\\..\\Include\\ble\\ble_services\\ble_srv_common.h"
#line 1 "..\\..\\..\\..\\..\\Include\\app_common\\app_util.h"










 








 




#line 26 "..\\..\\..\\..\\..\\Include\\app_common\\app_util.h"
#line 27 "..\\..\\..\\..\\..\\Include\\app_common\\app_util.h"
#line 28 "..\\..\\..\\..\\..\\Include\\app_common\\app_util.h"

enum
{
    UNIT_0_625_MS = 625,                                 
    UNIT_1_25_MS  = 1250,                                
    UNIT_10_MS    = 10000                                
};














 








 
typedef uint8_t uint16_le_t[2];

 
typedef uint8_t uint32_le_t[4];

 
typedef struct
{
    uint16_t  size;                  
    uint8_t * p_data;                
} uint8_array_t;
    






 








 





 












 











 
static __inline uint8_t uint16_encode(uint16_t value, uint8_t * p_encoded_data)
{
    p_encoded_data[0] = (uint8_t) ((value & 0x00FF) >> 0);
    p_encoded_data[1] = (uint8_t) ((value & 0xFF00) >> 8);
    return sizeof(uint16_t);
}
    






 
static __inline uint8_t uint32_encode(uint32_t value, uint8_t * p_encoded_data)
{
    p_encoded_data[0] = (uint8_t) ((value & 0x000000FF) >> 0);
    p_encoded_data[1] = (uint8_t) ((value & 0x0000FF00) >> 8);
    p_encoded_data[2] = (uint8_t) ((value & 0x00FF0000) >> 16);
    p_encoded_data[3] = (uint8_t) ((value & 0xFF000000) >> 24);
    return sizeof(uint32_t);
}






 
static __inline uint16_t uint16_decode(const uint8_t * p_encoded_data)
{
        return ( (((uint16_t)((uint8_t *)p_encoded_data)[0])) | 
                 (((uint16_t)((uint8_t *)p_encoded_data)[1]) << 8 ));
}






 
static __inline uint32_t uint32_decode(const uint8_t * p_encoded_data)
{
    return ( (((uint32_t)((uint8_t *)p_encoded_data)[0]) << 0)  |
             (((uint32_t)((uint8_t *)p_encoded_data)[1]) << 8)  |
             (((uint32_t)((uint8_t *)p_encoded_data)[2]) << 16) |
             (((uint32_t)((uint8_t *)p_encoded_data)[3]) << 24 ));
}
    



















 
static __inline uint8_t battery_level_in_percent(const uint16_t mvolts)
{
    uint8_t battery_level;

    if (mvolts >= 3000)
    {
        battery_level = 100;
    }
    else if (mvolts > 2900)
    {
        battery_level = 100 - ((3000 - mvolts) * 58) / 100;
    }
    else if (mvolts > 2740)
    {
        battery_level = 42 - ((2900 - mvolts) * 24) / 160;
    }
    else if (mvolts > 2440)
    {
        battery_level = 18 - ((2740 - mvolts) * 12) / 300;
    }
    else if (mvolts > 2100)
    {
        battery_level = 6 - ((2440 - mvolts) * 6) / 340;
    }
    else
    {
        battery_level = 0;
    }

    return battery_level;
}






 
static __inline _Bool is_word_aligned(void * p)
{
    return (((uintptr_t)p & 0x03) == 0);
}



 
#line 28 "..\\..\\..\\..\\..\\Include\\ble\\ble_services\\ble_srv_common.h"
#line 29 "..\\..\\..\\..\\..\\Include\\ble\\ble_services\\ble_srv_common.h"
#line 30 "..\\..\\..\\..\\..\\Include\\ble\\ble_services\\ble_srv_common.h"


 
#line 51 "..\\..\\..\\..\\..\\Include\\ble\\ble_services\\ble_srv_common.h"
 


 
#line 125 "..\\..\\..\\..\\..\\Include\\ble\\ble_services\\ble_srv_common.h"
 


 


 


 



 





 
typedef void (*ble_srv_error_handler_t) (uint32_t nrf_error);





 
typedef struct
{
    uint8_t report_id;                                   
    uint8_t report_type;                                 
} ble_srv_report_ref_t;




 
typedef struct
{
    uint16_t  length;                                    
    uint8_t * p_str;                                     
} ble_srv_utf8_str_t;




 
typedef struct
{
    ble_gap_conn_sec_mode_t read_perm;                   
    ble_gap_conn_sec_mode_t write_perm;                  
} ble_srv_security_mode_t;




 
typedef struct
{
    ble_gap_conn_sec_mode_t cccd_write_perm;
    ble_gap_conn_sec_mode_t read_perm;                   
    ble_gap_conn_sec_mode_t write_perm;                  
} ble_srv_cccd_security_mode_t;







 
static __inline _Bool ble_srv_is_notification_enabled(uint8_t * p_encoded_data)
{
    uint16_t cccd_value = uint16_decode(p_encoded_data);
    return ((cccd_value & 0x01) != 0);
}
    






 
static __inline _Bool ble_srv_is_indication_enabled(uint8_t * p_encoded_data)
{
    uint16_t cccd_value = uint16_decode(p_encoded_data);
    return ((cccd_value & 0x02) != 0);
}







 
uint8_t ble_srv_report_ref_encode(uint8_t *                    p_encoded_buffer,
                                  const ble_srv_report_ref_t * p_report_ref);





 
void ble_srv_ascii_to_utf8(ble_srv_utf8_str_t * p_utf8, char * p_ascii);



 
#line 37 "..\\main.c"
#line 1 "..\\..\\..\\..\\..\\Include\\ble\\ble_advdata.h"










 








 




#line 26 "..\\..\\..\\..\\..\\Include\\ble\\ble_advdata.h"
#line 27 "..\\..\\..\\..\\..\\Include\\ble\\ble_advdata.h"
#line 28 "..\\..\\..\\..\\..\\Include\\ble\\ble_advdata.h"
#line 29 "..\\..\\..\\..\\..\\Include\\ble\\ble_advdata.h"
#line 30 "..\\..\\..\\..\\..\\Include\\ble\\ble_advdata.h"


 
typedef enum
{
    BLE_ADVDATA_NO_NAME,                                               
    BLE_ADVDATA_SHORT_NAME,                                            
    BLE_ADVDATA_FULL_NAME                                              
} ble_advdata_name_type_t;

 
typedef struct
{
    uint16_t                     uuid_cnt;                             
    ble_uuid_t *                 p_uuids;                              
} ble_advdata_uuid_list_t;

 
typedef struct
{
    uint16_t                     min_conn_interval;                    
    uint16_t                     max_conn_interval;                    
} ble_advdata_conn_int_t;

 
typedef struct
{
    uint16_t                     company_identifier;                   
    uint8_array_t                data;                                 
} ble_advdata_manuf_data_t;

 
typedef struct
{
    uint16_t                     service_uuid;                         
    uint8_array_t                data;                                 
} ble_advdata_service_data_t;


 
typedef struct
{
    ble_advdata_name_type_t      name_type;                            
    uint8_t                      short_name_len;                       
    _Bool                         include_appearance;                   
    uint8_array_t                flags;                                
    int8_t *                     p_tx_power_level;                     
    ble_advdata_uuid_list_t      uuids_more_available;                 
    ble_advdata_uuid_list_t      uuids_complete;                       
    ble_advdata_uuid_list_t      uuids_solicited;                      
    ble_advdata_conn_int_t *     p_slave_conn_int;                     
    ble_advdata_manuf_data_t *   p_manuf_specific_data;                
    ble_advdata_service_data_t * p_service_data_array;                 
    uint8_t                      service_data_count;                   
} ble_advdata_t;























 
uint32_t ble_advdata_set(const ble_advdata_t * p_advdata, const ble_advdata_t * p_srdata);



 
#line 38 "..\\main.c"
#line 1 "..\\..\\..\\..\\..\\Include\\ble\\ble_conn_params.h"










 







 




#line 25 "..\\..\\..\\..\\..\\Include\\ble\\ble_conn_params.h"
#line 26 "..\\..\\..\\..\\..\\Include\\ble\\ble_conn_params.h"
#line 27 "..\\..\\..\\..\\..\\Include\\ble\\ble_conn_params.h"

 
typedef enum
{
    BLE_CONN_PARAMS_EVT_FAILED   ,                                   
    BLE_CONN_PARAMS_EVT_SUCCEEDED                                    
} ble_conn_params_evt_type_t;

 
typedef struct
{
    ble_conn_params_evt_type_t evt_type;                             
} ble_conn_params_evt_t;

 
typedef void (*ble_conn_params_evt_handler_t) (ble_conn_params_evt_t * p_evt);


 
typedef struct
{
    ble_gap_conn_params_t *       p_conn_params;                     
    uint32_t                      first_conn_params_update_delay;    
    uint32_t                      next_conn_params_update_delay;     
    uint8_t                       max_conn_params_update_count;      
    uint16_t                      start_on_notify_cccd_handle;       
    _Bool                          disconnect_on_fail;                
    ble_conn_params_evt_handler_t evt_handler;                       
    ble_srv_error_handler_t       error_handler;                     
} ble_conn_params_init_t;











 
uint32_t ble_conn_params_init(const ble_conn_params_init_t * p_init);











 
uint32_t ble_conn_params_stop(void);















 
uint32_t ble_conn_params_change_conn_params(ble_gap_conn_params_t *new_params);






 
void ble_conn_params_on_ble_evt(ble_evt_t * p_ble_evt);



 
#line 39 "..\\main.c"
#line 1 "..\\ble_nus.h"










 


















 




#line 36 "..\\ble_nus.h"
#line 37 "..\\ble_nus.h"
#line 38 "..\\ble_nus.h"
#line 39 "..\\ble_nus.h"











typedef struct ble_nus_s ble_nus_t;

 
typedef void (*ble_nus_data_handler_t) (ble_nus_t * p_nus, uint8_t * data, uint16_t length);






 
typedef struct
{
    ble_nus_data_handler_t   data_handler;             
} ble_nus_init_t;




 
typedef struct ble_nus_s
{
    uint8_t                  uuid_type;                
    uint16_t                 service_handle;           
    ble_gatts_char_handles_t tx_handles;               
    ble_gatts_char_handles_t rx_handles;               
    uint16_t                 conn_handle;              
    _Bool                     is_notification_enabled;  
    ble_nus_data_handler_t   data_handler;             
} ble_nus_t;











 
uint32_t ble_nus_init(ble_nus_t * p_nus, const ble_nus_init_t * p_nus_init);










 
void ble_nus_on_ble_evt(ble_nus_t * p_nus, ble_evt_t * p_ble_evt);















 
uint32_t ble_nus_send_string(ble_nus_t * p_nus, uint8_t * string, uint16_t length);



 
#line 40 "..\\main.c"
#line 1 "..\\..\\..\\..\\..\\Include\\boards.h"










 



#line 1 "..\\..\\..\\..\\..\\Include\\boards/pca10001.h"










 



#line 16 "..\\..\\..\\..\\..\\Include\\boards/pca10001.h"











































#line 74 "..\\..\\..\\..\\..\\Include\\boards/pca10001.h"




#line 84 "..\\..\\..\\..\\..\\Include\\boards/pca10001.h"








#line 107 "..\\..\\..\\..\\..\\Include\\boards/pca10001.h"



#line 21 "..\\..\\..\\..\\..\\Include\\boards.h"






#line 41 "..\\main.c"
#line 1 "..\\..\\..\\..\\..\\Include\\app_common\\app_scheduler.h"










 


































 




#line 52 "..\\..\\..\\..\\..\\Include\\app_common\\app_scheduler.h"
#line 53 "..\\..\\..\\..\\..\\Include\\app_common\\app_scheduler.h"










 


            
 
typedef void (*app_sched_event_handler_t)(void * p_event_data, uint16_t event_size);












 
#line 90 "..\\..\\..\\..\\..\\Include\\app_common\\app_scheduler.h"


















 
uint32_t app_sched_init(uint16_t max_event_size, uint16_t queue_size, void * p_evt_buffer);





 
void app_sched_execute(void);










 
uint32_t app_sched_event_put(void *                    p_event_data,
                             uint16_t                  event_size,
                             app_sched_event_handler_t handler);



 
#line 42 "..\\main.c"
#line 1 "..\\..\\..\\..\\..\\Include\\sd_common\\softdevice_handler.h"










 


















 




#line 1 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdlib.h"
 
 
 




 
 



 







 




  
 










  


 








#line 57 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdlib.h"


  
  typedef unsigned int size_t;










    



    typedef unsigned short wchar_t;  
#line 86 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdlib.h"

typedef struct div_t { int quot, rem; } div_t;
    
typedef struct ldiv_t { long int quot, rem; } ldiv_t;
    

typedef struct lldiv_t { __int64 quot, rem; } lldiv_t;
    


#line 107 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdlib.h"
   



 

   




 
#line 126 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdlib.h"
   


 
extern __declspec(__nothrow) int __aeabi_MB_CUR_MAX(void);

   




 

   




 




extern __declspec(__nothrow) double atof(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int atoi(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) long int atol(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) __int64 atoll(const char *  ) __attribute__((__nonnull__(1)));
   



 


extern __declspec(__nothrow) double strtod(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

















 

extern __declspec(__nothrow) float strtof(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) long double strtold(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

 

extern __declspec(__nothrow) long int strtol(const char * __restrict  ,
                        char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



























 
extern __declspec(__nothrow) unsigned long int strtoul(const char * __restrict  ,
                                       char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   


























 

 
extern __declspec(__nothrow) __int64 strtoll(const char * __restrict  ,
                               char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) unsigned __int64 strtoull(const char * __restrict  ,
                                         char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) int rand(void);
   







 
extern __declspec(__nothrow) void srand(unsigned int  );
   






 

struct _rand_state { int __x[57]; };
extern __declspec(__nothrow) int _rand_r(struct _rand_state *);
extern __declspec(__nothrow) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __declspec(__nothrow) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __declspec(__nothrow) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);
   


 

extern __declspec(__nothrow) void *calloc(size_t  , size_t  );
   



 
extern __declspec(__nothrow) void free(void *  );
   





 
extern __declspec(__nothrow) void *malloc(size_t  );
   



 
extern __declspec(__nothrow) void *realloc(void *  , size_t  );
   













 

extern __declspec(__nothrow) int posix_memalign(void **  , size_t  , size_t  );
   









 

typedef int (*__heapprt)(void *, char const *, ...);
extern __declspec(__nothrow) void __heapstats(int (*  )(void *  ,
                                           char const *  , ...),
                        void *  ) __attribute__((__nonnull__(1)));
   










 
extern __declspec(__nothrow) int __heapvalid(int (*  )(void *  ,
                                           char const *  , ...),
                       void *  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) __declspec(__noreturn) void abort(void);
   







 

extern __declspec(__nothrow) int atexit(void (*  )(void)) __attribute__((__nonnull__(1)));
   




 
#line 429 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdlib.h"


extern __declspec(__nothrow) __declspec(__noreturn) void exit(int  );
   












 

extern __declspec(__nothrow) __declspec(__noreturn) void _Exit(int  );
   







      

extern __declspec(__nothrow) char *getenv(const char *  ) __attribute__((__nonnull__(1)));
   









 

extern __declspec(__nothrow) int  system(const char *  );
   









 

extern  void *bsearch(const void *  , const void *  ,
              size_t  , size_t  ,
              int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
   












 
#line 517 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdlib.h"


extern  void qsort(void *  , size_t  , size_t  ,
           int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
   









 

#line 546 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdlib.h"

extern __declspec(__nothrow) __attribute__((const)) int abs(int  );
   



 

extern __declspec(__nothrow) __attribute__((const)) div_t div(int  , int  );
   









 
extern __declspec(__nothrow) __attribute__((const)) long int labs(long int  );
   



 




extern __declspec(__nothrow) __attribute__((const)) ldiv_t ldiv(long int  , long int  );
   











 







extern __declspec(__nothrow) __attribute__((const)) __int64 llabs(__int64  );
   



 




extern __declspec(__nothrow) __attribute__((const)) lldiv_t lldiv(__int64  , __int64  );
   











 
#line 627 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdlib.h"




 
typedef struct __sdiv32by16 { int quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned int quot, rem; } __udiv32by16;
    
typedef struct __sdiv64by32 { int rem, quot; } __sdiv64by32;

__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv32by16 __rt_sdiv32by16(
     int  ,
     short int  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __udiv32by16 __rt_udiv32by16(
     unsigned int  ,
     unsigned short  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv64by32 __rt_sdiv64by32(
     int  , unsigned int  ,
     int  );
   

 




 
extern __declspec(__nothrow) unsigned int __fp_status(unsigned int  , unsigned int  );
   







 























 
extern __declspec(__nothrow) int mblen(const char *  , size_t  );
   












 
extern __declspec(__nothrow) int mbtowc(wchar_t * __restrict  ,
                   const char * __restrict  , size_t  );
   















 
extern __declspec(__nothrow) int wctomb(char *  , wchar_t  );
   













 





 
extern __declspec(__nothrow) size_t mbstowcs(wchar_t * __restrict  ,
                      const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 
extern __declspec(__nothrow) size_t wcstombs(char * __restrict  ,
                      const wchar_t * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 

extern __declspec(__nothrow) void __use_realtime_heap(void);
extern __declspec(__nothrow) void __use_realtime_division(void);
extern __declspec(__nothrow) void __use_two_region_memory(void);
extern __declspec(__nothrow) void __use_no_heap(void);
extern __declspec(__nothrow) void __use_no_heap_region(void);

extern __declspec(__nothrow) char const *__C_library_version_string(void);
extern __declspec(__nothrow) int __C_library_version_number(void);











#line 885 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdlib.h"


 

#line 36 "..\\..\\..\\..\\..\\Include\\sd_common\\softdevice_handler.h"
#line 37 "..\\..\\..\\..\\..\\Include\\sd_common\\softdevice_handler.h"
#line 1 "..\\..\\..\\..\\..\\Include\\s110\\nrf_sdm.h"







 






 

 



#line 22 "..\\..\\..\\..\\..\\Include\\s110\\nrf_sdm.h"
#line 23 "..\\..\\..\\..\\..\\Include\\s110\\nrf_sdm.h"
#line 1 "..\\..\\..\\..\\..\\Include\\s110\\nrf_soc.h"






 
 






 




#line 21 "..\\..\\..\\..\\..\\Include\\s110\\nrf_soc.h"
#line 22 "..\\..\\..\\..\\..\\Include\\s110\\nrf_soc.h"
#line 23 "..\\..\\..\\..\\..\\Include\\s110\\nrf_soc.h"
#line 24 "..\\..\\..\\..\\..\\Include\\s110\\nrf_soc.h"
#line 25 "..\\..\\..\\..\\..\\Include\\s110\\nrf_soc.h"
#line 1 "..\\..\\..\\..\\..\\Include\\s110\\nrf_error_soc.h"







 
 







 

 



#line 24 "..\\..\\..\\..\\..\\Include\\s110\\nrf_error_soc.h"

 


 




 




 


 







 
#line 26 "..\\..\\..\\..\\..\\Include\\s110\\nrf_soc.h"


 

 



 


 




















 


 

 
enum NRF_SOC_SVCS
{
  SD_FLASH_PAGE_ERASE = (0x20),
  SD_FLASH_WRITE,
  SD_FLASH_PROTECT,
  SD_MUTEX_NEW = (0x23),
  SD_MUTEX_ACQUIRE,
  SD_MUTEX_RELEASE,
  SD_NVIC_ENABLEIRQ,
  SD_NVIC_DISABLEIRQ,
  SD_NVIC_GETPENDINGIRQ,
  SD_NVIC_SETPENDINGIRQ,
  SD_NVIC_CLEARPENDINGIRQ,
  SD_NVIC_SETPRIORITY,
  SD_NVIC_GETPRIORITY,
  SD_NVIC_SYSTEMRESET,
  SD_NVIC_CRITICAL_REGION_ENTER,
  SD_NVIC_CRITICAL_REGION_EXIT,
  SD_RAND_APPLICATION_POOL_CAPACITY,
  SD_RAND_APPLICATION_BYTES_AVAILABLE,
  SD_RAND_APPLICATION_GET_VECTOR,
  SD_POWER_MODE_SET,
  SD_POWER_SYSTEM_OFF,
  SD_POWER_RESET_REASON_GET,
  SD_POWER_RESET_REASON_CLR,
  SD_POWER_POF_ENABLE,
  SD_POWER_POF_THRESHOLD_SET,
  SD_POWER_RAMON_SET,
  SD_POWER_RAMON_CLR,
  SD_POWER_RAMON_GET,
  SD_POWER_GPREGRET_SET,
  SD_POWER_GPREGRET_CLR,
  SD_POWER_GPREGRET_GET,
  SD_POWER_DCDC_MODE_SET,
  SD_APP_EVT_WAIT,
  SD_CLOCK_HFCLK_REQUEST,
  SD_CLOCK_HFCLK_RELEASE,
  SD_CLOCK_HFCLK_IS_RUNNING,
  SD_PPI_CHANNEL_ENABLE_GET,
  SD_PPI_CHANNEL_ENABLE_SET,
  SD_PPI_CHANNEL_ENABLE_CLR,
  SD_PPI_CHANNEL_ASSIGN,
  SD_PPI_GROUP_TASK_ENABLE,
  SD_PPI_GROUP_TASK_DISABLE,
  SD_PPI_GROUP_ASSIGN,
  SD_PPI_GROUP_GET,
  SD_RADIO_NOTIFICATION_CFG_SET,
  SD_ECB_BLOCK_ENCRYPT,
  SD_RADIO_SESSION_OPEN,
  SD_RADIO_SESSION_CLOSE,
  SD_RADIO_REQUEST,
  SD_EVT_GET,
  SD_TEMP_GET,
  SVC_SOC_LAST
};

 
enum NRF_MUTEX_VALUES
{
  NRF_MUTEX_FREE,
  NRF_MUTEX_TAKEN
};

 
enum NRF_APP_PRIORITIES
{
  NRF_APP_PRIORITY_HIGH = 1,
  NRF_APP_PRIORITY_LOW = 3
};

 
enum NRF_POWER_MODES
{
  NRF_POWER_MODE_CONSTLAT,   
  NRF_POWER_MODE_LOWPWR      
};


 
enum NRF_POWER_THRESHOLDS
{
  NRF_POWER_THRESHOLD_V21,   
  NRF_POWER_THRESHOLD_V23,   
  NRF_POWER_THRESHOLD_V25,    
  NRF_POWER_THRESHOLD_V27    
};


 
enum NRF_POWER_DCDC_MODES
{
  NRF_POWER_DCDC_MODE_OFF,           
  NRF_POWER_DCDC_MODE_ON,            
  NRF_POWER_DCDC_MODE_AUTOMATIC      
};

 
enum NRF_RADIO_NOTIFICATION_DISTANCES
{
  NRF_RADIO_NOTIFICATION_DISTANCE_NONE = 0,  
  NRF_RADIO_NOTIFICATION_DISTANCE_800US,     
  NRF_RADIO_NOTIFICATION_DISTANCE_1740US,    
  NRF_RADIO_NOTIFICATION_DISTANCE_2680US,    
  NRF_RADIO_NOTIFICATION_DISTANCE_3620US,    
  NRF_RADIO_NOTIFICATION_DISTANCE_4560US,    
  NRF_RADIO_NOTIFICATION_DISTANCE_5500US     
};


 
enum NRF_RADIO_NOTIFICATION_TYPES
{
  NRF_RADIO_NOTIFICATION_TYPE_NONE = 0,         
  NRF_RADIO_NOTIFICATION_TYPE_INT_ON_ACTIVE,    
  NRF_RADIO_NOTIFICATION_TYPE_INT_ON_INACTIVE,  
  NRF_RADIO_NOTIFICATION_TYPE_INT_ON_BOTH,      
};

 
enum NRF_SOC_EVTS
{
  NRF_EVT_HFCLKSTARTED,                          
  NRF_EVT_POWER_FAILURE_WARNING,                 
  NRF_EVT_FLASH_OPERATION_SUCCESS,               
  NRF_EVT_FLASH_OPERATION_ERROR,                 
  NRF_EVT_RADIO_BLOCKED,                         
  NRF_EVT_RADIO_CANCELED,                        
  NRF_EVT_RADIO_SIGNAL_CALLBACK_INVALID_RETURN,  
  NRF_EVT_RADIO_SESSION_IDLE,                    
  NRF_EVT_RADIO_SESSION_CLOSED,                  
  NRF_EVT_NUMBER_OF_EVTS
};

 


 



 
typedef volatile uint8_t nrf_mutex_t;

 
typedef uint8_t nrf_app_irq_priority_t;

 
typedef uint8_t nrf_power_mode_t;

 
typedef uint8_t nrf_power_failure_threshold_t;

 
typedef uint32_t nrf_power_dcdc_mode_t;

 
typedef uint8_t nrf_radio_notification_distance_t;

 
typedef uint8_t nrf_radio_notification_type_t;

 
enum NRF_RADIO_CALLBACK_SIGNAL_TYPE
{
  NRF_RADIO_CALLBACK_SIGNAL_TYPE_START,             
  NRF_RADIO_CALLBACK_SIGNAL_TYPE_TIMER0,             
  NRF_RADIO_CALLBACK_SIGNAL_TYPE_RADIO,              
  NRF_RADIO_CALLBACK_SIGNAL_TYPE_EXTEND_FAILED,      
  NRF_RADIO_CALLBACK_SIGNAL_TYPE_EXTEND_SUCCEEDED    
};





 
enum NRF_RADIO_SIGNAL_CALLBACK_ACTION
{
  NRF_RADIO_SIGNAL_CALLBACK_ACTION_NONE,             
  NRF_RADIO_SIGNAL_CALLBACK_ACTION_EXTEND,           
  NRF_RADIO_SIGNAL_CALLBACK_ACTION_END,              
  NRF_RADIO_SIGNAL_CALLBACK_ACTION_REQUEST_AND_END   
};

 
enum NRF_RADIO_HFCLK_CFG
{
  NRF_RADIO_HFCLK_CFG_DEFAULT,                       
  NRF_RADIO_HFCLK_CFG_FORCE_XTAL,                    
};

 
enum NRF_RADIO_PRIORITY
{
  NRF_RADIO_PRIORITY_HIGH,                           
  NRF_RADIO_PRIORITY_NORMAL,                         
};

 
enum NRF_RADIO_REQUEST_TYPE
{
  NRF_RADIO_REQ_TYPE_EARLIEST,                       
  NRF_RADIO_REQ_TYPE_NORMAL                          
};

 
typedef struct
{
  uint8_t       hfclk;                               
  uint8_t       priority;                            
  uint32_t      length_us;                           
  uint32_t      timeout_us;                          
} nrf_radio_request_earliest_t;

 
typedef struct
{
  uint8_t       hfclk;                               
  uint8_t       priority;                            
  uint32_t      distance_us;                         
  uint32_t      length_us;                           
} nrf_radio_request_normal_t;

 
typedef struct
{
  uint8_t                         request_type;      
  union
  {
    nrf_radio_request_earliest_t  earliest;          
    nrf_radio_request_normal_t    normal;            
  } params;
} nrf_radio_request_t;

 
typedef struct
{
  uint8_t               callback_action;             
  union
  {
    struct
    {
      nrf_radio_request_t * p_next;                  
    } request;                                       
    struct
    {
      uint32_t              length_us;               
    } extend;                                        
  } params;
} nrf_radio_signal_callback_return_param_t;












 
typedef nrf_radio_signal_callback_return_param_t * (*nrf_radio_signal_callback_t) (uint8_t signal_type);

 
typedef struct
{
  uint8_t key[(16)];                   
  uint8_t cleartext[(16)];       
  uint8_t ciphertext[((16))];     
} nrf_ecb_hal_data_t;

 


 






 
uint32_t __svc(SD_MUTEX_NEW) sd_mutex_new(nrf_mutex_t * p_mutex);







 
uint32_t __svc(SD_MUTEX_ACQUIRE) sd_mutex_acquire(nrf_mutex_t * p_mutex);






 
uint32_t __svc(SD_MUTEX_RELEASE) sd_mutex_release(nrf_mutex_t * p_mutex);











 
uint32_t __svc(SD_NVIC_ENABLEIRQ) sd_nvic_EnableIRQ(IRQn_Type IRQn);










 
uint32_t __svc(SD_NVIC_DISABLEIRQ) sd_nvic_DisableIRQ(IRQn_Type IRQn);











 
uint32_t __svc(SD_NVIC_GETPENDINGIRQ) sd_nvic_GetPendingIRQ(IRQn_Type IRQn, uint32_t * p_pending_irq);










 
uint32_t __svc(SD_NVIC_SETPENDINGIRQ) sd_nvic_SetPendingIRQ(IRQn_Type IRQn);










 
uint32_t __svc(SD_NVIC_CLEARPENDINGIRQ) sd_nvic_ClearPendingIRQ(IRQn_Type IRQn);













 
uint32_t __svc(SD_NVIC_SETPRIORITY) sd_nvic_SetPriority(IRQn_Type IRQn, nrf_app_irq_priority_t priority);











 
uint32_t __svc(SD_NVIC_GETPRIORITY) sd_nvic_GetPriority(IRQn_Type IRQn, nrf_app_irq_priority_t * p_priority);





 
uint32_t __svc(SD_NVIC_SYSTEMRESET) sd_nvic_SystemReset(void);










 
uint32_t __svc(SD_NVIC_CRITICAL_REGION_ENTER) sd_nvic_critical_region_enter(uint8_t * p_is_nested_critical_region);









 
uint32_t __svc(SD_NVIC_CRITICAL_REGION_EXIT) sd_nvic_critical_region_exit(uint8_t is_nested_critical_region);






 
uint32_t __svc(SD_RAND_APPLICATION_POOL_CAPACITY) sd_rand_application_pool_capacity_get(uint8_t * p_pool_capacity);






 
uint32_t __svc(SD_RAND_APPLICATION_BYTES_AVAILABLE) sd_rand_application_bytes_available_get(uint8_t * p_bytes_available);








 
uint32_t __svc(SD_RAND_APPLICATION_GET_VECTOR) sd_rand_application_vector_get(uint8_t * p_buff, uint8_t length);






 
uint32_t __svc(SD_POWER_RESET_REASON_GET) sd_power_reset_reason_get(uint32_t * p_reset_reason);






 
uint32_t __svc(SD_POWER_RESET_REASON_CLR) sd_power_reset_reason_clr(uint32_t reset_reason_clr_msk);







 
uint32_t __svc(SD_POWER_MODE_SET) sd_power_mode_set(nrf_power_mode_t power_mode);




 
uint32_t __svc(SD_POWER_SYSTEM_OFF) sd_power_system_off(void);









 
uint32_t __svc(SD_POWER_POF_ENABLE) sd_power_pof_enable(uint8_t pof_enable);







 
uint32_t __svc(SD_POWER_POF_THRESHOLD_SET) sd_power_pof_threshold_set(nrf_power_failure_threshold_t threshold);






 
uint32_t __svc(SD_POWER_RAMON_SET) sd_power_ramon_set(uint32_t ramon);






 
uint32_t __svc(SD_POWER_RAMON_CLR) sd_power_ramon_clr(uint32_t ramon);






 
uint32_t __svc(SD_POWER_RAMON_GET) sd_power_ramon_get(uint32_t * p_ramon);






 
uint32_t __svc(SD_POWER_GPREGRET_SET) sd_power_gpregret_set(uint32_t gpregret_msk);






 
uint32_t __svc(SD_POWER_GPREGRET_CLR) sd_power_gpregret_clr(uint32_t gpregret_msk);






 
uint32_t __svc(SD_POWER_GPREGRET_GET) sd_power_gpregret_get(uint32_t *p_gpregret);











 
uint32_t __svc(SD_POWER_DCDC_MODE_SET) sd_power_dcdc_mode_set(nrf_power_dcdc_mode_t dcdc_mode);










 
uint32_t __svc(SD_CLOCK_HFCLK_REQUEST) sd_clock_hfclk_request(void);









 
uint32_t __svc(SD_CLOCK_HFCLK_RELEASE) sd_clock_hfclk_release(void);









 
uint32_t __svc(SD_CLOCK_HFCLK_IS_RUNNING) sd_clock_hfclk_is_running(uint32_t * p_is_running);























 
uint32_t __svc(SD_APP_EVT_WAIT) sd_app_evt_wait(void);






 
uint32_t __svc(SD_PPI_CHANNEL_ENABLE_GET) sd_ppi_channel_enable_get(uint32_t * p_channel_enable);






 
uint32_t __svc(SD_PPI_CHANNEL_ENABLE_SET) sd_ppi_channel_enable_set(uint32_t channel_enable_set_msk);






 
uint32_t __svc(SD_PPI_CHANNEL_ENABLE_CLR) sd_ppi_channel_enable_clr(uint32_t channel_enable_clr_msk);









 
uint32_t __svc(SD_PPI_CHANNEL_ASSIGN) sd_ppi_channel_assign(uint8_t channel_num, const volatile void * evt_endpoint, const volatile void * task_endpoint);







 
uint32_t __svc(SD_PPI_GROUP_TASK_ENABLE) sd_ppi_group_task_enable(uint8_t group_num);







 
uint32_t __svc(SD_PPI_GROUP_TASK_DISABLE) sd_ppi_group_task_disable(uint8_t group_num);








 
uint32_t __svc(SD_PPI_GROUP_ASSIGN) sd_ppi_group_assign(uint8_t group_num, uint32_t channel_msk);








 
uint32_t __svc(SD_PPI_GROUP_GET) sd_ppi_group_get(uint8_t group_num, uint32_t * p_channel_msk);























 
uint32_t __svc(SD_RADIO_NOTIFICATION_CFG_SET) sd_radio_notification_cfg_set(nrf_radio_notification_type_t type, nrf_radio_notification_distance_t distance);









 
uint32_t __svc(SD_ECB_BLOCK_ENCRYPT) sd_ecb_block_encrypt(nrf_ecb_hal_data_t * p_ecb_data);









 
uint32_t __svc(SD_EVT_GET) sd_evt_get(uint32_t * p_evt_id);











 
uint32_t __svc(SD_TEMP_GET) sd_temp_get(int32_t * p_temp);


























 
uint32_t __svc(SD_FLASH_WRITE) sd_flash_write(uint32_t * const p_dst, uint32_t const * const p_src, uint32_t size);
























 
uint32_t __svc(SD_FLASH_PAGE_ERASE) sd_flash_page_erase(uint32_t page_number);













 
uint32_t __svc(SD_FLASH_PROTECT) sd_flash_protect(uint32_t protenset0, uint32_t protenset1);




















 
 uint32_t __svc(SD_RADIO_SESSION_OPEN) sd_radio_session_open(nrf_radio_signal_callback_t p_radio_signal_callback);











 
 uint32_t __svc(SD_RADIO_SESSION_CLOSE) sd_radio_session_close(void);

 





























 
 uint32_t __svc(SD_RADIO_REQUEST) sd_radio_request(nrf_radio_request_t * p_request );

 



 
#line 24 "..\\..\\..\\..\\..\\Include\\s110\\nrf_sdm.h"
#line 1 "..\\..\\..\\..\\..\\Include\\s110\\nrf_error_sdm.h"







 
 






 

 



#line 23 "..\\..\\..\\..\\..\\Include\\s110\\nrf_error_sdm.h"










 
#line 25 "..\\..\\..\\..\\..\\Include\\s110\\nrf_sdm.h"


 

 


 


 

 
enum NRF_SD_SVCS
{
  SD_SOFTDEVICE_ENABLE = (0x10),  
  SD_SOFTDEVICE_DISABLE,                
  SD_SOFTDEVICE_IS_ENABLED,             
  SD_SOFTDEVICE_VECTOR_TABLE_BASE_SET,  
  SVC_SDM_LAST                          
};

 
enum NRF_CLOCK_LFCLKSRCS
{
  NRF_CLOCK_LFCLKSRC_SYNTH_250_PPM,                        
  NRF_CLOCK_LFCLKSRC_XTAL_500_PPM,                         
  NRF_CLOCK_LFCLKSRC_XTAL_250_PPM,                         
  NRF_CLOCK_LFCLKSRC_XTAL_150_PPM,                         
  NRF_CLOCK_LFCLKSRC_XTAL_100_PPM,                         
  NRF_CLOCK_LFCLKSRC_XTAL_75_PPM,                          
  NRF_CLOCK_LFCLKSRC_XTAL_50_PPM,                          
  NRF_CLOCK_LFCLKSRC_XTAL_30_PPM,                          
  NRF_CLOCK_LFCLKSRC_XTAL_20_PPM,                          
  NRF_CLOCK_LFCLKSRC_RC_250_PPM_250MS_CALIBRATION,         
  NRF_CLOCK_LFCLKSRC_RC_250_PPM_500MS_CALIBRATION,         
  NRF_CLOCK_LFCLKSRC_RC_250_PPM_1000MS_CALIBRATION,        
  NRF_CLOCK_LFCLKSRC_RC_250_PPM_2000MS_CALIBRATION,        
  NRF_CLOCK_LFCLKSRC_RC_250_PPM_4000MS_CALIBRATION,        
  NRF_CLOCK_LFCLKSRC_RC_250_PPM_8000MS_CALIBRATION,        
  NRF_CLOCK_LFCLKSRC_RC_250_PPM_TEMP_1000MS_CALIBRATION,   
  NRF_CLOCK_LFCLKSRC_RC_250_PPM_TEMP_2000MS_CALIBRATION,   
  NRF_CLOCK_LFCLKSRC_RC_250_PPM_TEMP_4000MS_CALIBRATION,   
  NRF_CLOCK_LFCLKSRC_RC_250_PPM_TEMP_8000MS_CALIBRATION,   
  NRF_CLOCK_LFCLKSRC_RC_250_PPM_TEMP_16000MS_CALIBRATION,  
};

 


 

 
typedef uint32_t nrf_clock_lfclksrc_t;













 
typedef void (*softdevice_assertion_handler_t)(uint32_t pc, uint16_t line_number, const uint8_t * p_file_name);

 


 


























 
uint32_t __svc(SD_SOFTDEVICE_ENABLE) sd_softdevice_enable(nrf_clock_lfclksrc_t clock_source, softdevice_assertion_handler_t assertion_handler);













 
uint32_t __svc(SD_SOFTDEVICE_DISABLE) sd_softdevice_disable(void);






 
uint32_t __svc(SD_SOFTDEVICE_IS_ENABLED) sd_softdevice_is_enabled(uint8_t * p_softdevice_enabled);








 
uint32_t __svc(SD_SOFTDEVICE_VECTOR_TABLE_BASE_SET) sd_softdevice_vector_table_base_set(uint32_t address); 

 





 
#line 38 "..\\..\\..\\..\\..\\Include\\sd_common\\softdevice_handler.h"
#line 39 "..\\..\\..\\..\\..\\Include\\sd_common\\softdevice_handler.h"
#line 40 "..\\..\\..\\..\\..\\Include\\sd_common\\softdevice_handler.h"
#line 41 "..\\..\\..\\..\\..\\Include\\sd_common\\softdevice_handler.h"
#line 1 "..\\..\\..\\..\\..\\Include\\sd_common\\ble_stack_handler_types.h"










 








 






#line 28 "..\\..\\..\\..\\..\\Include\\sd_common\\ble_stack_handler_types.h"
#line 29 "..\\..\\..\\..\\..\\Include\\sd_common\\ble_stack_handler_types.h"
#line 30 "..\\..\\..\\..\\..\\Include\\sd_common\\ble_stack_handler_types.h"
#line 31 "..\\..\\..\\..\\..\\Include\\sd_common\\ble_stack_handler_types.h"
#line 32 "..\\..\\..\\..\\..\\Include\\sd_common\\ble_stack_handler_types.h"
#line 33 "..\\..\\..\\..\\..\\Include\\sd_common\\ble_stack_handler_types.h"




 
typedef void (*ble_evt_handler_t) (ble_evt_t * p_ble_evt);














 
uint32_t softdevice_ble_evt_handler_set(ble_evt_handler_t ble_evt_handler);

#line 62 "..\\..\\..\\..\\..\\Include\\sd_common\\ble_stack_handler_types.h"



 
#line 42 "..\\..\\..\\..\\..\\Include\\sd_common\\softdevice_handler.h"
#line 1 "..\\..\\..\\..\\..\\Include\\sd_common\\ant_stack_handler_types.h"










 








 




#line 60 "..\\..\\..\\..\\..\\Include\\sd_common\\ant_stack_handler_types.h"









 
#line 43 "..\\..\\..\\..\\..\\Include\\sd_common\\softdevice_handler.h"




 
typedef uint32_t (*softdevice_evt_schedule_func_t) (void);

 
typedef void (*sys_evt_handler_t) (uint32_t evt_id);
















 
   
#line 87 "..\\..\\..\\..\\..\\Include\\sd_common\\softdevice_handler.h"




























 
uint32_t softdevice_handler_init(nrf_clock_lfclksrc_t              clock_source,
                                 void *                            p_evt_buffer,
                                 uint16_t                          evt_buffer_size,
                                 softdevice_evt_schedule_func_t    evt_schedule_func);






 
uint32_t softdevice_handler_sd_disable(void);















 
uint32_t softdevice_sys_evt_handler_set(sys_evt_handler_t sys_evt_handler);



 
void intern_softdevice_events_execute(void);

static __inline void softdevice_evt_get(void * p_event_data, uint16_t event_size)
{
    do { const _Bool LOCAL_BOOLEAN_VALUE = (event_size == 0); if (!LOCAL_BOOLEAN_VALUE) { do { app_error_handler((0), 153, (uint8_t*) "..\\..\\..\\..\\..\\Include\\sd_common\\softdevice_handler.h"); } while (0); } } while (0);
    intern_softdevice_events_execute();
}

static __inline uint32_t softdevice_evt_schedule(void)
{
    return app_sched_event_put(0, 0, softdevice_evt_get);
}
 



 
#line 43 "..\\main.c"
#line 1 "..\\..\\..\\..\\..\\Include\\app_common\\app_timer.h"










 



























 




#line 45 "..\\..\\..\\..\\..\\Include\\app_common\\app_timer.h"
#line 46 "..\\..\\..\\..\\..\\Include\\app_common\\app_timer.h"
#line 1 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdio.h"
 
 
 





 






 







 




  
 








#line 47 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdio.h"


  
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

#line 138 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






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
   







 




    extern __declspec(__nothrow) int (getchar)(void);

   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 




    extern __declspec(__nothrow) int (putchar)(int  );

   



 
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
    





 











#line 957 "D:\\Keil_v5\\ARM\\ARMCC\\bin\\..\\include\\stdio.h"



 

#line 47 "..\\..\\..\\..\\..\\Include\\app_common\\app_timer.h"
#line 48 "..\\..\\..\\..\\..\\Include\\app_common\\app_timer.h"
#line 49 "..\\..\\..\\..\\..\\Include\\app_common\\app_timer.h"
#line 50 "..\\..\\..\\..\\..\\Include\\app_common\\app_timer.h"
#line 51 "..\\..\\..\\..\\..\\Include\\app_common\\app_timer.h"


















 
#line 80 "..\\..\\..\\..\\..\\Include\\app_common\\app_timer.h"


















 



 
typedef uint32_t app_timer_id_t;

 
typedef void (*app_timer_timeout_handler_t)(void * p_context);

 
typedef uint32_t (*app_timer_evt_schedule_func_t) (app_timer_timeout_handler_t timeout_handler,
                                                   void *                      p_context);

 
typedef enum
{
    APP_TIMER_MODE_SINGLE_SHOT,                  
    APP_TIMER_MODE_REPEATED                      
} app_timer_mode_t;























 
   
#line 156 "..\\..\\..\\..\\..\\Include\\app_common\\app_timer.h"
























 
uint32_t app_timer_init(uint32_t                      prescaler, 
                        uint8_t                       max_timers,
                        uint8_t                       op_queues_size,
                        void *                        p_buffer,
                        app_timer_evt_schedule_func_t evt_schedule_func);















 
uint32_t app_timer_create(app_timer_id_t *            p_timer_id,
                          app_timer_mode_t            mode,
                          app_timer_timeout_handler_t timeout_handler);




















 
uint32_t app_timer_start(app_timer_id_t timer_id, uint32_t timeout_ticks, void * p_context);










 
uint32_t app_timer_stop(app_timer_id_t timer_id);






 
uint32_t app_timer_stop_all(void);






 
uint32_t app_timer_cnt_get(uint32_t * p_ticks);








 
uint32_t app_timer_cnt_diff_compute(uint32_t   ticks_to,
                                    uint32_t   ticks_from,
                                    uint32_t * p_ticks_diff);




 
typedef struct
{
    app_timer_timeout_handler_t timeout_handler;
    void *                      p_context;
} app_timer_event_t;

static __inline void app_timer_evt_get(void * p_event_data, uint16_t event_size)
{
    app_timer_event_t * p_timer_event = (app_timer_event_t *)p_event_data;
    
    do { const _Bool LOCAL_BOOLEAN_VALUE = (event_size == sizeof(app_timer_event_t)); if (!LOCAL_BOOLEAN_VALUE) { do { app_error_handler((0), 282, (uint8_t*) "..\\..\\..\\..\\..\\Include\\app_common\\app_timer.h"); } while (0); } } while (0);
    p_timer_event->timeout_handler(p_timer_event->p_context);
}

static __inline uint32_t app_timer_evt_schedule(app_timer_timeout_handler_t timeout_handler,
                                                void *                      p_context)
{
    app_timer_event_t timer_event;

    timer_event.timeout_handler = timeout_handler;
    timer_event.p_context       = p_context;
    
    return app_sched_event_put(&timer_event, sizeof(timer_event), app_timer_evt_get);
}
 



 
#line 44 "..\\main.c"
#line 1 "..\\..\\..\\..\\..\\Include\\ble\\ble_error_log.h"










 











 



#line 28 "..\\..\\..\\..\\..\\Include\\ble\\ble_error_log.h"
#line 29 "..\\..\\..\\..\\..\\Include\\ble\\ble_error_log.h"
#line 1 "..\\..\\..\\..\\..\\Include\\ble\\ble_flash.h"










 
















 




#line 34 "..\\..\\..\\..\\..\\Include\\ble\\ble_flash.h"
#line 35 "..\\..\\..\\..\\..\\Include\\ble\\ble_flash.h"
#line 36 "..\\..\\..\\..\\..\\Include\\ble\\ble_flash.h"











 















 
uint32_t ble_flash_page_write(uint8_t page_num, uint32_t * p_in_array, uint8_t word_count);










 
uint32_t ble_flash_page_read(uint8_t page_num, uint32_t * p_out_array, uint8_t * p_word_count);








 
uint32_t ble_flash_page_erase(uint8_t page_num);









 
uint32_t ble_flash_word_write(uint32_t * p_address, uint32_t value);










 
uint32_t ble_flash_block_write(uint32_t * p_address, uint32_t * p_in_array, uint16_t word_count);







 
uint32_t ble_flash_page_addr(uint8_t page_num, uint32_t ** pp_page_addr);








 
uint16_t ble_flash_crc16_compute(uint8_t * p_data, uint16_t size, uint16_t * p_crc);








 
void ble_flash_on_radio_active_evt(_Bool radio_active);



 
#line 30 "..\\..\\..\\..\\..\\Include\\ble\\ble_error_log.h"









 
typedef struct
{
    uint16_t                  failure;                            
    uint16_t                  line_number;                        
    uint32_t                  err_code;                           
    uint8_t                   message[128];      
    uint32_t                  stack_info[256 / 4];  
} ble_error_log_data_t;















 
uint32_t ble_error_log_write(uint32_t err_code, const uint8_t * p_message, uint16_t line_number);




 
#line 45 "..\\main.c"
#line 1 "..\\..\\..\\..\\..\\Include\\app_common\\app_gpiote.h"










 


























 




#line 44 "..\\..\\..\\..\\..\\Include\\app_common\\app_gpiote.h"
#line 45 "..\\..\\..\\..\\..\\Include\\app_common\\app_gpiote.h"
#line 46 "..\\..\\..\\..\\..\\Include\\app_common\\app_gpiote.h"
#line 47 "..\\..\\..\\..\\..\\Include\\app_common\\app_gpiote.h"
#line 48 "..\\..\\..\\..\\..\\Include\\app_common\\app_gpiote.h"









 


typedef uint8_t app_gpiote_user_id_t;

 
typedef void (*app_gpiote_event_handler_t)(uint32_t event_pins_low_to_high,
                                           uint32_t event_pins_high_to_low);

 
typedef void (*app_gpiote_input_event_handler_t)(void);










 
   
#line 87 "..\\..\\..\\..\\..\\Include\\app_common\\app_gpiote.h"















 
uint32_t app_gpiote_init(uint8_t max_users, void * p_buffer);

















 
uint32_t app_gpiote_user_register(app_gpiote_user_id_t *     p_user_id,
                                  uint32_t                   pins_low_to_high_mask,
                                  uint32_t                   pins_high_to_low_mask,
                                  app_gpiote_event_handler_t event_handler);









 
uint32_t app_gpiote_user_enable(app_gpiote_user_id_t user_id);









 
uint32_t app_gpiote_user_disable(app_gpiote_user_id_t user_id);












 
uint32_t app_gpiote_pins_state_get(app_gpiote_user_id_t user_id, uint32_t * p_pins);











 
uint32_t app_gpiote_input_event_handler_register(const uint8_t channel,
                                                 const uint32_t pin,
                                                 const uint32_t polarity,
                                                 app_gpiote_input_event_handler_t event_handler);





 
uint32_t app_gpiote_input_event_handler_unregister(const uint8_t channel);







 
uint32_t app_gpiote_end_irq_event_handler_register(app_gpiote_input_event_handler_t event_handler);





 
uint32_t app_gpiote_end_irq_event_handler_unregister(void);





 
uint32_t app_gpiote_enable_interrupts(void);





 
uint32_t app_gpiote_disable_interrupts(void);




 
#line 46 "..\\main.c"
#line 1 "..\\..\\..\\..\\..\\Include\\app_common\\app_button.h"










 
























 




#line 42 "..\\..\\..\\..\\..\\Include\\app_common\\app_button.h"
#line 43 "..\\..\\..\\..\\..\\Include\\app_common\\app_button.h"
#line 44 "..\\..\\..\\..\\..\\Include\\app_common\\app_button.h"
#line 45 "..\\..\\..\\..\\..\\Include\\app_common\\app_button.h"
#line 46 "..\\..\\..\\..\\..\\Include\\app_common\\app_button.h"
#line 47 "..\\..\\..\\..\\..\\Include\\app_common\\app_button.h"







 
typedef void (*app_button_handler_t)(uint8_t pin_no, uint8_t button_action);

 
typedef uint32_t (*app_button_evt_schedule_func_t) (app_button_handler_t button_handler,
                                                    uint8_t              pin_no,
                                                    uint8_t              button_action);

 
typedef struct
{
    uint8_t              pin_no;            
    uint8_t              active_state;      
    nrf_gpio_pin_pull_t  pull_cfg;          
    app_button_handler_t button_handler;    
} app_button_cfg_t;

 
typedef struct
{
    uint32_t high_to_low;    
    uint32_t low_to_high;    
} pin_transition_t;













 
   
#line 101 "..\\..\\..\\..\\..\\Include\\app_common\\app_button.h"
    



















 
uint32_t app_button_init(app_button_cfg_t *             p_buttons,
                         uint8_t                        button_count,
                         uint32_t                       detection_delay,
                         app_button_evt_schedule_func_t evt_schedule_func);






 
uint32_t app_button_enable(void);






 
uint32_t app_button_disable(void);








 
uint32_t app_button_is_pushed(uint8_t pin_no, _Bool * p_is_pushed);




 
typedef struct
{
    app_button_handler_t button_handler;
    uint8_t              pin_no;
    uint8_t              button_action;
} app_button_event_t;

static __inline void app_button_evt_get(void * p_event_data, uint16_t event_size)
{
    app_button_event_t * p_buttons_event = (app_button_event_t *)p_event_data;
    
    do { const _Bool LOCAL_BOOLEAN_VALUE = (event_size == sizeof(app_button_event_t)); if (!LOCAL_BOOLEAN_VALUE) { do { app_error_handler((0), 168, (uint8_t*) "..\\..\\..\\..\\..\\Include\\app_common\\app_button.h"); } while (0); } } while (0);
    p_buttons_event->button_handler(p_buttons_event->pin_no, p_buttons_event->button_action);
}

static __inline uint32_t app_button_evt_schedule(app_button_handler_t button_handler,
                                                 uint8_t              pin_no,
                                                 uint8_t              button_action)
{
    app_button_event_t buttons_event;
    
    buttons_event.button_handler = button_handler;
    buttons_event.pin_no         = pin_no;
    buttons_event.button_action  = button_action;
    
    return app_sched_event_put(&buttons_event, sizeof(buttons_event), app_button_evt_get);
}
 



 
#line 47 "..\\main.c"
#line 1 "..\\..\\..\\..\\..\\Include\\ble\\ble_debug_assert_handler.h"










 












 
 



#line 30 "..\\..\\..\\..\\..\\Include\\ble\\ble_debug_assert_handler.h"
 














 
void ble_debug_assert_handler(uint32_t error_code, uint32_t line_num, const uint8_t * p_file_name);

#line 48 "..\\main.c"
#line 1 "..\\..\\..\\..\\..\\Include\\app_common\\pstorage.h"










 











 




#line 1 "..\\pstorage_platform.h"










 

  




 



#line 23 "..\\pstorage_platform.h"






















 
typedef uint32_t pstorage_block_t;

typedef struct
{
    uint32_t            module_id;       
    pstorage_block_t    block_id;        
} pstorage_handle_t;

typedef uint16_t pstorage_size_t;       

 
void pstorage_sys_event_handler (uint32_t sys_evt);



 
 
#line 29 "..\\..\\..\\..\\..\\Include\\app_common\\pstorage.h"











 






 






 




















 
typedef void (*pstorage_ntf_cb_t)(pstorage_handle_t *  p_handle,
                                  uint8_t              op_code,
                                  uint32_t             result,
                                  uint8_t *            p_data,
                                  uint32_t             data_len);


typedef struct
{
    pstorage_ntf_cb_t cb;              
    pstorage_size_t   block_size;     




 
    pstorage_size_t   block_count;     
} pstorage_module_param_t;

 









 






 
uint32_t pstorage_init(void);























 
uint32_t pstorage_register(pstorage_module_param_t * p_module_param,
                           pstorage_handle_t *       p_block_id);
























 
uint32_t pstorage_block_identifier_get(pstorage_handle_t * p_base_id,
                                       pstorage_size_t     block_num,
                                       pstorage_handle_t * p_block_id);

























 
uint32_t pstorage_store(pstorage_handle_t * p_dest,
                        uint8_t *           p_src,
                        pstorage_size_t     size,
                        pstorage_size_t     offset);
























 
uint32_t pstorage_update(pstorage_handle_t * p_dest,
                         uint8_t *           p_src,
                         pstorage_size_t     size,
                         pstorage_size_t     offset);



















 
uint32_t pstorage_load(uint8_t *           p_dest,
                       pstorage_handle_t * p_src,
                       pstorage_size_t     size,
                       pstorage_size_t     offset);
























 
uint32_t pstorage_clear(pstorage_handle_t * p_base_id, pstorage_size_t size);










 
uint32_t pstorage_access_status_get(uint32_t * p_count);

#line 367 "..\\..\\..\\..\\..\\Include\\app_common\\pstorage.h"

 
 



#line 49 "..\\main.c"





















#line 77 "..\\main.c"





#line 89 "..\\main.c"



static ble_gap_sec_params_t             m_sec_params;                                
static uint16_t                         m_conn_handle = 0xFFFF;     







void pstorage_sys_event_handler (uint32_t p_evt);









 
void app_error_handler(uint32_t error_code, uint32_t line_num, const uint8_t * p_file_name)
{
    

    
    
    
    
    
    
    
    ble_debug_assert_handler(error_code, line_num, p_file_name);

    
    NVIC_SystemReset();
}












 
void assert_nrf_callback(uint16_t line_num, const uint8_t * p_file_name)
{
    app_error_handler(0xDEADBEEF, line_num, p_file_name);
}








 






 





 
static void leds_init(void)
{
    nrf_gpio_cfg_output(18);
    nrf_gpio_cfg_output(19);
    

    
}





 
static void timers_init(void)
{
    
    do { static uint32_t APP_TIMER_BUF[((((( (((2)) * 40) + ( 3 * (8 + (((4) + 1) + 1) * 24) ) )) - 1) / (sizeof(uint32_t))) + 1)]; uint32_t ERR_CODE = app_timer_init((0), (2), (4) + 1, APP_TIMER_BUF, (1) ? app_timer_evt_schedule : 0); do { const uint32_t LOCAL_ERR_CODE = (ERR_CODE); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 184, (uint8_t*) "..\\main.c"); } while (0); } } while (0); } while (0);

    




 
}






 
static void gap_params_init(void)
{
    uint32_t                err_code;
    ble_gap_conn_params_t   gap_conn_params;
    ble_gap_conn_sec_mode_t sec_mode;

    do {(&sec_mode)->sm = 1; (&sec_mode)->lv = 1;} while(0); 

    err_code = sd_ble_gap_device_name_set(&sec_mode,
                                          (const uint8_t *)"Background Recording",
                                          strlen("Background Recording"));
    do { const uint32_t LOCAL_ERR_CODE = (err_code); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 211, (uint8_t*) "..\\main.c"); } while (0); } } while (0);

     
    err_code = sd_ble_gap_appearance_set(0);
    do { const uint32_t LOCAL_ERR_CODE = (err_code); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 215, (uint8_t*) "..\\main.c"); } while (0); } } while (0); 
																					
		 
    memset(&gap_conn_params, 0, sizeof(gap_conn_params));

    gap_conn_params.min_conn_interval = (((500) * 1000) / (UNIT_1_25_MS));
    gap_conn_params.max_conn_interval = (((1000) * 1000) / (UNIT_1_25_MS));
    gap_conn_params.slave_latency     = 0;
    gap_conn_params.conn_sup_timeout  = (((4000) * 1000) / (UNIT_10_MS));
		
    err_code = sd_ble_gap_ppcp_set(&gap_conn_params);
    do { const uint32_t LOCAL_ERR_CODE = (err_code); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 226, (uint8_t*) "..\\main.c"); } while (0); } } while (0);
}






 
static void advertising_init(void)
{
    uint32_t      err_code;
    ble_advdata_t advdata;
	
		
 
	
    uint8_t       flags = ((0x01) | (0x04));

    
    ble_uuid_t adv_uuids[] = 
		{
			{0x1802, 0x01},
			{0x180F, 0x01},
			{0x180A, 0x01},
			{0x0001, 0x01}
			
		};

    
    memset(&advdata, 0, sizeof(advdata));

    advdata.name_type               = BLE_ADVDATA_FULL_NAME;
    advdata.include_appearance      = 1;
    advdata.flags.size              = sizeof(flags);
    advdata.flags.p_data            = &flags;
    advdata.uuids_complete.uuid_cnt = sizeof(adv_uuids) / sizeof(adv_uuids[0]);
    advdata.uuids_complete.p_uuids  = adv_uuids;

    err_code = ble_advdata_set(&advdata, 0);
    do { const uint32_t LOCAL_ERR_CODE = (err_code); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 266, (uint8_t*) "..\\main.c"); } while (0); } } while (0);
}



 
static void services_init(void)
{
    
}



 
static void sec_params_init(void)
{
    m_sec_params.timeout      = 30;
    m_sec_params.bond         = 1;
    m_sec_params.mitm         = 0;
    m_sec_params.io_caps      = 0x03;
    m_sec_params.oob          = 0;
    m_sec_params.min_key_size = 7;
    m_sec_params.max_key_size = 16;
}











 
static void on_conn_params_evt(ble_conn_params_evt_t * p_evt)
{
    uint32_t err_code;

    if(p_evt->evt_type == BLE_CONN_PARAMS_EVT_FAILED)
    {
        err_code = sd_ble_gap_disconnect(m_conn_handle, 0x3B);
        do { const uint32_t LOCAL_ERR_CODE = (err_code); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 309, (uint8_t*) "..\\main.c"); } while (0); } } while (0);
    }
}





 
static void conn_params_error_handler(uint32_t nrf_error)
{
    do { app_error_handler((nrf_error), 320, (uint8_t*) "..\\main.c"); } while (0);
}



 
static void conn_params_init(void)
{
    uint32_t               err_code;
    ble_conn_params_init_t cp_init;

    memset(&cp_init, 0, sizeof(cp_init));

    cp_init.p_conn_params                  = 0;
    cp_init.first_conn_params_update_delay = ((uint32_t)((((5000) * (uint64_t)32768) + ((((0) + 1) * 1000) / 2)) / (((0) + 1) * 1000)));
    cp_init.next_conn_params_update_delay  = ((uint32_t)((((30000) * (uint64_t)32768) + ((((0) + 1) * 1000) / 2)) / (((0) + 1) * 1000)));
    cp_init.max_conn_params_update_count   = 3;
    cp_init.start_on_notify_cccd_handle    = 0x0000;
    cp_init.disconnect_on_fail             = 0;
    cp_init.evt_handler                    = on_conn_params_evt;
    cp_init.error_handler                  = conn_params_error_handler;

    err_code = ble_conn_params_init(&cp_init);
    do { const uint32_t LOCAL_ERR_CODE = (err_code); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 343, (uint8_t*) "..\\main.c"); } while (0); } } while (0);
}



 
static void timers_start(void)
{
    



 
}



 
static void advertising_start(void)
{
    uint32_t             err_code;
    ble_gap_adv_params_t adv_params;

    
    memset(&adv_params, 0, sizeof(adv_params));

    adv_params.type        = 0x00;
    adv_params.p_peer_addr = 0;
    adv_params.fp          = 0x00;
    adv_params.interval    = 64;
    adv_params.timeout     = 180;

    err_code = sd_ble_gap_adv_start(&adv_params);
    do { const uint32_t LOCAL_ERR_CODE = (err_code); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 376, (uint8_t*) "..\\main.c"); } while (0); } } while (0);
    nrf_gpio_pin_set(18);
}





 
static void on_ble_evt(ble_evt_t * p_ble_evt)
{
    uint32_t                         err_code;
    static ble_gap_evt_auth_status_t m_auth_status;
    ble_gap_enc_info_t *             p_enc_info;

    switch (p_ble_evt->header.evt_id)
    {
        case BLE_GAP_EVT_CONNECTED:
            nrf_gpio_pin_set(19);
            nrf_gpio_pin_clear(18);
            m_conn_handle = p_ble_evt->evt.gap_evt.conn_handle;

            







 
            break;

        case BLE_GAP_EVT_DISCONNECTED:
            nrf_gpio_pin_clear(19);
            m_conn_handle = 0xFFFF;

            




 
            
                advertising_start();
            break;

        case BLE_GAP_EVT_SEC_PARAMS_REQUEST:
            err_code = sd_ble_gap_sec_params_reply(m_conn_handle,
                                                   0x00,
                                                   &m_sec_params);
            do { const uint32_t LOCAL_ERR_CODE = (err_code); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 427, (uint8_t*) "..\\main.c"); } while (0); } } while (0);
            break;

        case BLE_GATTS_EVT_SYS_ATTR_MISSING:
            err_code = sd_ble_gatts_sys_attr_set(m_conn_handle, 0, 0);
            do { const uint32_t LOCAL_ERR_CODE = (err_code); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 432, (uint8_t*) "..\\main.c"); } while (0); } } while (0);
            break;

        case BLE_GAP_EVT_AUTH_STATUS:
            m_auth_status = p_ble_evt->evt.gap_evt.params.auth_status;
            break;

        case BLE_GAP_EVT_SEC_INFO_REQUEST:
            p_enc_info = &m_auth_status.periph_keys.enc_info;
            if (p_enc_info->div == p_ble_evt->evt.gap_evt.params.sec_info_request.div)
            {
                err_code = sd_ble_gap_sec_info_reply(m_conn_handle, p_enc_info, 0);
                do { const uint32_t LOCAL_ERR_CODE = (err_code); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 444, (uint8_t*) "..\\main.c"); } while (0); } } while (0);
            }
            else
            {
                
                err_code = sd_ble_gap_sec_info_reply(m_conn_handle, 0, 0);
                do { const uint32_t LOCAL_ERR_CODE = (err_code); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 450, (uint8_t*) "..\\main.c"); } while (0); } } while (0);
            }
            break;

        case BLE_GAP_EVT_TIMEOUT:
            if (p_ble_evt->evt.gap_evt.params.timeout.src == 0x00)
            {
                nrf_gpio_pin_clear(18);

                
                nrf_gpio_cfg_sense_input(16,
                                         NRF_GPIO_PIN_PULLUP,
                                         NRF_GPIO_PIN_SENSE_LOW);
                
                
                err_code = sd_power_system_off();
                do { const uint32_t LOCAL_ERR_CODE = (err_code); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 466, (uint8_t*) "..\\main.c"); } while (0); } } while (0);
            }
            break;

        default:
            
            break;
    }
}








 
static void ble_evt_dispatch(ble_evt_t * p_ble_evt)
{
    on_ble_evt(p_ble_evt);
    ble_conn_params_on_ble_evt(p_ble_evt);
    


 
}








 
static void sys_evt_dispatch(uint32_t sys_evt)
{
    pstorage_sys_event_handler(sys_evt);
}





 
static void ble_stack_init(void)
{
    uint32_t err_code;

    
    do { static uint32_t EVT_BUFFER[(((((((((sizeof(ble_evt_t) + (23))) < (0) ? (0) : ((sizeof(ble_evt_t) + (23))))) < (sizeof(uint32_t)) ? (sizeof(uint32_t)) : ((((sizeof(ble_evt_t) + (23))) < (0) ? (0) : ((sizeof(ble_evt_t) + (23))))))) - 1) / (sizeof(uint32_t))) + 1)]; uint32_t ERR_CODE; ERR_CODE = softdevice_handler_init((NRF_CLOCK_LFCLKSRC_XTAL_20_PPM), EVT_BUFFER, sizeof(EVT_BUFFER), (0) ? softdevice_evt_schedule : 0); do { const uint32_t LOCAL_ERR_CODE = (ERR_CODE); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 517, (uint8_t*) "..\\main.c"); } while (0); } } while (0); } while (0);

    
    ble_enable_params_t ble_enable_params;
    memset(&ble_enable_params, 0, sizeof(ble_enable_params));
    ble_enable_params.gatts_enable_params.service_changed = 0;
    err_code = sd_ble_enable(&ble_enable_params);
    do { const uint32_t LOCAL_ERR_CODE = (err_code); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 524, (uint8_t*) "..\\main.c"); } while (0); } } while (0);

    
    err_code = softdevice_ble_evt_handler_set(ble_evt_dispatch);
    do { const uint32_t LOCAL_ERR_CODE = (err_code); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 528, (uint8_t*) "..\\main.c"); } while (0); } } while (0);
    
    
    err_code = softdevice_sys_evt_handler_set(sys_evt_dispatch);
    do { const uint32_t LOCAL_ERR_CODE = (err_code); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 532, (uint8_t*) "..\\main.c"); } while (0); } } while (0);
}



 
static void scheduler_init(void)
{
    do { static uint32_t APP_SCHED_BUF[((((((((sizeof(app_timer_event_t))) + 8) * (((10)) + 1))) - 1) / (sizeof(uint32_t))) + 1)]; uint32_t ERR_CODE = app_sched_init((sizeof(app_timer_event_t)), (10), APP_SCHED_BUF); do { const uint32_t LOCAL_ERR_CODE = (ERR_CODE); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 540, (uint8_t*) "..\\main.c"); } while (0); } } while (0); } while (0);
}





 



















 


 
static void gpiote_init(void)
{
    do { static uint32_t app_gpiote_buf[((((((1) * 20)) - 1) / (sizeof(uint32_t))) + 1)]; uint32_t ERR_CODE = app_gpiote_init((1), app_gpiote_buf); do { const uint32_t LOCAL_ERR_CODE = (ERR_CODE); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 573, (uint8_t*) "..\\main.c"); } while (0); } } while (0); } while (0);
}



 
static void buttons_init(void)
{
    
    
    static app_button_cfg_t buttons[] =
    {
        {16, 0, NRF_GPIO_PIN_PULLUP, 0},
        
        
    };

    do { uint32_t ERR_CODE = app_button_init((buttons), (sizeof(buttons) / sizeof(buttons[0])), (((uint32_t)((((50) * (uint64_t)32768) + ((((0) + 1) * 1000) / 2)) / (((0) + 1) * 1000)))), (1) ? app_button_evt_schedule : 0); do { const uint32_t LOCAL_ERR_CODE = (ERR_CODE); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 590, (uint8_t*) "..\\main.c"); } while (0); } } while (0); } while (0);

    
    
    
}



 
static void power_manage(void)
{
    uint32_t err_code = sd_app_evt_wait();
    do { const uint32_t LOCAL_ERR_CODE = (err_code); if (LOCAL_ERR_CODE != ((0x0) + 0)) { do { app_error_handler((LOCAL_ERR_CODE), 603, (uint8_t*) "..\\main.c"); } while (0); } } while (0);
}



 
int main(void)
{
    
    leds_init();
    timers_init();
    gpiote_init();
    buttons_init();
    ble_stack_init();
    scheduler_init();    
    
		
		gap_params_init();
    advertising_init();
    services_init();
    conn_params_init();
    sec_params_init();

    
    timers_start();
    advertising_start();

    
    for (;;)
    {
        app_sched_execute();
        power_manage();
    }
}



 
