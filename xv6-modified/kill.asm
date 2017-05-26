
_kill:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "stat.h"
#include "user.h"

int
main(int argc, char **argv)
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
  int i;

  if(argc < 2){
   6:	bb 01 00 00 00       	mov    $0x1,%ebx
#include "stat.h"
#include "user.h"

int
main(int argc, char **argv)
{
   b:	83 e4 f0             	and    $0xfffffff0,%esp
   e:	83 ec 10             	sub    $0x10,%esp
  11:	8b 75 08             	mov    0x8(%ebp),%esi
  14:	8b 7d 0c             	mov    0xc(%ebp),%edi
  int i;

  if(argc < 2){
  17:	83 fe 01             	cmp    $0x1,%esi
  1a:	7e 23                	jle    3f <main+0x3f>
  1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(2, "usage: kill pid...\n");
    exit();
  }
  for(i=1; i<argc; i++)
    kill(atoi(argv[i]));
  20:	8b 04 9f             	mov    (%edi,%ebx,4),%eax

  if(argc < 2){
    printf(2, "usage: kill pid...\n");
    exit();
  }
  for(i=1; i<argc; i++)
  23:	83 c3 01             	add    $0x1,%ebx
    kill(atoi(argv[i]));
  26:	89 04 24             	mov    %eax,(%esp)
  29:	e8 f2 01 00 00       	call   220 <atoi>
  2e:	89 04 24             	mov    %eax,(%esp)
  31:	e8 7c 02 00 00       	call   2b2 <kill>

  if(argc < 2){
    printf(2, "usage: kill pid...\n");
    exit();
  }
  for(i=1; i<argc; i++)
  36:	39 f3                	cmp    %esi,%ebx
  38:	75 e6                	jne    20 <main+0x20>
    kill(atoi(argv[i]));
  exit();
  3a:	e8 43 02 00 00       	call   282 <exit>
main(int argc, char **argv)
{
  int i;

  if(argc < 2){
    printf(2, "usage: kill pid...\n");
  3f:	c7 44 24 04 46 07 00 	movl   $0x746,0x4(%esp)
  46:	00 
  47:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  4e:	e8 8d 03 00 00       	call   3e0 <printf>
    exit();
  53:	e8 2a 02 00 00       	call   282 <exit>
  58:	66 90                	xchg   %ax,%ax
  5a:	66 90                	xchg   %ax,%ax
  5c:	66 90                	xchg   %ax,%ax
  5e:	66 90                	xchg   %ax,%ax

00000060 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
  60:	55                   	push   %ebp
  61:	89 e5                	mov    %esp,%ebp
  63:	8b 45 08             	mov    0x8(%ebp),%eax
  66:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  69:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
  6a:	89 c2                	mov    %eax,%edx
  6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  70:	83 c1 01             	add    $0x1,%ecx
  73:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
  77:	83 c2 01             	add    $0x1,%edx
  7a:	84 db                	test   %bl,%bl
  7c:	88 5a ff             	mov    %bl,-0x1(%edx)
  7f:	75 ef                	jne    70 <strcpy+0x10>
    ;
  return os;
}
  81:	5b                   	pop    %ebx
  82:	5d                   	pop    %ebp
  83:	c3                   	ret    
  84:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  8a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000090 <strcmp>:

int
strcmp(const char *p, const char *q)
{
  90:	55                   	push   %ebp
  91:	89 e5                	mov    %esp,%ebp
  93:	8b 55 08             	mov    0x8(%ebp),%edx
  96:	53                   	push   %ebx
  97:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
  9a:	0f b6 02             	movzbl (%edx),%eax
  9d:	84 c0                	test   %al,%al
  9f:	74 2d                	je     ce <strcmp+0x3e>
  a1:	0f b6 19             	movzbl (%ecx),%ebx
  a4:	38 d8                	cmp    %bl,%al
  a6:	74 0e                	je     b6 <strcmp+0x26>
  a8:	eb 2b                	jmp    d5 <strcmp+0x45>
  aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  b0:	38 c8                	cmp    %cl,%al
  b2:	75 15                	jne    c9 <strcmp+0x39>
    p++, q++;
  b4:	89 d9                	mov    %ebx,%ecx
  b6:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
  b9:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
  bc:	8d 59 01             	lea    0x1(%ecx),%ebx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
  bf:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
  c3:	84 c0                	test   %al,%al
  c5:	75 e9                	jne    b0 <strcmp+0x20>
  c7:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
  c9:	29 c8                	sub    %ecx,%eax
}
  cb:	5b                   	pop    %ebx
  cc:	5d                   	pop    %ebp
  cd:	c3                   	ret    
  ce:	0f b6 09             	movzbl (%ecx),%ecx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
  d1:	31 c0                	xor    %eax,%eax
  d3:	eb f4                	jmp    c9 <strcmp+0x39>
  d5:	0f b6 cb             	movzbl %bl,%ecx
  d8:	eb ef                	jmp    c9 <strcmp+0x39>
  da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000000e0 <strlen>:
  return (uchar)*p - (uchar)*q;
}

uint
strlen(char *s)
{
  e0:	55                   	push   %ebp
  e1:	89 e5                	mov    %esp,%ebp
  e3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
  e6:	80 39 00             	cmpb   $0x0,(%ecx)
  e9:	74 12                	je     fd <strlen+0x1d>
  eb:	31 d2                	xor    %edx,%edx
  ed:	8d 76 00             	lea    0x0(%esi),%esi
  f0:	83 c2 01             	add    $0x1,%edx
  f3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
  f7:	89 d0                	mov    %edx,%eax
  f9:	75 f5                	jne    f0 <strlen+0x10>
    ;
  return n;
}
  fb:	5d                   	pop    %ebp
  fc:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
  fd:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
  ff:	5d                   	pop    %ebp
 100:	c3                   	ret    
 101:	eb 0d                	jmp    110 <memset>
 103:	90                   	nop
 104:	90                   	nop
 105:	90                   	nop
 106:	90                   	nop
 107:	90                   	nop
 108:	90                   	nop
 109:	90                   	nop
 10a:	90                   	nop
 10b:	90                   	nop
 10c:	90                   	nop
 10d:	90                   	nop
 10e:	90                   	nop
 10f:	90                   	nop

00000110 <memset>:

void*
memset(void *dst, int c, uint n)
{
 110:	55                   	push   %ebp
 111:	89 e5                	mov    %esp,%ebp
 113:	8b 55 08             	mov    0x8(%ebp),%edx
 116:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 117:	8b 4d 10             	mov    0x10(%ebp),%ecx
 11a:	8b 45 0c             	mov    0xc(%ebp),%eax
 11d:	89 d7                	mov    %edx,%edi
 11f:	fc                   	cld    
 120:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 122:	89 d0                	mov    %edx,%eax
 124:	5f                   	pop    %edi
 125:	5d                   	pop    %ebp
 126:	c3                   	ret    
 127:	89 f6                	mov    %esi,%esi
 129:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000130 <strchr>:

char*
strchr(const char *s, char c)
{
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	8b 45 08             	mov    0x8(%ebp),%eax
 136:	53                   	push   %ebx
 137:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
 13a:	0f b6 18             	movzbl (%eax),%ebx
 13d:	84 db                	test   %bl,%bl
 13f:	74 1d                	je     15e <strchr+0x2e>
    if(*s == c)
 141:	38 d3                	cmp    %dl,%bl
 143:	89 d1                	mov    %edx,%ecx
 145:	75 0d                	jne    154 <strchr+0x24>
 147:	eb 17                	jmp    160 <strchr+0x30>
 149:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 150:	38 ca                	cmp    %cl,%dl
 152:	74 0c                	je     160 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 154:	83 c0 01             	add    $0x1,%eax
 157:	0f b6 10             	movzbl (%eax),%edx
 15a:	84 d2                	test   %dl,%dl
 15c:	75 f2                	jne    150 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 15e:	31 c0                	xor    %eax,%eax
}
 160:	5b                   	pop    %ebx
 161:	5d                   	pop    %ebp
 162:	c3                   	ret    
 163:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 169:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000170 <gets>:

char*
gets(char *buf, int max)
{
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	57                   	push   %edi
 174:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 175:	31 f6                	xor    %esi,%esi
  return 0;
}

char*
gets(char *buf, int max)
{
 177:	53                   	push   %ebx
 178:	83 ec 2c             	sub    $0x2c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 17b:	8d 7d e7             	lea    -0x19(%ebp),%edi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 17e:	eb 31                	jmp    1b1 <gets+0x41>
    cc = read(0, &c, 1);
 180:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 187:	00 
 188:	89 7c 24 04          	mov    %edi,0x4(%esp)
 18c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 193:	e8 02 01 00 00       	call   29a <read>
    if(cc < 1)
 198:	85 c0                	test   %eax,%eax
 19a:	7e 1d                	jle    1b9 <gets+0x49>
      break;
    buf[i++] = c;
 19c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 1a0:	89 de                	mov    %ebx,%esi
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 1a2:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
 1a5:	3c 0d                	cmp    $0xd,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 1a7:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 1ab:	74 0c                	je     1b9 <gets+0x49>
 1ad:	3c 0a                	cmp    $0xa,%al
 1af:	74 08                	je     1b9 <gets+0x49>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 1b1:	8d 5e 01             	lea    0x1(%esi),%ebx
 1b4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1b7:	7c c7                	jl     180 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 1b9:	8b 45 08             	mov    0x8(%ebp),%eax
 1bc:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 1c0:	83 c4 2c             	add    $0x2c,%esp
 1c3:	5b                   	pop    %ebx
 1c4:	5e                   	pop    %esi
 1c5:	5f                   	pop    %edi
 1c6:	5d                   	pop    %ebp
 1c7:	c3                   	ret    
 1c8:	90                   	nop
 1c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000001d0 <stat>:

int
stat(char *n, struct stat *st)
{
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	56                   	push   %esi
 1d4:	53                   	push   %ebx
 1d5:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 1d8:	8b 45 08             	mov    0x8(%ebp),%eax
 1db:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 1e2:	00 
 1e3:	89 04 24             	mov    %eax,(%esp)
 1e6:	e8 d7 00 00 00       	call   2c2 <open>
  if(fd < 0)
 1eb:	85 c0                	test   %eax,%eax
stat(char *n, struct stat *st)
{
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 1ed:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
 1ef:	78 27                	js     218 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 1f1:	8b 45 0c             	mov    0xc(%ebp),%eax
 1f4:	89 1c 24             	mov    %ebx,(%esp)
 1f7:	89 44 24 04          	mov    %eax,0x4(%esp)
 1fb:	e8 da 00 00 00       	call   2da <fstat>
  close(fd);
 200:	89 1c 24             	mov    %ebx,(%esp)
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
 203:	89 c6                	mov    %eax,%esi
  close(fd);
 205:	e8 a0 00 00 00       	call   2aa <close>
  return r;
 20a:	89 f0                	mov    %esi,%eax
}
 20c:	83 c4 10             	add    $0x10,%esp
 20f:	5b                   	pop    %ebx
 210:	5e                   	pop    %esi
 211:	5d                   	pop    %ebp
 212:	c3                   	ret    
 213:	90                   	nop
 214:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 218:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 21d:	eb ed                	jmp    20c <stat+0x3c>
 21f:	90                   	nop

00000220 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	8b 4d 08             	mov    0x8(%ebp),%ecx
 226:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 227:	0f be 11             	movsbl (%ecx),%edx
 22a:	8d 42 d0             	lea    -0x30(%edx),%eax
 22d:	3c 09                	cmp    $0x9,%al
int
atoi(const char *s)
{
  int n;

  n = 0;
 22f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 234:	77 17                	ja     24d <atoi+0x2d>
 236:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 238:	83 c1 01             	add    $0x1,%ecx
 23b:	8d 04 80             	lea    (%eax,%eax,4),%eax
 23e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 242:	0f be 11             	movsbl (%ecx),%edx
 245:	8d 5a d0             	lea    -0x30(%edx),%ebx
 248:	80 fb 09             	cmp    $0x9,%bl
 24b:	76 eb                	jbe    238 <atoi+0x18>
    n = n*10 + *s++ - '0';
  return n;
}
 24d:	5b                   	pop    %ebx
 24e:	5d                   	pop    %ebp
 24f:	c3                   	ret    

00000250 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 250:	55                   	push   %ebp
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 251:	31 d2                	xor    %edx,%edx
  return n;
}

void*
memmove(void *vdst, void *vsrc, int n)
{
 253:	89 e5                	mov    %esp,%ebp
 255:	56                   	push   %esi
 256:	8b 45 08             	mov    0x8(%ebp),%eax
 259:	53                   	push   %ebx
 25a:	8b 5d 10             	mov    0x10(%ebp),%ebx
 25d:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 260:	85 db                	test   %ebx,%ebx
 262:	7e 12                	jle    276 <memmove+0x26>
 264:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 268:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 26c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 26f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 272:	39 da                	cmp    %ebx,%edx
 274:	75 f2                	jne    268 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 276:	5b                   	pop    %ebx
 277:	5e                   	pop    %esi
 278:	5d                   	pop    %ebp
 279:	c3                   	ret    

0000027a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 27a:	b8 01 00 00 00       	mov    $0x1,%eax
 27f:	cd 40                	int    $0x40
 281:	c3                   	ret    

00000282 <exit>:
SYSCALL(exit)
 282:	b8 02 00 00 00       	mov    $0x2,%eax
 287:	cd 40                	int    $0x40
 289:	c3                   	ret    

0000028a <wait>:
SYSCALL(wait)
 28a:	b8 03 00 00 00       	mov    $0x3,%eax
 28f:	cd 40                	int    $0x40
 291:	c3                   	ret    

00000292 <pipe>:
SYSCALL(pipe)
 292:	b8 04 00 00 00       	mov    $0x4,%eax
 297:	cd 40                	int    $0x40
 299:	c3                   	ret    

0000029a <read>:
SYSCALL(read)
 29a:	b8 05 00 00 00       	mov    $0x5,%eax
 29f:	cd 40                	int    $0x40
 2a1:	c3                   	ret    

000002a2 <write>:
SYSCALL(write)
 2a2:	b8 10 00 00 00       	mov    $0x10,%eax
 2a7:	cd 40                	int    $0x40
 2a9:	c3                   	ret    

000002aa <close>:
SYSCALL(close)
 2aa:	b8 15 00 00 00       	mov    $0x15,%eax
 2af:	cd 40                	int    $0x40
 2b1:	c3                   	ret    

000002b2 <kill>:
SYSCALL(kill)
 2b2:	b8 06 00 00 00       	mov    $0x6,%eax
 2b7:	cd 40                	int    $0x40
 2b9:	c3                   	ret    

000002ba <exec>:
SYSCALL(exec)
 2ba:	b8 07 00 00 00       	mov    $0x7,%eax
 2bf:	cd 40                	int    $0x40
 2c1:	c3                   	ret    

000002c2 <open>:
SYSCALL(open)
 2c2:	b8 0f 00 00 00       	mov    $0xf,%eax
 2c7:	cd 40                	int    $0x40
 2c9:	c3                   	ret    

000002ca <mknod>:
SYSCALL(mknod)
 2ca:	b8 11 00 00 00       	mov    $0x11,%eax
 2cf:	cd 40                	int    $0x40
 2d1:	c3                   	ret    

000002d2 <unlink>:
SYSCALL(unlink)
 2d2:	b8 12 00 00 00       	mov    $0x12,%eax
 2d7:	cd 40                	int    $0x40
 2d9:	c3                   	ret    

000002da <fstat>:
SYSCALL(fstat)
 2da:	b8 08 00 00 00       	mov    $0x8,%eax
 2df:	cd 40                	int    $0x40
 2e1:	c3                   	ret    

000002e2 <link>:
SYSCALL(link)
 2e2:	b8 13 00 00 00       	mov    $0x13,%eax
 2e7:	cd 40                	int    $0x40
 2e9:	c3                   	ret    

000002ea <mkdir>:
SYSCALL(mkdir)
 2ea:	b8 14 00 00 00       	mov    $0x14,%eax
 2ef:	cd 40                	int    $0x40
 2f1:	c3                   	ret    

000002f2 <chdir>:
SYSCALL(chdir)
 2f2:	b8 09 00 00 00       	mov    $0x9,%eax
 2f7:	cd 40                	int    $0x40
 2f9:	c3                   	ret    

000002fa <dup>:
SYSCALL(dup)
 2fa:	b8 0a 00 00 00       	mov    $0xa,%eax
 2ff:	cd 40                	int    $0x40
 301:	c3                   	ret    

00000302 <getpid>:
SYSCALL(getpid)
 302:	b8 0b 00 00 00       	mov    $0xb,%eax
 307:	cd 40                	int    $0x40
 309:	c3                   	ret    

0000030a <sbrk>:
SYSCALL(sbrk)
 30a:	b8 0c 00 00 00       	mov    $0xc,%eax
 30f:	cd 40                	int    $0x40
 311:	c3                   	ret    

00000312 <sleep>:
SYSCALL(sleep)
 312:	b8 0d 00 00 00       	mov    $0xd,%eax
 317:	cd 40                	int    $0x40
 319:	c3                   	ret    

0000031a <uptime>:
SYSCALL(uptime)
 31a:	b8 0e 00 00 00       	mov    $0xe,%eax
 31f:	cd 40                	int    $0x40
 321:	c3                   	ret    

00000322 <chpr>:
SYSCALL(chpr)
 322:	b8 17 00 00 00       	mov    $0x17,%eax
 327:	cd 40                	int    $0x40
 329:	c3                   	ret    

0000032a <cps>:

SYSCALL(cps)
 32a:	b8 16 00 00 00       	mov    $0x16,%eax
 32f:	cd 40                	int    $0x40
 331:	c3                   	ret    
 332:	66 90                	xchg   %ax,%ax
 334:	66 90                	xchg   %ax,%ax
 336:	66 90                	xchg   %ax,%ax
 338:	66 90                	xchg   %ax,%ax
 33a:	66 90                	xchg   %ax,%ax
 33c:	66 90                	xchg   %ax,%ax
 33e:	66 90                	xchg   %ax,%ax

00000340 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	57                   	push   %edi
 344:	56                   	push   %esi
 345:	89 c6                	mov    %eax,%esi
 347:	53                   	push   %ebx
 348:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 34b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 34e:	85 db                	test   %ebx,%ebx
 350:	74 09                	je     35b <printint+0x1b>
 352:	89 d0                	mov    %edx,%eax
 354:	c1 e8 1f             	shr    $0x1f,%eax
 357:	84 c0                	test   %al,%al
 359:	75 75                	jne    3d0 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 35b:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 35d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 364:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
 367:	31 ff                	xor    %edi,%edi
 369:	89 ce                	mov    %ecx,%esi
 36b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 36e:	eb 02                	jmp    372 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 370:	89 cf                	mov    %ecx,%edi
 372:	31 d2                	xor    %edx,%edx
 374:	f7 f6                	div    %esi
 376:	8d 4f 01             	lea    0x1(%edi),%ecx
 379:	0f b6 92 61 07 00 00 	movzbl 0x761(%edx),%edx
  }while((x /= base) != 0);
 380:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 382:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 385:	75 e9                	jne    370 <printint+0x30>
  if(neg)
 387:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 38a:	89 c8                	mov    %ecx,%eax
 38c:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
 38f:	85 d2                	test   %edx,%edx
 391:	74 08                	je     39b <printint+0x5b>
    buf[i++] = '-';
 393:	8d 4f 02             	lea    0x2(%edi),%ecx
 396:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 39b:	8d 79 ff             	lea    -0x1(%ecx),%edi
 39e:	66 90                	xchg   %ax,%ax
 3a0:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 3a5:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 3a8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 3af:	00 
 3b0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 3b4:	89 34 24             	mov    %esi,(%esp)
 3b7:	88 45 d7             	mov    %al,-0x29(%ebp)
 3ba:	e8 e3 fe ff ff       	call   2a2 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 3bf:	83 ff ff             	cmp    $0xffffffff,%edi
 3c2:	75 dc                	jne    3a0 <printint+0x60>
    putc(fd, buf[i]);
}
 3c4:	83 c4 4c             	add    $0x4c,%esp
 3c7:	5b                   	pop    %ebx
 3c8:	5e                   	pop    %esi
 3c9:	5f                   	pop    %edi
 3ca:	5d                   	pop    %ebp
 3cb:	c3                   	ret    
 3cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 3d0:	89 d0                	mov    %edx,%eax
 3d2:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 3d4:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 3db:	eb 87                	jmp    364 <printint+0x24>
 3dd:	8d 76 00             	lea    0x0(%esi),%esi

000003e0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 3e4:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 3e6:	56                   	push   %esi
 3e7:	53                   	push   %ebx
 3e8:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 3eb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 3ee:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 3f1:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 3f4:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 3f7:	0f b6 13             	movzbl (%ebx),%edx
 3fa:	83 c3 01             	add    $0x1,%ebx
 3fd:	84 d2                	test   %dl,%dl
 3ff:	75 39                	jne    43a <printf+0x5a>
 401:	e9 c2 00 00 00       	jmp    4c8 <printf+0xe8>
 406:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 408:	83 fa 25             	cmp    $0x25,%edx
 40b:	0f 84 bf 00 00 00    	je     4d0 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 411:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 414:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 41b:	00 
 41c:	89 44 24 04          	mov    %eax,0x4(%esp)
 420:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
 423:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 426:	e8 77 fe ff ff       	call   2a2 <write>
 42b:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 42e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 432:	84 d2                	test   %dl,%dl
 434:	0f 84 8e 00 00 00    	je     4c8 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
 43a:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 43c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 43f:	74 c7                	je     408 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 441:	83 ff 25             	cmp    $0x25,%edi
 444:	75 e5                	jne    42b <printf+0x4b>
      if(c == 'd'){
 446:	83 fa 64             	cmp    $0x64,%edx
 449:	0f 84 31 01 00 00    	je     580 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 44f:	25 f7 00 00 00       	and    $0xf7,%eax
 454:	83 f8 70             	cmp    $0x70,%eax
 457:	0f 84 83 00 00 00    	je     4e0 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 45d:	83 fa 73             	cmp    $0x73,%edx
 460:	0f 84 a2 00 00 00    	je     508 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 466:	83 fa 63             	cmp    $0x63,%edx
 469:	0f 84 35 01 00 00    	je     5a4 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 46f:	83 fa 25             	cmp    $0x25,%edx
 472:	0f 84 e0 00 00 00    	je     558 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 478:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 47b:	83 c3 01             	add    $0x1,%ebx
 47e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 485:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 486:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 488:	89 44 24 04          	mov    %eax,0x4(%esp)
 48c:	89 34 24             	mov    %esi,(%esp)
 48f:	89 55 d0             	mov    %edx,-0x30(%ebp)
 492:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 496:	e8 07 fe ff ff       	call   2a2 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 49b:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 49e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 4a1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 4a8:	00 
 4a9:	89 44 24 04          	mov    %eax,0x4(%esp)
 4ad:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 4b0:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 4b3:	e8 ea fd ff ff       	call   2a2 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 4b8:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 4bc:	84 d2                	test   %dl,%dl
 4be:	0f 85 76 ff ff ff    	jne    43a <printf+0x5a>
 4c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 4c8:	83 c4 3c             	add    $0x3c,%esp
 4cb:	5b                   	pop    %ebx
 4cc:	5e                   	pop    %esi
 4cd:	5f                   	pop    %edi
 4ce:	5d                   	pop    %ebp
 4cf:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 4d0:	bf 25 00 00 00       	mov    $0x25,%edi
 4d5:	e9 51 ff ff ff       	jmp    42b <printf+0x4b>
 4da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 4e0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 4e3:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 4e8:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 4ea:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 4f1:	8b 10                	mov    (%eax),%edx
 4f3:	89 f0                	mov    %esi,%eax
 4f5:	e8 46 fe ff ff       	call   340 <printint>
        ap++;
 4fa:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 4fe:	e9 28 ff ff ff       	jmp    42b <printf+0x4b>
 503:	90                   	nop
 504:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 508:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 50b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
 50f:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
 511:	b8 5a 07 00 00       	mov    $0x75a,%eax
 516:	85 ff                	test   %edi,%edi
 518:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 51b:	0f b6 07             	movzbl (%edi),%eax
 51e:	84 c0                	test   %al,%al
 520:	74 2a                	je     54c <printf+0x16c>
 522:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 528:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 52b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 52e:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 531:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 538:	00 
 539:	89 44 24 04          	mov    %eax,0x4(%esp)
 53d:	89 34 24             	mov    %esi,(%esp)
 540:	e8 5d fd ff ff       	call   2a2 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 545:	0f b6 07             	movzbl (%edi),%eax
 548:	84 c0                	test   %al,%al
 54a:	75 dc                	jne    528 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 54c:	31 ff                	xor    %edi,%edi
 54e:	e9 d8 fe ff ff       	jmp    42b <printf+0x4b>
 553:	90                   	nop
 554:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 558:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 55b:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 55d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 564:	00 
 565:	89 44 24 04          	mov    %eax,0x4(%esp)
 569:	89 34 24             	mov    %esi,(%esp)
 56c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 570:	e8 2d fd ff ff       	call   2a2 <write>
 575:	e9 b1 fe ff ff       	jmp    42b <printf+0x4b>
 57a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 580:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 583:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 588:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 58b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 592:	8b 10                	mov    (%eax),%edx
 594:	89 f0                	mov    %esi,%eax
 596:	e8 a5 fd ff ff       	call   340 <printint>
        ap++;
 59b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 59f:	e9 87 fe ff ff       	jmp    42b <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 5a4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 5a7:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 5a9:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5ab:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 5b2:	00 
 5b3:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 5b6:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5b9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 5bc:	89 44 24 04          	mov    %eax,0x4(%esp)
 5c0:	e8 dd fc ff ff       	call   2a2 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
 5c5:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 5c9:	e9 5d fe ff ff       	jmp    42b <printf+0x4b>
 5ce:	66 90                	xchg   %ax,%ax

000005d0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 5d0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 5d1:	a1 dc 09 00 00       	mov    0x9dc,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 5d6:	89 e5                	mov    %esp,%ebp
 5d8:	57                   	push   %edi
 5d9:	56                   	push   %esi
 5da:	53                   	push   %ebx
 5db:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 5de:	8b 08                	mov    (%eax),%ecx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 5e0:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 5e3:	39 d0                	cmp    %edx,%eax
 5e5:	72 11                	jb     5f8 <free+0x28>
 5e7:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 5e8:	39 c8                	cmp    %ecx,%eax
 5ea:	72 04                	jb     5f0 <free+0x20>
 5ec:	39 ca                	cmp    %ecx,%edx
 5ee:	72 10                	jb     600 <free+0x30>
 5f0:	89 c8                	mov    %ecx,%eax
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 5f2:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 5f4:	8b 08                	mov    (%eax),%ecx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 5f6:	73 f0                	jae    5e8 <free+0x18>
 5f8:	39 ca                	cmp    %ecx,%edx
 5fa:	72 04                	jb     600 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 5fc:	39 c8                	cmp    %ecx,%eax
 5fe:	72 f0                	jb     5f0 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 600:	8b 73 fc             	mov    -0x4(%ebx),%esi
 603:	8d 3c f2             	lea    (%edx,%esi,8),%edi
 606:	39 cf                	cmp    %ecx,%edi
 608:	74 1e                	je     628 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 60a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 60d:	8b 48 04             	mov    0x4(%eax),%ecx
 610:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 613:	39 f2                	cmp    %esi,%edx
 615:	74 28                	je     63f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 617:	89 10                	mov    %edx,(%eax)
  freep = p;
 619:	a3 dc 09 00 00       	mov    %eax,0x9dc
}
 61e:	5b                   	pop    %ebx
 61f:	5e                   	pop    %esi
 620:	5f                   	pop    %edi
 621:	5d                   	pop    %ebp
 622:	c3                   	ret    
 623:	90                   	nop
 624:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 628:	03 71 04             	add    0x4(%ecx),%esi
 62b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 62e:	8b 08                	mov    (%eax),%ecx
 630:	8b 09                	mov    (%ecx),%ecx
 632:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 635:	8b 48 04             	mov    0x4(%eax),%ecx
 638:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 63b:	39 f2                	cmp    %esi,%edx
 63d:	75 d8                	jne    617 <free+0x47>
    p->s.size += bp->s.size;
 63f:	03 4b fc             	add    -0x4(%ebx),%ecx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 642:	a3 dc 09 00 00       	mov    %eax,0x9dc
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 647:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 64a:	8b 53 f8             	mov    -0x8(%ebx),%edx
 64d:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 64f:	5b                   	pop    %ebx
 650:	5e                   	pop    %esi
 651:	5f                   	pop    %edi
 652:	5d                   	pop    %ebp
 653:	c3                   	ret    
 654:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 65a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000660 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 660:	55                   	push   %ebp
 661:	89 e5                	mov    %esp,%ebp
 663:	57                   	push   %edi
 664:	56                   	push   %esi
 665:	53                   	push   %ebx
 666:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 669:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 66c:	8b 1d dc 09 00 00    	mov    0x9dc,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 672:	8d 48 07             	lea    0x7(%eax),%ecx
 675:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
 678:	85 db                	test   %ebx,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 67a:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
 67d:	0f 84 9b 00 00 00    	je     71e <malloc+0xbe>
 683:	8b 13                	mov    (%ebx),%edx
 685:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 688:	39 fe                	cmp    %edi,%esi
 68a:	76 64                	jbe    6f0 <malloc+0x90>
 68c:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
 693:	bb 00 80 00 00       	mov    $0x8000,%ebx
 698:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 69b:	eb 0e                	jmp    6ab <malloc+0x4b>
 69d:	8d 76 00             	lea    0x0(%esi),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 6a0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 6a2:	8b 78 04             	mov    0x4(%eax),%edi
 6a5:	39 fe                	cmp    %edi,%esi
 6a7:	76 4f                	jbe    6f8 <malloc+0x98>
 6a9:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 6ab:	3b 15 dc 09 00 00    	cmp    0x9dc,%edx
 6b1:	75 ed                	jne    6a0 <malloc+0x40>
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
 6b3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 6b6:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 6bc:	bf 00 10 00 00       	mov    $0x1000,%edi
 6c1:	0f 43 fe             	cmovae %esi,%edi
 6c4:	0f 42 c3             	cmovb  %ebx,%eax
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 6c7:	89 04 24             	mov    %eax,(%esp)
 6ca:	e8 3b fc ff ff       	call   30a <sbrk>
  if(p == (char*)-1)
 6cf:	83 f8 ff             	cmp    $0xffffffff,%eax
 6d2:	74 18                	je     6ec <malloc+0x8c>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 6d4:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
 6d7:	83 c0 08             	add    $0x8,%eax
 6da:	89 04 24             	mov    %eax,(%esp)
 6dd:	e8 ee fe ff ff       	call   5d0 <free>
  return freep;
 6e2:	8b 15 dc 09 00 00    	mov    0x9dc,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 6e8:	85 d2                	test   %edx,%edx
 6ea:	75 b4                	jne    6a0 <malloc+0x40>
        return 0;
 6ec:	31 c0                	xor    %eax,%eax
 6ee:	eb 20                	jmp    710 <malloc+0xb0>
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 6f0:	89 d0                	mov    %edx,%eax
 6f2:	89 da                	mov    %ebx,%edx
 6f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 6f8:	39 fe                	cmp    %edi,%esi
 6fa:	74 1c                	je     718 <malloc+0xb8>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 6fc:	29 f7                	sub    %esi,%edi
 6fe:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
 701:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
 704:	89 70 04             	mov    %esi,0x4(%eax)
      }
      freep = prevp;
 707:	89 15 dc 09 00 00    	mov    %edx,0x9dc
      return (void*)(p + 1);
 70d:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 710:	83 c4 1c             	add    $0x1c,%esp
 713:	5b                   	pop    %ebx
 714:	5e                   	pop    %esi
 715:	5f                   	pop    %edi
 716:	5d                   	pop    %ebp
 717:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 718:	8b 08                	mov    (%eax),%ecx
 71a:	89 0a                	mov    %ecx,(%edx)
 71c:	eb e9                	jmp    707 <malloc+0xa7>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 71e:	c7 05 dc 09 00 00 e0 	movl   $0x9e0,0x9dc
 725:	09 00 00 
    base.s.size = 0;
 728:	ba e0 09 00 00       	mov    $0x9e0,%edx
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 72d:	c7 05 e0 09 00 00 e0 	movl   $0x9e0,0x9e0
 734:	09 00 00 
    base.s.size = 0;
 737:	c7 05 e4 09 00 00 00 	movl   $0x0,0x9e4
 73e:	00 00 00 
 741:	e9 46 ff ff ff       	jmp    68c <malloc+0x2c>
