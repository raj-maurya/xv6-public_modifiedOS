[ ![Codeship Status for raj-maurya/xv6-public_modifiedOS](https://app.codeship.com/projects/fb480390-2aaa-0135-9536-463a645743d5/status?branch=master)](https://app.codeship.com/projects/223962)



# xv6-public_modifiedOS   [ Codeship Testing ]

### The following are the procedures of adding our exemplary system call cps() to xv6.

 - Add name to syscall.h:
 
 ``` 
 // System call numbers
#define SYS_fork    1
..........
#define SYS_close  21
#define SYS_cps    22
 ``` 
  - Add function prototype to defs.h:
  ``` 
  // proc.c
void            exit(void);
......
void            yield(void);
int             cps ( void ); 
  ```   
 
 - Add function prototype to user.h:
  ``` 
    // system calls
int fork(void);
.....
int uptime(void);
int cps ( void );
   ``` 
     
  - Add function call to sysproc.c:
  
   ``` 
     int
sys_cps ( void )
{
  return cps ();
}  
   ```
        
   - Add call to usys.S:
   
   ```
     SYSCALL(cps)
   ```
       
   - Add call to syscall.c:
   
   ```   
extern int sys_chdir(void);
.....
extern int sys_cps(void);
.....
static int (*syscalls[])(void) = {
[SYS_fork]    sys_fork,
.....
[SYS_close]   sys_close,
[SYS_cps]     sys_cps,
};    
   ```
     
     
   - Add code to proc.c:
    
   ``` 
    //current process status
int
cps()
{
  struct proc *p;
  
  // Enable interrupts on this processor.
  sti();

    // Loop over process table looking for process with pid.
  acquire(&ptable.lock);
  cprintf("name \t pid \t state \n");
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
      if ( p->state == SLEEPING )
        cprintf("%s \t %d  \t SLEEPING \n ", p->name, p->pid );
      else if ( p->state == RUNNING )
        cprintf("%s \t %d  \t RUNNING \n ", p->name, p->pid );
  }
  
  release(&ptable.lock);
  
  return 22;
}  
   ``` 
 
  - Create testing file ps.c with code shown below:
   ```
   #include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

int
main(int argc, char *argv[])
{
  cps();

  exit();
}
  
   ```
  
  - Modify Makefile:
   
   After you have compiled and run "$make qemu-nox", you can execute the command "$ps" inside xv6. You should see outputs similar to the following:
   
   ```
    name 	 pid 	 state 
init 	 1  	 SLEEPING 
 sh 	 2  	 SLEEPING 
 ps 	 3  	 RUNNING 
   
   ```
## We will walk you through the steps of adding a priority attribute to a process in xv6 and changing its value



# Resource for modifications to the XV6 OS:

 - http://cse.csusb.edu/tongyu/courses/cs460/labs/lab7.php
 - http://cse.csusb.edu/tongyu/courses/cs460/labs/lab8.php
 - http://cse.csusb.edu/tongyu/courses/cs460/labs/lab9.php
