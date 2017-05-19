# xv6-public_modifiedOS

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
 
