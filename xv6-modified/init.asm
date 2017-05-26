
_init:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:

char *argv[] = { "sh", 0 };

int
main(void)
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	83 ec 10             	sub    $0x10,%esp
  int pid, wpid;

  if(open("console", O_RDWR) < 0){
   a:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
  11:	00 
  12:	c7 04 24 f6 07 00 00 	movl   $0x7f6,(%esp)
  19:	e8 54 03 00 00       	call   372 <open>
  1e:	85 c0                	test   %eax,%eax
  20:	0f 88 ac 00 00 00    	js     d2 <main+0xd2>
    mknod("console", 1, 1);
    open("console", O_RDWR);
  }
  dup(0);  // stdout
  26:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  2d:	e8 78 03 00 00       	call   3aa <dup>
  dup(0);  // stderr
  32:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  39:	e8 6c 03 00 00       	call   3aa <dup>
  3e:	66 90                	xchg   %ax,%ax

  for(;;){
    printf(1, "init: starting sh\n");
  40:	c7 44 24 04 fe 07 00 	movl   $0x7fe,0x4(%esp)
  47:	00 
  48:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  4f:	e8 3c 04 00 00       	call   490 <printf>
    pid = fork();
  54:	e8 d1 02 00 00       	call   32a <fork>
    if(pid < 0){
  59:	85 c0                	test   %eax,%eax
  dup(0);  // stdout
  dup(0);  // stderr

  for(;;){
    printf(1, "init: starting sh\n");
    pid = fork();
  5b:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
  5d:	78 2d                	js     8c <main+0x8c>
  5f:	90                   	nop
      printf(1, "init: fork failed\n");
      exit();
    }
    if(pid == 0){
  60:	74 43                	je     a5 <main+0xa5>
  62:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      exec("sh", argv);
      printf(1, "init: exec sh failed\n");
      exit();
    }
    while((wpid=wait()) >= 0 && wpid != pid)
  68:	e8 cd 02 00 00       	call   33a <wait>
  6d:	85 c0                	test   %eax,%eax
  6f:	90                   	nop
  70:	78 ce                	js     40 <main+0x40>
  72:	39 d8                	cmp    %ebx,%eax
  74:	74 ca                	je     40 <main+0x40>
      printf(1, "zombie!\n");
  76:	c7 44 24 04 3d 08 00 	movl   $0x83d,0x4(%esp)
  7d:	00 
  7e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  85:	e8 06 04 00 00       	call   490 <printf>
  8a:	eb dc                	jmp    68 <main+0x68>

  for(;;){
    printf(1, "init: starting sh\n");
    pid = fork();
    if(pid < 0){
      printf(1, "init: fork failed\n");
  8c:	c7 44 24 04 11 08 00 	movl   $0x811,0x4(%esp)
  93:	00 
  94:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  9b:	e8 f0 03 00 00       	call   490 <printf>
      exit();
  a0:	e8 8d 02 00 00       	call   332 <exit>
    }
    if(pid == 0){
      exec("sh", argv);
  a5:	c7 44 24 04 c4 0a 00 	movl   $0xac4,0x4(%esp)
  ac:	00 
  ad:	c7 04 24 24 08 00 00 	movl   $0x824,(%esp)
  b4:	e8 b1 02 00 00       	call   36a <exec>
      printf(1, "init: exec sh failed\n");
  b9:	c7 44 24 04 27 08 00 	movl   $0x827,0x4(%esp)
  c0:	00 
  c1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  c8:	e8 c3 03 00 00       	call   490 <printf>
      exit();
  cd:	e8 60 02 00 00       	call   332 <exit>
main(void)
{
  int pid, wpid;

  if(open("console", O_RDWR) < 0){
    mknod("console", 1, 1);
  d2:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
  d9:	00 
  da:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  e1:	00 
  e2:	c7 04 24 f6 07 00 00 	movl   $0x7f6,(%esp)
  e9:	e8 8c 02 00 00       	call   37a <mknod>
    open("console", O_RDWR);
  ee:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
  f5:	00 
  f6:	c7 04 24 f6 07 00 00 	movl   $0x7f6,(%esp)
  fd:	e8 70 02 00 00       	call   372 <open>
 102:	e9 1f ff ff ff       	jmp    26 <main+0x26>
 107:	66 90                	xchg   %ax,%ax
 109:	66 90                	xchg   %ax,%ax
 10b:	66 90                	xchg   %ax,%ax
 10d:	66 90                	xchg   %ax,%ax
 10f:	90                   	nop

00000110 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 110:	55                   	push   %ebp
 111:	89 e5                	mov    %esp,%ebp
 113:	8b 45 08             	mov    0x8(%ebp),%eax
 116:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 119:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 11a:	89 c2                	mov    %eax,%edx
 11c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 120:	83 c1 01             	add    $0x1,%ecx
 123:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 127:	83 c2 01             	add    $0x1,%edx
 12a:	84 db                	test   %bl,%bl
 12c:	88 5a ff             	mov    %bl,-0x1(%edx)
 12f:	75 ef                	jne    120 <strcpy+0x10>
    ;
  return os;
}
 131:	5b                   	pop    %ebx
 132:	5d                   	pop    %ebp
 133:	c3                   	ret    
 134:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 13a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000140 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 140:	55                   	push   %ebp
 141:	89 e5                	mov    %esp,%ebp
 143:	8b 55 08             	mov    0x8(%ebp),%edx
 146:	53                   	push   %ebx
 147:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 14a:	0f b6 02             	movzbl (%edx),%eax
 14d:	84 c0                	test   %al,%al
 14f:	74 2d                	je     17e <strcmp+0x3e>
 151:	0f b6 19             	movzbl (%ecx),%ebx
 154:	38 d8                	cmp    %bl,%al
 156:	74 0e                	je     166 <strcmp+0x26>
 158:	eb 2b                	jmp    185 <strcmp+0x45>
 15a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 160:	38 c8                	cmp    %cl,%al
 162:	75 15                	jne    179 <strcmp+0x39>
    p++, q++;
 164:	89 d9                	mov    %ebx,%ecx
 166:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 169:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 16c:	8d 59 01             	lea    0x1(%ecx),%ebx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 16f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
 173:	84 c0                	test   %al,%al
 175:	75 e9                	jne    160 <strcmp+0x20>
 177:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 179:	29 c8                	sub    %ecx,%eax
}
 17b:	5b                   	pop    %ebx
 17c:	5d                   	pop    %ebp
 17d:	c3                   	ret    
 17e:	0f b6 09             	movzbl (%ecx),%ecx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 181:	31 c0                	xor    %eax,%eax
 183:	eb f4                	jmp    179 <strcmp+0x39>
 185:	0f b6 cb             	movzbl %bl,%ecx
 188:	eb ef                	jmp    179 <strcmp+0x39>
 18a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000190 <strlen>:
  return (uchar)*p - (uchar)*q;
}

uint
strlen(char *s)
{
 190:	55                   	push   %ebp
 191:	89 e5                	mov    %esp,%ebp
 193:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 196:	80 39 00             	cmpb   $0x0,(%ecx)
 199:	74 12                	je     1ad <strlen+0x1d>
 19b:	31 d2                	xor    %edx,%edx
 19d:	8d 76 00             	lea    0x0(%esi),%esi
 1a0:	83 c2 01             	add    $0x1,%edx
 1a3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 1a7:	89 d0                	mov    %edx,%eax
 1a9:	75 f5                	jne    1a0 <strlen+0x10>
    ;
  return n;
}
 1ab:	5d                   	pop    %ebp
 1ac:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 1ad:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 1af:	5d                   	pop    %ebp
 1b0:	c3                   	ret    
 1b1:	eb 0d                	jmp    1c0 <memset>
 1b3:	90                   	nop
 1b4:	90                   	nop
 1b5:	90                   	nop
 1b6:	90                   	nop
 1b7:	90                   	nop
 1b8:	90                   	nop
 1b9:	90                   	nop
 1ba:	90                   	nop
 1bb:	90                   	nop
 1bc:	90                   	nop
 1bd:	90                   	nop
 1be:	90                   	nop
 1bf:	90                   	nop

000001c0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	8b 55 08             	mov    0x8(%ebp),%edx
 1c6:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 1c7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1ca:	8b 45 0c             	mov    0xc(%ebp),%eax
 1cd:	89 d7                	mov    %edx,%edi
 1cf:	fc                   	cld    
 1d0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 1d2:	89 d0                	mov    %edx,%eax
 1d4:	5f                   	pop    %edi
 1d5:	5d                   	pop    %ebp
 1d6:	c3                   	ret    
 1d7:	89 f6                	mov    %esi,%esi
 1d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000001e0 <strchr>:

char*
strchr(const char *s, char c)
{
 1e0:	55                   	push   %ebp
 1e1:	89 e5                	mov    %esp,%ebp
 1e3:	8b 45 08             	mov    0x8(%ebp),%eax
 1e6:	53                   	push   %ebx
 1e7:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
 1ea:	0f b6 18             	movzbl (%eax),%ebx
 1ed:	84 db                	test   %bl,%bl
 1ef:	74 1d                	je     20e <strchr+0x2e>
    if(*s == c)
 1f1:	38 d3                	cmp    %dl,%bl
 1f3:	89 d1                	mov    %edx,%ecx
 1f5:	75 0d                	jne    204 <strchr+0x24>
 1f7:	eb 17                	jmp    210 <strchr+0x30>
 1f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 200:	38 ca                	cmp    %cl,%dl
 202:	74 0c                	je     210 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 204:	83 c0 01             	add    $0x1,%eax
 207:	0f b6 10             	movzbl (%eax),%edx
 20a:	84 d2                	test   %dl,%dl
 20c:	75 f2                	jne    200 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 20e:	31 c0                	xor    %eax,%eax
}
 210:	5b                   	pop    %ebx
 211:	5d                   	pop    %ebp
 212:	c3                   	ret    
 213:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 219:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000220 <gets>:

char*
gets(char *buf, int max)
{
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	57                   	push   %edi
 224:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 225:	31 f6                	xor    %esi,%esi
  return 0;
}

char*
gets(char *buf, int max)
{
 227:	53                   	push   %ebx
 228:	83 ec 2c             	sub    $0x2c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 22b:	8d 7d e7             	lea    -0x19(%ebp),%edi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 22e:	eb 31                	jmp    261 <gets+0x41>
    cc = read(0, &c, 1);
 230:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 237:	00 
 238:	89 7c 24 04          	mov    %edi,0x4(%esp)
 23c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 243:	e8 02 01 00 00       	call   34a <read>
    if(cc < 1)
 248:	85 c0                	test   %eax,%eax
 24a:	7e 1d                	jle    269 <gets+0x49>
      break;
    buf[i++] = c;
 24c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 250:	89 de                	mov    %ebx,%esi
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 252:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
 255:	3c 0d                	cmp    $0xd,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 257:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 25b:	74 0c                	je     269 <gets+0x49>
 25d:	3c 0a                	cmp    $0xa,%al
 25f:	74 08                	je     269 <gets+0x49>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 261:	8d 5e 01             	lea    0x1(%esi),%ebx
 264:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 267:	7c c7                	jl     230 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 269:	8b 45 08             	mov    0x8(%ebp),%eax
 26c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 270:	83 c4 2c             	add    $0x2c,%esp
 273:	5b                   	pop    %ebx
 274:	5e                   	pop    %esi
 275:	5f                   	pop    %edi
 276:	5d                   	pop    %ebp
 277:	c3                   	ret    
 278:	90                   	nop
 279:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000280 <stat>:

int
stat(char *n, struct stat *st)
{
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	56                   	push   %esi
 284:	53                   	push   %ebx
 285:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 288:	8b 45 08             	mov    0x8(%ebp),%eax
 28b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 292:	00 
 293:	89 04 24             	mov    %eax,(%esp)
 296:	e8 d7 00 00 00       	call   372 <open>
  if(fd < 0)
 29b:	85 c0                	test   %eax,%eax
stat(char *n, struct stat *st)
{
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 29d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
 29f:	78 27                	js     2c8 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 2a1:	8b 45 0c             	mov    0xc(%ebp),%eax
 2a4:	89 1c 24             	mov    %ebx,(%esp)
 2a7:	89 44 24 04          	mov    %eax,0x4(%esp)
 2ab:	e8 da 00 00 00       	call   38a <fstat>
  close(fd);
 2b0:	89 1c 24             	mov    %ebx,(%esp)
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
 2b3:	89 c6                	mov    %eax,%esi
  close(fd);
 2b5:	e8 a0 00 00 00       	call   35a <close>
  return r;
 2ba:	89 f0                	mov    %esi,%eax
}
 2bc:	83 c4 10             	add    $0x10,%esp
 2bf:	5b                   	pop    %ebx
 2c0:	5e                   	pop    %esi
 2c1:	5d                   	pop    %ebp
 2c2:	c3                   	ret    
 2c3:	90                   	nop
 2c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 2c8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 2cd:	eb ed                	jmp    2bc <stat+0x3c>
 2cf:	90                   	nop

000002d0 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2d6:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 2d7:	0f be 11             	movsbl (%ecx),%edx
 2da:	8d 42 d0             	lea    -0x30(%edx),%eax
 2dd:	3c 09                	cmp    $0x9,%al
int
atoi(const char *s)
{
  int n;

  n = 0;
 2df:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 2e4:	77 17                	ja     2fd <atoi+0x2d>
 2e6:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 2e8:	83 c1 01             	add    $0x1,%ecx
 2eb:	8d 04 80             	lea    (%eax,%eax,4),%eax
 2ee:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 2f2:	0f be 11             	movsbl (%ecx),%edx
 2f5:	8d 5a d0             	lea    -0x30(%edx),%ebx
 2f8:	80 fb 09             	cmp    $0x9,%bl
 2fb:	76 eb                	jbe    2e8 <atoi+0x18>
    n = n*10 + *s++ - '0';
  return n;
}
 2fd:	5b                   	pop    %ebx
 2fe:	5d                   	pop    %ebp
 2ff:	c3                   	ret    

00000300 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 300:	55                   	push   %ebp
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 301:	31 d2                	xor    %edx,%edx
  return n;
}

void*
memmove(void *vdst, void *vsrc, int n)
{
 303:	89 e5                	mov    %esp,%ebp
 305:	56                   	push   %esi
 306:	8b 45 08             	mov    0x8(%ebp),%eax
 309:	53                   	push   %ebx
 30a:	8b 5d 10             	mov    0x10(%ebp),%ebx
 30d:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 310:	85 db                	test   %ebx,%ebx
 312:	7e 12                	jle    326 <memmove+0x26>
 314:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 318:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 31c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 31f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 322:	39 da                	cmp    %ebx,%edx
 324:	75 f2                	jne    318 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 326:	5b                   	pop    %ebx
 327:	5e                   	pop    %esi
 328:	5d                   	pop    %ebp
 329:	c3                   	ret    

0000032a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 32a:	b8 01 00 00 00       	mov    $0x1,%eax
 32f:	cd 40                	int    $0x40
 331:	c3                   	ret    

00000332 <exit>:
SYSCALL(exit)
 332:	b8 02 00 00 00       	mov    $0x2,%eax
 337:	cd 40                	int    $0x40
 339:	c3                   	ret    

0000033a <wait>:
SYSCALL(wait)
 33a:	b8 03 00 00 00       	mov    $0x3,%eax
 33f:	cd 40                	int    $0x40
 341:	c3                   	ret    

00000342 <pipe>:
SYSCALL(pipe)
 342:	b8 04 00 00 00       	mov    $0x4,%eax
 347:	cd 40                	int    $0x40
 349:	c3                   	ret    

0000034a <read>:
SYSCALL(read)
 34a:	b8 05 00 00 00       	mov    $0x5,%eax
 34f:	cd 40                	int    $0x40
 351:	c3                   	ret    

00000352 <write>:
SYSCALL(write)
 352:	b8 10 00 00 00       	mov    $0x10,%eax
 357:	cd 40                	int    $0x40
 359:	c3                   	ret    

0000035a <close>:
SYSCALL(close)
 35a:	b8 15 00 00 00       	mov    $0x15,%eax
 35f:	cd 40                	int    $0x40
 361:	c3                   	ret    

00000362 <kill>:
SYSCALL(kill)
 362:	b8 06 00 00 00       	mov    $0x6,%eax
 367:	cd 40                	int    $0x40
 369:	c3                   	ret    

0000036a <exec>:
SYSCALL(exec)
 36a:	b8 07 00 00 00       	mov    $0x7,%eax
 36f:	cd 40                	int    $0x40
 371:	c3                   	ret    

00000372 <open>:
SYSCALL(open)
 372:	b8 0f 00 00 00       	mov    $0xf,%eax
 377:	cd 40                	int    $0x40
 379:	c3                   	ret    

0000037a <mknod>:
SYSCALL(mknod)
 37a:	b8 11 00 00 00       	mov    $0x11,%eax
 37f:	cd 40                	int    $0x40
 381:	c3                   	ret    

00000382 <unlink>:
SYSCALL(unlink)
 382:	b8 12 00 00 00       	mov    $0x12,%eax
 387:	cd 40                	int    $0x40
 389:	c3                   	ret    

0000038a <fstat>:
SYSCALL(fstat)
 38a:	b8 08 00 00 00       	mov    $0x8,%eax
 38f:	cd 40                	int    $0x40
 391:	c3                   	ret    

00000392 <link>:
SYSCALL(link)
 392:	b8 13 00 00 00       	mov    $0x13,%eax
 397:	cd 40                	int    $0x40
 399:	c3                   	ret    

0000039a <mkdir>:
SYSCALL(mkdir)
 39a:	b8 14 00 00 00       	mov    $0x14,%eax
 39f:	cd 40                	int    $0x40
 3a1:	c3                   	ret    

000003a2 <chdir>:
SYSCALL(chdir)
 3a2:	b8 09 00 00 00       	mov    $0x9,%eax
 3a7:	cd 40                	int    $0x40
 3a9:	c3                   	ret    

000003aa <dup>:
SYSCALL(dup)
 3aa:	b8 0a 00 00 00       	mov    $0xa,%eax
 3af:	cd 40                	int    $0x40
 3b1:	c3                   	ret    

000003b2 <getpid>:
SYSCALL(getpid)
 3b2:	b8 0b 00 00 00       	mov    $0xb,%eax
 3b7:	cd 40                	int    $0x40
 3b9:	c3                   	ret    

000003ba <sbrk>:
SYSCALL(sbrk)
 3ba:	b8 0c 00 00 00       	mov    $0xc,%eax
 3bf:	cd 40                	int    $0x40
 3c1:	c3                   	ret    

000003c2 <sleep>:
SYSCALL(sleep)
 3c2:	b8 0d 00 00 00       	mov    $0xd,%eax
 3c7:	cd 40                	int    $0x40
 3c9:	c3                   	ret    

000003ca <uptime>:
SYSCALL(uptime)
 3ca:	b8 0e 00 00 00       	mov    $0xe,%eax
 3cf:	cd 40                	int    $0x40
 3d1:	c3                   	ret    

000003d2 <chpr>:
SYSCALL(chpr)
 3d2:	b8 17 00 00 00       	mov    $0x17,%eax
 3d7:	cd 40                	int    $0x40
 3d9:	c3                   	ret    

000003da <cps>:

SYSCALL(cps)
 3da:	b8 16 00 00 00       	mov    $0x16,%eax
 3df:	cd 40                	int    $0x40
 3e1:	c3                   	ret    
 3e2:	66 90                	xchg   %ax,%ax
 3e4:	66 90                	xchg   %ax,%ax
 3e6:	66 90                	xchg   %ax,%ax
 3e8:	66 90                	xchg   %ax,%ax
 3ea:	66 90                	xchg   %ax,%ax
 3ec:	66 90                	xchg   %ax,%ax
 3ee:	66 90                	xchg   %ax,%ax

000003f0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	57                   	push   %edi
 3f4:	56                   	push   %esi
 3f5:	89 c6                	mov    %eax,%esi
 3f7:	53                   	push   %ebx
 3f8:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 3fb:	8b 5d 08             	mov    0x8(%ebp),%ebx
 3fe:	85 db                	test   %ebx,%ebx
 400:	74 09                	je     40b <printint+0x1b>
 402:	89 d0                	mov    %edx,%eax
 404:	c1 e8 1f             	shr    $0x1f,%eax
 407:	84 c0                	test   %al,%al
 409:	75 75                	jne    480 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 40b:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 40d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 414:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
 417:	31 ff                	xor    %edi,%edi
 419:	89 ce                	mov    %ecx,%esi
 41b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 41e:	eb 02                	jmp    422 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 420:	89 cf                	mov    %ecx,%edi
 422:	31 d2                	xor    %edx,%edx
 424:	f7 f6                	div    %esi
 426:	8d 4f 01             	lea    0x1(%edi),%ecx
 429:	0f b6 92 4d 08 00 00 	movzbl 0x84d(%edx),%edx
  }while((x /= base) != 0);
 430:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 432:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 435:	75 e9                	jne    420 <printint+0x30>
  if(neg)
 437:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 43a:	89 c8                	mov    %ecx,%eax
 43c:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
 43f:	85 d2                	test   %edx,%edx
 441:	74 08                	je     44b <printint+0x5b>
    buf[i++] = '-';
 443:	8d 4f 02             	lea    0x2(%edi),%ecx
 446:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 44b:	8d 79 ff             	lea    -0x1(%ecx),%edi
 44e:	66 90                	xchg   %ax,%ax
 450:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 455:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 458:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 45f:	00 
 460:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 464:	89 34 24             	mov    %esi,(%esp)
 467:	88 45 d7             	mov    %al,-0x29(%ebp)
 46a:	e8 e3 fe ff ff       	call   352 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 46f:	83 ff ff             	cmp    $0xffffffff,%edi
 472:	75 dc                	jne    450 <printint+0x60>
    putc(fd, buf[i]);
}
 474:	83 c4 4c             	add    $0x4c,%esp
 477:	5b                   	pop    %ebx
 478:	5e                   	pop    %esi
 479:	5f                   	pop    %edi
 47a:	5d                   	pop    %ebp
 47b:	c3                   	ret    
 47c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 480:	89 d0                	mov    %edx,%eax
 482:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 484:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 48b:	eb 87                	jmp    414 <printint+0x24>
 48d:	8d 76 00             	lea    0x0(%esi),%esi

00000490 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 494:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 496:	56                   	push   %esi
 497:	53                   	push   %ebx
 498:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 49b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 49e:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 4a1:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 4a4:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 4a7:	0f b6 13             	movzbl (%ebx),%edx
 4aa:	83 c3 01             	add    $0x1,%ebx
 4ad:	84 d2                	test   %dl,%dl
 4af:	75 39                	jne    4ea <printf+0x5a>
 4b1:	e9 c2 00 00 00       	jmp    578 <printf+0xe8>
 4b6:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 4b8:	83 fa 25             	cmp    $0x25,%edx
 4bb:	0f 84 bf 00 00 00    	je     580 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 4c1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 4c4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 4cb:	00 
 4cc:	89 44 24 04          	mov    %eax,0x4(%esp)
 4d0:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
 4d3:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 4d6:	e8 77 fe ff ff       	call   352 <write>
 4db:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 4de:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 4e2:	84 d2                	test   %dl,%dl
 4e4:	0f 84 8e 00 00 00    	je     578 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
 4ea:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 4ec:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 4ef:	74 c7                	je     4b8 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 4f1:	83 ff 25             	cmp    $0x25,%edi
 4f4:	75 e5                	jne    4db <printf+0x4b>
      if(c == 'd'){
 4f6:	83 fa 64             	cmp    $0x64,%edx
 4f9:	0f 84 31 01 00 00    	je     630 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 4ff:	25 f7 00 00 00       	and    $0xf7,%eax
 504:	83 f8 70             	cmp    $0x70,%eax
 507:	0f 84 83 00 00 00    	je     590 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 50d:	83 fa 73             	cmp    $0x73,%edx
 510:	0f 84 a2 00 00 00    	je     5b8 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 516:	83 fa 63             	cmp    $0x63,%edx
 519:	0f 84 35 01 00 00    	je     654 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 51f:	83 fa 25             	cmp    $0x25,%edx
 522:	0f 84 e0 00 00 00    	je     608 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 528:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 52b:	83 c3 01             	add    $0x1,%ebx
 52e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 535:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 536:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 538:	89 44 24 04          	mov    %eax,0x4(%esp)
 53c:	89 34 24             	mov    %esi,(%esp)
 53f:	89 55 d0             	mov    %edx,-0x30(%ebp)
 542:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 546:	e8 07 fe ff ff       	call   352 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 54b:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 54e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 551:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 558:	00 
 559:	89 44 24 04          	mov    %eax,0x4(%esp)
 55d:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 560:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 563:	e8 ea fd ff ff       	call   352 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 568:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 56c:	84 d2                	test   %dl,%dl
 56e:	0f 85 76 ff ff ff    	jne    4ea <printf+0x5a>
 574:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 578:	83 c4 3c             	add    $0x3c,%esp
 57b:	5b                   	pop    %ebx
 57c:	5e                   	pop    %esi
 57d:	5f                   	pop    %edi
 57e:	5d                   	pop    %ebp
 57f:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 580:	bf 25 00 00 00       	mov    $0x25,%edi
 585:	e9 51 ff ff ff       	jmp    4db <printf+0x4b>
 58a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 590:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 593:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 598:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 59a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 5a1:	8b 10                	mov    (%eax),%edx
 5a3:	89 f0                	mov    %esi,%eax
 5a5:	e8 46 fe ff ff       	call   3f0 <printint>
        ap++;
 5aa:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 5ae:	e9 28 ff ff ff       	jmp    4db <printf+0x4b>
 5b3:	90                   	nop
 5b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 5b8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 5bb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
 5bf:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
 5c1:	b8 46 08 00 00       	mov    $0x846,%eax
 5c6:	85 ff                	test   %edi,%edi
 5c8:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 5cb:	0f b6 07             	movzbl (%edi),%eax
 5ce:	84 c0                	test   %al,%al
 5d0:	74 2a                	je     5fc <printf+0x16c>
 5d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 5d8:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5db:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 5de:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5e1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 5e8:	00 
 5e9:	89 44 24 04          	mov    %eax,0x4(%esp)
 5ed:	89 34 24             	mov    %esi,(%esp)
 5f0:	e8 5d fd ff ff       	call   352 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 5f5:	0f b6 07             	movzbl (%edi),%eax
 5f8:	84 c0                	test   %al,%al
 5fa:	75 dc                	jne    5d8 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 5fc:	31 ff                	xor    %edi,%edi
 5fe:	e9 d8 fe ff ff       	jmp    4db <printf+0x4b>
 603:	90                   	nop
 604:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 608:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 60b:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 60d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 614:	00 
 615:	89 44 24 04          	mov    %eax,0x4(%esp)
 619:	89 34 24             	mov    %esi,(%esp)
 61c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 620:	e8 2d fd ff ff       	call   352 <write>
 625:	e9 b1 fe ff ff       	jmp    4db <printf+0x4b>
 62a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 630:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 633:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 638:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 63b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 642:	8b 10                	mov    (%eax),%edx
 644:	89 f0                	mov    %esi,%eax
 646:	e8 a5 fd ff ff       	call   3f0 <printint>
        ap++;
 64b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 64f:	e9 87 fe ff ff       	jmp    4db <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 654:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 657:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 659:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 65b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 662:	00 
 663:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 666:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 669:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 66c:	89 44 24 04          	mov    %eax,0x4(%esp)
 670:	e8 dd fc ff ff       	call   352 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
 675:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 679:	e9 5d fe ff ff       	jmp    4db <printf+0x4b>
 67e:	66 90                	xchg   %ax,%ax

00000680 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 680:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 681:	a1 cc 0a 00 00       	mov    0xacc,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 686:	89 e5                	mov    %esp,%ebp
 688:	57                   	push   %edi
 689:	56                   	push   %esi
 68a:	53                   	push   %ebx
 68b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 68e:	8b 08                	mov    (%eax),%ecx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 690:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 693:	39 d0                	cmp    %edx,%eax
 695:	72 11                	jb     6a8 <free+0x28>
 697:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 698:	39 c8                	cmp    %ecx,%eax
 69a:	72 04                	jb     6a0 <free+0x20>
 69c:	39 ca                	cmp    %ecx,%edx
 69e:	72 10                	jb     6b0 <free+0x30>
 6a0:	89 c8                	mov    %ecx,%eax
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6a2:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6a4:	8b 08                	mov    (%eax),%ecx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6a6:	73 f0                	jae    698 <free+0x18>
 6a8:	39 ca                	cmp    %ecx,%edx
 6aa:	72 04                	jb     6b0 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6ac:	39 c8                	cmp    %ecx,%eax
 6ae:	72 f0                	jb     6a0 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 6b0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 6b3:	8d 3c f2             	lea    (%edx,%esi,8),%edi
 6b6:	39 cf                	cmp    %ecx,%edi
 6b8:	74 1e                	je     6d8 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 6ba:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 6bd:	8b 48 04             	mov    0x4(%eax),%ecx
 6c0:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 6c3:	39 f2                	cmp    %esi,%edx
 6c5:	74 28                	je     6ef <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 6c7:	89 10                	mov    %edx,(%eax)
  freep = p;
 6c9:	a3 cc 0a 00 00       	mov    %eax,0xacc
}
 6ce:	5b                   	pop    %ebx
 6cf:	5e                   	pop    %esi
 6d0:	5f                   	pop    %edi
 6d1:	5d                   	pop    %ebp
 6d2:	c3                   	ret    
 6d3:	90                   	nop
 6d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 6d8:	03 71 04             	add    0x4(%ecx),%esi
 6db:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 6de:	8b 08                	mov    (%eax),%ecx
 6e0:	8b 09                	mov    (%ecx),%ecx
 6e2:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 6e5:	8b 48 04             	mov    0x4(%eax),%ecx
 6e8:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 6eb:	39 f2                	cmp    %esi,%edx
 6ed:	75 d8                	jne    6c7 <free+0x47>
    p->s.size += bp->s.size;
 6ef:	03 4b fc             	add    -0x4(%ebx),%ecx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 6f2:	a3 cc 0a 00 00       	mov    %eax,0xacc
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 6f7:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 6fa:	8b 53 f8             	mov    -0x8(%ebx),%edx
 6fd:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 6ff:	5b                   	pop    %ebx
 700:	5e                   	pop    %esi
 701:	5f                   	pop    %edi
 702:	5d                   	pop    %ebp
 703:	c3                   	ret    
 704:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 70a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000710 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 710:	55                   	push   %ebp
 711:	89 e5                	mov    %esp,%ebp
 713:	57                   	push   %edi
 714:	56                   	push   %esi
 715:	53                   	push   %ebx
 716:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 719:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 71c:	8b 1d cc 0a 00 00    	mov    0xacc,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 722:	8d 48 07             	lea    0x7(%eax),%ecx
 725:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
 728:	85 db                	test   %ebx,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 72a:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
 72d:	0f 84 9b 00 00 00    	je     7ce <malloc+0xbe>
 733:	8b 13                	mov    (%ebx),%edx
 735:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 738:	39 fe                	cmp    %edi,%esi
 73a:	76 64                	jbe    7a0 <malloc+0x90>
 73c:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
 743:	bb 00 80 00 00       	mov    $0x8000,%ebx
 748:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 74b:	eb 0e                	jmp    75b <malloc+0x4b>
 74d:	8d 76 00             	lea    0x0(%esi),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 750:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 752:	8b 78 04             	mov    0x4(%eax),%edi
 755:	39 fe                	cmp    %edi,%esi
 757:	76 4f                	jbe    7a8 <malloc+0x98>
 759:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 75b:	3b 15 cc 0a 00 00    	cmp    0xacc,%edx
 761:	75 ed                	jne    750 <malloc+0x40>
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
 763:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 766:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 76c:	bf 00 10 00 00       	mov    $0x1000,%edi
 771:	0f 43 fe             	cmovae %esi,%edi
 774:	0f 42 c3             	cmovb  %ebx,%eax
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 777:	89 04 24             	mov    %eax,(%esp)
 77a:	e8 3b fc ff ff       	call   3ba <sbrk>
  if(p == (char*)-1)
 77f:	83 f8 ff             	cmp    $0xffffffff,%eax
 782:	74 18                	je     79c <malloc+0x8c>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 784:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
 787:	83 c0 08             	add    $0x8,%eax
 78a:	89 04 24             	mov    %eax,(%esp)
 78d:	e8 ee fe ff ff       	call   680 <free>
  return freep;
 792:	8b 15 cc 0a 00 00    	mov    0xacc,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 798:	85 d2                	test   %edx,%edx
 79a:	75 b4                	jne    750 <malloc+0x40>
        return 0;
 79c:	31 c0                	xor    %eax,%eax
 79e:	eb 20                	jmp    7c0 <malloc+0xb0>
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 7a0:	89 d0                	mov    %edx,%eax
 7a2:	89 da                	mov    %ebx,%edx
 7a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 7a8:	39 fe                	cmp    %edi,%esi
 7aa:	74 1c                	je     7c8 <malloc+0xb8>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 7ac:	29 f7                	sub    %esi,%edi
 7ae:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
 7b1:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
 7b4:	89 70 04             	mov    %esi,0x4(%eax)
      }
      freep = prevp;
 7b7:	89 15 cc 0a 00 00    	mov    %edx,0xacc
      return (void*)(p + 1);
 7bd:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 7c0:	83 c4 1c             	add    $0x1c,%esp
 7c3:	5b                   	pop    %ebx
 7c4:	5e                   	pop    %esi
 7c5:	5f                   	pop    %edi
 7c6:	5d                   	pop    %ebp
 7c7:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 7c8:	8b 08                	mov    (%eax),%ecx
 7ca:	89 0a                	mov    %ecx,(%edx)
 7cc:	eb e9                	jmp    7b7 <malloc+0xa7>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 7ce:	c7 05 cc 0a 00 00 d0 	movl   $0xad0,0xacc
 7d5:	0a 00 00 
    base.s.size = 0;
 7d8:	ba d0 0a 00 00       	mov    $0xad0,%edx
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 7dd:	c7 05 d0 0a 00 00 d0 	movl   $0xad0,0xad0
 7e4:	0a 00 00 
    base.s.size = 0;
 7e7:	c7 05 d4 0a 00 00 00 	movl   $0x0,0xad4
 7ee:	00 00 00 
 7f1:	e9 46 ff ff ff       	jmp    73c <malloc+0x2c>
