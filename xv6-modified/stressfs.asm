
_stressfs:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "fs.h"
#include "fcntl.h"

int
main(int argc, char *argv[])
{
   0:	55                   	push   %ebp
  int fd, i;
  char path[] = "stressfs0";
   1:	b8 30 00 00 00       	mov    $0x30,%eax
#include "fs.h"
#include "fcntl.h"

int
main(int argc, char *argv[])
{
   6:	89 e5                	mov    %esp,%ebp
   8:	57                   	push   %edi
   9:	56                   	push   %esi
   a:	53                   	push   %ebx
  char data[512];

  printf(1, "stressfs starting\n");
  memset(data, 'a', sizeof(data));

  for(i = 0; i < 4; i++)
   b:	31 db                	xor    %ebx,%ebx
#include "fs.h"
#include "fcntl.h"

int
main(int argc, char *argv[])
{
   d:	83 e4 f0             	and    $0xfffffff0,%esp
  10:	81 ec 20 02 00 00    	sub    $0x220,%esp
  int fd, i;
  char path[] = "stressfs0";
  char data[512];

  printf(1, "stressfs starting\n");
  16:	c7 44 24 04 26 08 00 	movl   $0x826,0x4(%esp)
  1d:	00 
  memset(data, 'a', sizeof(data));
  1e:	8d 74 24 20          	lea    0x20(%esp),%esi
{
  int fd, i;
  char path[] = "stressfs0";
  char data[512];

  printf(1, "stressfs starting\n");
  22:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)

int
main(int argc, char *argv[])
{
  int fd, i;
  char path[] = "stressfs0";
  29:	66 89 44 24 1e       	mov    %ax,0x1e(%esp)
  2e:	c7 44 24 16 73 74 72 	movl   $0x65727473,0x16(%esp)
  35:	65 
  36:	c7 44 24 1a 73 73 66 	movl   $0x73667373,0x1a(%esp)
  3d:	73 
  char data[512];

  printf(1, "stressfs starting\n");
  3e:	e8 7d 04 00 00       	call   4c0 <printf>
  memset(data, 'a', sizeof(data));
  43:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
  4a:	00 
  4b:	c7 44 24 04 61 00 00 	movl   $0x61,0x4(%esp)
  52:	00 
  53:	89 34 24             	mov    %esi,(%esp)
  56:	e8 95 01 00 00       	call   1f0 <memset>

  for(i = 0; i < 4; i++)
    if(fork() > 0)
  5b:	e8 fa 02 00 00       	call   35a <fork>
  60:	85 c0                	test   %eax,%eax
  62:	0f 8f c3 00 00 00    	jg     12b <main+0x12b>
  char data[512];

  printf(1, "stressfs starting\n");
  memset(data, 'a', sizeof(data));

  for(i = 0; i < 4; i++)
  68:	83 c3 01             	add    $0x1,%ebx
  6b:	83 fb 04             	cmp    $0x4,%ebx
  6e:	75 eb                	jne    5b <main+0x5b>
  70:	bf 04 00 00 00       	mov    $0x4,%edi
    if(fork() > 0)
      break;

  printf(1, "write %d\n", i);
  75:	89 5c 24 08          	mov    %ebx,0x8(%esp)

  path[8] += i;
  fd = open(path, O_CREATE | O_RDWR);
  79:	bb 14 00 00 00       	mov    $0x14,%ebx

  for(i = 0; i < 4; i++)
    if(fork() > 0)
      break;

  printf(1, "write %d\n", i);
  7e:	c7 44 24 04 39 08 00 	movl   $0x839,0x4(%esp)
  85:	00 
  86:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  8d:	e8 2e 04 00 00       	call   4c0 <printf>

  path[8] += i;
  92:	89 f8                	mov    %edi,%eax
  94:	00 44 24 1e          	add    %al,0x1e(%esp)
  fd = open(path, O_CREATE | O_RDWR);
  98:	8d 44 24 16          	lea    0x16(%esp),%eax
  9c:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
  a3:	00 
  a4:	89 04 24             	mov    %eax,(%esp)
  a7:	e8 f6 02 00 00       	call   3a2 <open>
  ac:	89 c7                	mov    %eax,%edi
  ae:	66 90                	xchg   %ax,%ax
  for(i = 0; i < 20; i++)
//    printf(fd, "%d\n", i);
    write(fd, data, sizeof(data));
  b0:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
  b7:	00 
  b8:	89 74 24 04          	mov    %esi,0x4(%esp)
  bc:	89 3c 24             	mov    %edi,(%esp)
  bf:	e8 be 02 00 00       	call   382 <write>

  printf(1, "write %d\n", i);

  path[8] += i;
  fd = open(path, O_CREATE | O_RDWR);
  for(i = 0; i < 20; i++)
  c4:	83 eb 01             	sub    $0x1,%ebx
  c7:	75 e7                	jne    b0 <main+0xb0>
//    printf(fd, "%d\n", i);
    write(fd, data, sizeof(data));
  close(fd);
  c9:	89 3c 24             	mov    %edi,(%esp)

  printf(1, "read\n");

  fd = open(path, O_RDONLY);
  cc:	bb 14 00 00 00       	mov    $0x14,%ebx
  path[8] += i;
  fd = open(path, O_CREATE | O_RDWR);
  for(i = 0; i < 20; i++)
//    printf(fd, "%d\n", i);
    write(fd, data, sizeof(data));
  close(fd);
  d1:	e8 b4 02 00 00       	call   38a <close>

  printf(1, "read\n");
  d6:	c7 44 24 04 43 08 00 	movl   $0x843,0x4(%esp)
  dd:	00 
  de:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  e5:	e8 d6 03 00 00       	call   4c0 <printf>

  fd = open(path, O_RDONLY);
  ea:	8d 44 24 16          	lea    0x16(%esp),%eax
  ee:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  f5:	00 
  f6:	89 04 24             	mov    %eax,(%esp)
  f9:	e8 a4 02 00 00       	call   3a2 <open>
  fe:	89 c7                	mov    %eax,%edi
  for (i = 0; i < 20; i++)
    read(fd, data, sizeof(data));
 100:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
 107:	00 
 108:	89 74 24 04          	mov    %esi,0x4(%esp)
 10c:	89 3c 24             	mov    %edi,(%esp)
 10f:	e8 66 02 00 00       	call   37a <read>
  close(fd);

  printf(1, "read\n");

  fd = open(path, O_RDONLY);
  for (i = 0; i < 20; i++)
 114:	83 eb 01             	sub    $0x1,%ebx
 117:	75 e7                	jne    100 <main+0x100>
    read(fd, data, sizeof(data));
  close(fd);
 119:	89 3c 24             	mov    %edi,(%esp)
 11c:	e8 69 02 00 00       	call   38a <close>

  wait();
 121:	e8 44 02 00 00       	call   36a <wait>

  exit();
 126:	e8 37 02 00 00       	call   362 <exit>
 12b:	89 df                	mov    %ebx,%edi
 12d:	8d 76 00             	lea    0x0(%esi),%esi
 130:	e9 40 ff ff ff       	jmp    75 <main+0x75>
 135:	66 90                	xchg   %ax,%ax
 137:	66 90                	xchg   %ax,%ax
 139:	66 90                	xchg   %ax,%ax
 13b:	66 90                	xchg   %ax,%ax
 13d:	66 90                	xchg   %ax,%ax
 13f:	90                   	nop

00000140 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 140:	55                   	push   %ebp
 141:	89 e5                	mov    %esp,%ebp
 143:	8b 45 08             	mov    0x8(%ebp),%eax
 146:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 149:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 14a:	89 c2                	mov    %eax,%edx
 14c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 150:	83 c1 01             	add    $0x1,%ecx
 153:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 157:	83 c2 01             	add    $0x1,%edx
 15a:	84 db                	test   %bl,%bl
 15c:	88 5a ff             	mov    %bl,-0x1(%edx)
 15f:	75 ef                	jne    150 <strcpy+0x10>
    ;
  return os;
}
 161:	5b                   	pop    %ebx
 162:	5d                   	pop    %ebp
 163:	c3                   	ret    
 164:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 16a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000170 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	8b 55 08             	mov    0x8(%ebp),%edx
 176:	53                   	push   %ebx
 177:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 17a:	0f b6 02             	movzbl (%edx),%eax
 17d:	84 c0                	test   %al,%al
 17f:	74 2d                	je     1ae <strcmp+0x3e>
 181:	0f b6 19             	movzbl (%ecx),%ebx
 184:	38 d8                	cmp    %bl,%al
 186:	74 0e                	je     196 <strcmp+0x26>
 188:	eb 2b                	jmp    1b5 <strcmp+0x45>
 18a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 190:	38 c8                	cmp    %cl,%al
 192:	75 15                	jne    1a9 <strcmp+0x39>
    p++, q++;
 194:	89 d9                	mov    %ebx,%ecx
 196:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 199:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 19c:	8d 59 01             	lea    0x1(%ecx),%ebx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 19f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
 1a3:	84 c0                	test   %al,%al
 1a5:	75 e9                	jne    190 <strcmp+0x20>
 1a7:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 1a9:	29 c8                	sub    %ecx,%eax
}
 1ab:	5b                   	pop    %ebx
 1ac:	5d                   	pop    %ebp
 1ad:	c3                   	ret    
 1ae:	0f b6 09             	movzbl (%ecx),%ecx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 1b1:	31 c0                	xor    %eax,%eax
 1b3:	eb f4                	jmp    1a9 <strcmp+0x39>
 1b5:	0f b6 cb             	movzbl %bl,%ecx
 1b8:	eb ef                	jmp    1a9 <strcmp+0x39>
 1ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000001c0 <strlen>:
  return (uchar)*p - (uchar)*q;
}

uint
strlen(char *s)
{
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 1c6:	80 39 00             	cmpb   $0x0,(%ecx)
 1c9:	74 12                	je     1dd <strlen+0x1d>
 1cb:	31 d2                	xor    %edx,%edx
 1cd:	8d 76 00             	lea    0x0(%esi),%esi
 1d0:	83 c2 01             	add    $0x1,%edx
 1d3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 1d7:	89 d0                	mov    %edx,%eax
 1d9:	75 f5                	jne    1d0 <strlen+0x10>
    ;
  return n;
}
 1db:	5d                   	pop    %ebp
 1dc:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 1dd:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 1df:	5d                   	pop    %ebp
 1e0:	c3                   	ret    
 1e1:	eb 0d                	jmp    1f0 <memset>
 1e3:	90                   	nop
 1e4:	90                   	nop
 1e5:	90                   	nop
 1e6:	90                   	nop
 1e7:	90                   	nop
 1e8:	90                   	nop
 1e9:	90                   	nop
 1ea:	90                   	nop
 1eb:	90                   	nop
 1ec:	90                   	nop
 1ed:	90                   	nop
 1ee:	90                   	nop
 1ef:	90                   	nop

000001f0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	8b 55 08             	mov    0x8(%ebp),%edx
 1f6:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 1f7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1fa:	8b 45 0c             	mov    0xc(%ebp),%eax
 1fd:	89 d7                	mov    %edx,%edi
 1ff:	fc                   	cld    
 200:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 202:	89 d0                	mov    %edx,%eax
 204:	5f                   	pop    %edi
 205:	5d                   	pop    %ebp
 206:	c3                   	ret    
 207:	89 f6                	mov    %esi,%esi
 209:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000210 <strchr>:

char*
strchr(const char *s, char c)
{
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
 213:	8b 45 08             	mov    0x8(%ebp),%eax
 216:	53                   	push   %ebx
 217:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
 21a:	0f b6 18             	movzbl (%eax),%ebx
 21d:	84 db                	test   %bl,%bl
 21f:	74 1d                	je     23e <strchr+0x2e>
    if(*s == c)
 221:	38 d3                	cmp    %dl,%bl
 223:	89 d1                	mov    %edx,%ecx
 225:	75 0d                	jne    234 <strchr+0x24>
 227:	eb 17                	jmp    240 <strchr+0x30>
 229:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 230:	38 ca                	cmp    %cl,%dl
 232:	74 0c                	je     240 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 234:	83 c0 01             	add    $0x1,%eax
 237:	0f b6 10             	movzbl (%eax),%edx
 23a:	84 d2                	test   %dl,%dl
 23c:	75 f2                	jne    230 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 23e:	31 c0                	xor    %eax,%eax
}
 240:	5b                   	pop    %ebx
 241:	5d                   	pop    %ebp
 242:	c3                   	ret    
 243:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 249:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000250 <gets>:

char*
gets(char *buf, int max)
{
 250:	55                   	push   %ebp
 251:	89 e5                	mov    %esp,%ebp
 253:	57                   	push   %edi
 254:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 255:	31 f6                	xor    %esi,%esi
  return 0;
}

char*
gets(char *buf, int max)
{
 257:	53                   	push   %ebx
 258:	83 ec 2c             	sub    $0x2c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 25b:	8d 7d e7             	lea    -0x19(%ebp),%edi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 25e:	eb 31                	jmp    291 <gets+0x41>
    cc = read(0, &c, 1);
 260:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 267:	00 
 268:	89 7c 24 04          	mov    %edi,0x4(%esp)
 26c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 273:	e8 02 01 00 00       	call   37a <read>
    if(cc < 1)
 278:	85 c0                	test   %eax,%eax
 27a:	7e 1d                	jle    299 <gets+0x49>
      break;
    buf[i++] = c;
 27c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 280:	89 de                	mov    %ebx,%esi
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 282:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
 285:	3c 0d                	cmp    $0xd,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 287:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 28b:	74 0c                	je     299 <gets+0x49>
 28d:	3c 0a                	cmp    $0xa,%al
 28f:	74 08                	je     299 <gets+0x49>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 291:	8d 5e 01             	lea    0x1(%esi),%ebx
 294:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 297:	7c c7                	jl     260 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 299:	8b 45 08             	mov    0x8(%ebp),%eax
 29c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 2a0:	83 c4 2c             	add    $0x2c,%esp
 2a3:	5b                   	pop    %ebx
 2a4:	5e                   	pop    %esi
 2a5:	5f                   	pop    %edi
 2a6:	5d                   	pop    %ebp
 2a7:	c3                   	ret    
 2a8:	90                   	nop
 2a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000002b0 <stat>:

int
stat(char *n, struct stat *st)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	56                   	push   %esi
 2b4:	53                   	push   %ebx
 2b5:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2b8:	8b 45 08             	mov    0x8(%ebp),%eax
 2bb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 2c2:	00 
 2c3:	89 04 24             	mov    %eax,(%esp)
 2c6:	e8 d7 00 00 00       	call   3a2 <open>
  if(fd < 0)
 2cb:	85 c0                	test   %eax,%eax
stat(char *n, struct stat *st)
{
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2cd:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
 2cf:	78 27                	js     2f8 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 2d1:	8b 45 0c             	mov    0xc(%ebp),%eax
 2d4:	89 1c 24             	mov    %ebx,(%esp)
 2d7:	89 44 24 04          	mov    %eax,0x4(%esp)
 2db:	e8 da 00 00 00       	call   3ba <fstat>
  close(fd);
 2e0:	89 1c 24             	mov    %ebx,(%esp)
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
 2e3:	89 c6                	mov    %eax,%esi
  close(fd);
 2e5:	e8 a0 00 00 00       	call   38a <close>
  return r;
 2ea:	89 f0                	mov    %esi,%eax
}
 2ec:	83 c4 10             	add    $0x10,%esp
 2ef:	5b                   	pop    %ebx
 2f0:	5e                   	pop    %esi
 2f1:	5d                   	pop    %ebp
 2f2:	c3                   	ret    
 2f3:	90                   	nop
 2f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 2f8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 2fd:	eb ed                	jmp    2ec <stat+0x3c>
 2ff:	90                   	nop

00000300 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	8b 4d 08             	mov    0x8(%ebp),%ecx
 306:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 307:	0f be 11             	movsbl (%ecx),%edx
 30a:	8d 42 d0             	lea    -0x30(%edx),%eax
 30d:	3c 09                	cmp    $0x9,%al
int
atoi(const char *s)
{
  int n;

  n = 0;
 30f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 314:	77 17                	ja     32d <atoi+0x2d>
 316:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 318:	83 c1 01             	add    $0x1,%ecx
 31b:	8d 04 80             	lea    (%eax,%eax,4),%eax
 31e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 322:	0f be 11             	movsbl (%ecx),%edx
 325:	8d 5a d0             	lea    -0x30(%edx),%ebx
 328:	80 fb 09             	cmp    $0x9,%bl
 32b:	76 eb                	jbe    318 <atoi+0x18>
    n = n*10 + *s++ - '0';
  return n;
}
 32d:	5b                   	pop    %ebx
 32e:	5d                   	pop    %ebp
 32f:	c3                   	ret    

00000330 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 330:	55                   	push   %ebp
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 331:	31 d2                	xor    %edx,%edx
  return n;
}

void*
memmove(void *vdst, void *vsrc, int n)
{
 333:	89 e5                	mov    %esp,%ebp
 335:	56                   	push   %esi
 336:	8b 45 08             	mov    0x8(%ebp),%eax
 339:	53                   	push   %ebx
 33a:	8b 5d 10             	mov    0x10(%ebp),%ebx
 33d:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 340:	85 db                	test   %ebx,%ebx
 342:	7e 12                	jle    356 <memmove+0x26>
 344:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 348:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 34c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 34f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 352:	39 da                	cmp    %ebx,%edx
 354:	75 f2                	jne    348 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 356:	5b                   	pop    %ebx
 357:	5e                   	pop    %esi
 358:	5d                   	pop    %ebp
 359:	c3                   	ret    

0000035a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 35a:	b8 01 00 00 00       	mov    $0x1,%eax
 35f:	cd 40                	int    $0x40
 361:	c3                   	ret    

00000362 <exit>:
SYSCALL(exit)
 362:	b8 02 00 00 00       	mov    $0x2,%eax
 367:	cd 40                	int    $0x40
 369:	c3                   	ret    

0000036a <wait>:
SYSCALL(wait)
 36a:	b8 03 00 00 00       	mov    $0x3,%eax
 36f:	cd 40                	int    $0x40
 371:	c3                   	ret    

00000372 <pipe>:
SYSCALL(pipe)
 372:	b8 04 00 00 00       	mov    $0x4,%eax
 377:	cd 40                	int    $0x40
 379:	c3                   	ret    

0000037a <read>:
SYSCALL(read)
 37a:	b8 05 00 00 00       	mov    $0x5,%eax
 37f:	cd 40                	int    $0x40
 381:	c3                   	ret    

00000382 <write>:
SYSCALL(write)
 382:	b8 10 00 00 00       	mov    $0x10,%eax
 387:	cd 40                	int    $0x40
 389:	c3                   	ret    

0000038a <close>:
SYSCALL(close)
 38a:	b8 15 00 00 00       	mov    $0x15,%eax
 38f:	cd 40                	int    $0x40
 391:	c3                   	ret    

00000392 <kill>:
SYSCALL(kill)
 392:	b8 06 00 00 00       	mov    $0x6,%eax
 397:	cd 40                	int    $0x40
 399:	c3                   	ret    

0000039a <exec>:
SYSCALL(exec)
 39a:	b8 07 00 00 00       	mov    $0x7,%eax
 39f:	cd 40                	int    $0x40
 3a1:	c3                   	ret    

000003a2 <open>:
SYSCALL(open)
 3a2:	b8 0f 00 00 00       	mov    $0xf,%eax
 3a7:	cd 40                	int    $0x40
 3a9:	c3                   	ret    

000003aa <mknod>:
SYSCALL(mknod)
 3aa:	b8 11 00 00 00       	mov    $0x11,%eax
 3af:	cd 40                	int    $0x40
 3b1:	c3                   	ret    

000003b2 <unlink>:
SYSCALL(unlink)
 3b2:	b8 12 00 00 00       	mov    $0x12,%eax
 3b7:	cd 40                	int    $0x40
 3b9:	c3                   	ret    

000003ba <fstat>:
SYSCALL(fstat)
 3ba:	b8 08 00 00 00       	mov    $0x8,%eax
 3bf:	cd 40                	int    $0x40
 3c1:	c3                   	ret    

000003c2 <link>:
SYSCALL(link)
 3c2:	b8 13 00 00 00       	mov    $0x13,%eax
 3c7:	cd 40                	int    $0x40
 3c9:	c3                   	ret    

000003ca <mkdir>:
SYSCALL(mkdir)
 3ca:	b8 14 00 00 00       	mov    $0x14,%eax
 3cf:	cd 40                	int    $0x40
 3d1:	c3                   	ret    

000003d2 <chdir>:
SYSCALL(chdir)
 3d2:	b8 09 00 00 00       	mov    $0x9,%eax
 3d7:	cd 40                	int    $0x40
 3d9:	c3                   	ret    

000003da <dup>:
SYSCALL(dup)
 3da:	b8 0a 00 00 00       	mov    $0xa,%eax
 3df:	cd 40                	int    $0x40
 3e1:	c3                   	ret    

000003e2 <getpid>:
SYSCALL(getpid)
 3e2:	b8 0b 00 00 00       	mov    $0xb,%eax
 3e7:	cd 40                	int    $0x40
 3e9:	c3                   	ret    

000003ea <sbrk>:
SYSCALL(sbrk)
 3ea:	b8 0c 00 00 00       	mov    $0xc,%eax
 3ef:	cd 40                	int    $0x40
 3f1:	c3                   	ret    

000003f2 <sleep>:
SYSCALL(sleep)
 3f2:	b8 0d 00 00 00       	mov    $0xd,%eax
 3f7:	cd 40                	int    $0x40
 3f9:	c3                   	ret    

000003fa <uptime>:
SYSCALL(uptime)
 3fa:	b8 0e 00 00 00       	mov    $0xe,%eax
 3ff:	cd 40                	int    $0x40
 401:	c3                   	ret    

00000402 <chpr>:
SYSCALL(chpr)
 402:	b8 17 00 00 00       	mov    $0x17,%eax
 407:	cd 40                	int    $0x40
 409:	c3                   	ret    

0000040a <cps>:

SYSCALL(cps)
 40a:	b8 16 00 00 00       	mov    $0x16,%eax
 40f:	cd 40                	int    $0x40
 411:	c3                   	ret    
 412:	66 90                	xchg   %ax,%ax
 414:	66 90                	xchg   %ax,%ax
 416:	66 90                	xchg   %ax,%ax
 418:	66 90                	xchg   %ax,%ax
 41a:	66 90                	xchg   %ax,%ax
 41c:	66 90                	xchg   %ax,%ax
 41e:	66 90                	xchg   %ax,%ax

00000420 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	57                   	push   %edi
 424:	56                   	push   %esi
 425:	89 c6                	mov    %eax,%esi
 427:	53                   	push   %ebx
 428:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 42b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 42e:	85 db                	test   %ebx,%ebx
 430:	74 09                	je     43b <printint+0x1b>
 432:	89 d0                	mov    %edx,%eax
 434:	c1 e8 1f             	shr    $0x1f,%eax
 437:	84 c0                	test   %al,%al
 439:	75 75                	jne    4b0 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 43b:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 43d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 444:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
 447:	31 ff                	xor    %edi,%edi
 449:	89 ce                	mov    %ecx,%esi
 44b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 44e:	eb 02                	jmp    452 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 450:	89 cf                	mov    %ecx,%edi
 452:	31 d2                	xor    %edx,%edx
 454:	f7 f6                	div    %esi
 456:	8d 4f 01             	lea    0x1(%edi),%ecx
 459:	0f b6 92 50 08 00 00 	movzbl 0x850(%edx),%edx
  }while((x /= base) != 0);
 460:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 462:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 465:	75 e9                	jne    450 <printint+0x30>
  if(neg)
 467:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 46a:	89 c8                	mov    %ecx,%eax
 46c:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
 46f:	85 d2                	test   %edx,%edx
 471:	74 08                	je     47b <printint+0x5b>
    buf[i++] = '-';
 473:	8d 4f 02             	lea    0x2(%edi),%ecx
 476:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 47b:	8d 79 ff             	lea    -0x1(%ecx),%edi
 47e:	66 90                	xchg   %ax,%ax
 480:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 485:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 488:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 48f:	00 
 490:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 494:	89 34 24             	mov    %esi,(%esp)
 497:	88 45 d7             	mov    %al,-0x29(%ebp)
 49a:	e8 e3 fe ff ff       	call   382 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 49f:	83 ff ff             	cmp    $0xffffffff,%edi
 4a2:	75 dc                	jne    480 <printint+0x60>
    putc(fd, buf[i]);
}
 4a4:	83 c4 4c             	add    $0x4c,%esp
 4a7:	5b                   	pop    %ebx
 4a8:	5e                   	pop    %esi
 4a9:	5f                   	pop    %edi
 4aa:	5d                   	pop    %ebp
 4ab:	c3                   	ret    
 4ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 4b0:	89 d0                	mov    %edx,%eax
 4b2:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 4b4:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 4bb:	eb 87                	jmp    444 <printint+0x24>
 4bd:	8d 76 00             	lea    0x0(%esi),%esi

000004c0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 4c4:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 4c6:	56                   	push   %esi
 4c7:	53                   	push   %ebx
 4c8:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 4cb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 4ce:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 4d1:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 4d4:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 4d7:	0f b6 13             	movzbl (%ebx),%edx
 4da:	83 c3 01             	add    $0x1,%ebx
 4dd:	84 d2                	test   %dl,%dl
 4df:	75 39                	jne    51a <printf+0x5a>
 4e1:	e9 c2 00 00 00       	jmp    5a8 <printf+0xe8>
 4e6:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 4e8:	83 fa 25             	cmp    $0x25,%edx
 4eb:	0f 84 bf 00 00 00    	je     5b0 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 4f1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 4f4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 4fb:	00 
 4fc:	89 44 24 04          	mov    %eax,0x4(%esp)
 500:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
 503:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 506:	e8 77 fe ff ff       	call   382 <write>
 50b:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 50e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 512:	84 d2                	test   %dl,%dl
 514:	0f 84 8e 00 00 00    	je     5a8 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
 51a:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 51c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 51f:	74 c7                	je     4e8 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 521:	83 ff 25             	cmp    $0x25,%edi
 524:	75 e5                	jne    50b <printf+0x4b>
      if(c == 'd'){
 526:	83 fa 64             	cmp    $0x64,%edx
 529:	0f 84 31 01 00 00    	je     660 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 52f:	25 f7 00 00 00       	and    $0xf7,%eax
 534:	83 f8 70             	cmp    $0x70,%eax
 537:	0f 84 83 00 00 00    	je     5c0 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 53d:	83 fa 73             	cmp    $0x73,%edx
 540:	0f 84 a2 00 00 00    	je     5e8 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 546:	83 fa 63             	cmp    $0x63,%edx
 549:	0f 84 35 01 00 00    	je     684 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 54f:	83 fa 25             	cmp    $0x25,%edx
 552:	0f 84 e0 00 00 00    	je     638 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 558:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 55b:	83 c3 01             	add    $0x1,%ebx
 55e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 565:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 566:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 568:	89 44 24 04          	mov    %eax,0x4(%esp)
 56c:	89 34 24             	mov    %esi,(%esp)
 56f:	89 55 d0             	mov    %edx,-0x30(%ebp)
 572:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 576:	e8 07 fe ff ff       	call   382 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 57b:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 57e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 581:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 588:	00 
 589:	89 44 24 04          	mov    %eax,0x4(%esp)
 58d:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 590:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 593:	e8 ea fd ff ff       	call   382 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 598:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 59c:	84 d2                	test   %dl,%dl
 59e:	0f 85 76 ff ff ff    	jne    51a <printf+0x5a>
 5a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 5a8:	83 c4 3c             	add    $0x3c,%esp
 5ab:	5b                   	pop    %ebx
 5ac:	5e                   	pop    %esi
 5ad:	5f                   	pop    %edi
 5ae:	5d                   	pop    %ebp
 5af:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 5b0:	bf 25 00 00 00       	mov    $0x25,%edi
 5b5:	e9 51 ff ff ff       	jmp    50b <printf+0x4b>
 5ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 5c0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 5c3:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 5c8:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 5ca:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 5d1:	8b 10                	mov    (%eax),%edx
 5d3:	89 f0                	mov    %esi,%eax
 5d5:	e8 46 fe ff ff       	call   420 <printint>
        ap++;
 5da:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 5de:	e9 28 ff ff ff       	jmp    50b <printf+0x4b>
 5e3:	90                   	nop
 5e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 5e8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 5eb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
 5ef:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
 5f1:	b8 49 08 00 00       	mov    $0x849,%eax
 5f6:	85 ff                	test   %edi,%edi
 5f8:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 5fb:	0f b6 07             	movzbl (%edi),%eax
 5fe:	84 c0                	test   %al,%al
 600:	74 2a                	je     62c <printf+0x16c>
 602:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 608:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 60b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 60e:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 611:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 618:	00 
 619:	89 44 24 04          	mov    %eax,0x4(%esp)
 61d:	89 34 24             	mov    %esi,(%esp)
 620:	e8 5d fd ff ff       	call   382 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 625:	0f b6 07             	movzbl (%edi),%eax
 628:	84 c0                	test   %al,%al
 62a:	75 dc                	jne    608 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 62c:	31 ff                	xor    %edi,%edi
 62e:	e9 d8 fe ff ff       	jmp    50b <printf+0x4b>
 633:	90                   	nop
 634:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 638:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 63b:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 63d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 644:	00 
 645:	89 44 24 04          	mov    %eax,0x4(%esp)
 649:	89 34 24             	mov    %esi,(%esp)
 64c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 650:	e8 2d fd ff ff       	call   382 <write>
 655:	e9 b1 fe ff ff       	jmp    50b <printf+0x4b>
 65a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 660:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 663:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 668:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 66b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 672:	8b 10                	mov    (%eax),%edx
 674:	89 f0                	mov    %esi,%eax
 676:	e8 a5 fd ff ff       	call   420 <printint>
        ap++;
 67b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 67f:	e9 87 fe ff ff       	jmp    50b <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 684:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 687:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 689:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 68b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 692:	00 
 693:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 696:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 699:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 69c:	89 44 24 04          	mov    %eax,0x4(%esp)
 6a0:	e8 dd fc ff ff       	call   382 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
 6a5:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 6a9:	e9 5d fe ff ff       	jmp    50b <printf+0x4b>
 6ae:	66 90                	xchg   %ax,%ax

000006b0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 6b0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6b1:	a1 cc 0a 00 00       	mov    0xacc,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 6b6:	89 e5                	mov    %esp,%ebp
 6b8:	57                   	push   %edi
 6b9:	56                   	push   %esi
 6ba:	53                   	push   %ebx
 6bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6be:	8b 08                	mov    (%eax),%ecx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 6c0:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6c3:	39 d0                	cmp    %edx,%eax
 6c5:	72 11                	jb     6d8 <free+0x28>
 6c7:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6c8:	39 c8                	cmp    %ecx,%eax
 6ca:	72 04                	jb     6d0 <free+0x20>
 6cc:	39 ca                	cmp    %ecx,%edx
 6ce:	72 10                	jb     6e0 <free+0x30>
 6d0:	89 c8                	mov    %ecx,%eax
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6d2:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6d4:	8b 08                	mov    (%eax),%ecx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6d6:	73 f0                	jae    6c8 <free+0x18>
 6d8:	39 ca                	cmp    %ecx,%edx
 6da:	72 04                	jb     6e0 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6dc:	39 c8                	cmp    %ecx,%eax
 6de:	72 f0                	jb     6d0 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 6e0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 6e3:	8d 3c f2             	lea    (%edx,%esi,8),%edi
 6e6:	39 cf                	cmp    %ecx,%edi
 6e8:	74 1e                	je     708 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 6ea:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 6ed:	8b 48 04             	mov    0x4(%eax),%ecx
 6f0:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 6f3:	39 f2                	cmp    %esi,%edx
 6f5:	74 28                	je     71f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 6f7:	89 10                	mov    %edx,(%eax)
  freep = p;
 6f9:	a3 cc 0a 00 00       	mov    %eax,0xacc
}
 6fe:	5b                   	pop    %ebx
 6ff:	5e                   	pop    %esi
 700:	5f                   	pop    %edi
 701:	5d                   	pop    %ebp
 702:	c3                   	ret    
 703:	90                   	nop
 704:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 708:	03 71 04             	add    0x4(%ecx),%esi
 70b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 70e:	8b 08                	mov    (%eax),%ecx
 710:	8b 09                	mov    (%ecx),%ecx
 712:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 715:	8b 48 04             	mov    0x4(%eax),%ecx
 718:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 71b:	39 f2                	cmp    %esi,%edx
 71d:	75 d8                	jne    6f7 <free+0x47>
    p->s.size += bp->s.size;
 71f:	03 4b fc             	add    -0x4(%ebx),%ecx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 722:	a3 cc 0a 00 00       	mov    %eax,0xacc
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 727:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 72a:	8b 53 f8             	mov    -0x8(%ebx),%edx
 72d:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 72f:	5b                   	pop    %ebx
 730:	5e                   	pop    %esi
 731:	5f                   	pop    %edi
 732:	5d                   	pop    %ebp
 733:	c3                   	ret    
 734:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 73a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000740 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 740:	55                   	push   %ebp
 741:	89 e5                	mov    %esp,%ebp
 743:	57                   	push   %edi
 744:	56                   	push   %esi
 745:	53                   	push   %ebx
 746:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 749:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 74c:	8b 1d cc 0a 00 00    	mov    0xacc,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 752:	8d 48 07             	lea    0x7(%eax),%ecx
 755:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
 758:	85 db                	test   %ebx,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 75a:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
 75d:	0f 84 9b 00 00 00    	je     7fe <malloc+0xbe>
 763:	8b 13                	mov    (%ebx),%edx
 765:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 768:	39 fe                	cmp    %edi,%esi
 76a:	76 64                	jbe    7d0 <malloc+0x90>
 76c:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
 773:	bb 00 80 00 00       	mov    $0x8000,%ebx
 778:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 77b:	eb 0e                	jmp    78b <malloc+0x4b>
 77d:	8d 76 00             	lea    0x0(%esi),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 780:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 782:	8b 78 04             	mov    0x4(%eax),%edi
 785:	39 fe                	cmp    %edi,%esi
 787:	76 4f                	jbe    7d8 <malloc+0x98>
 789:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 78b:	3b 15 cc 0a 00 00    	cmp    0xacc,%edx
 791:	75 ed                	jne    780 <malloc+0x40>
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
 793:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 796:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 79c:	bf 00 10 00 00       	mov    $0x1000,%edi
 7a1:	0f 43 fe             	cmovae %esi,%edi
 7a4:	0f 42 c3             	cmovb  %ebx,%eax
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 7a7:	89 04 24             	mov    %eax,(%esp)
 7aa:	e8 3b fc ff ff       	call   3ea <sbrk>
  if(p == (char*)-1)
 7af:	83 f8 ff             	cmp    $0xffffffff,%eax
 7b2:	74 18                	je     7cc <malloc+0x8c>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 7b4:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
 7b7:	83 c0 08             	add    $0x8,%eax
 7ba:	89 04 24             	mov    %eax,(%esp)
 7bd:	e8 ee fe ff ff       	call   6b0 <free>
  return freep;
 7c2:	8b 15 cc 0a 00 00    	mov    0xacc,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 7c8:	85 d2                	test   %edx,%edx
 7ca:	75 b4                	jne    780 <malloc+0x40>
        return 0;
 7cc:	31 c0                	xor    %eax,%eax
 7ce:	eb 20                	jmp    7f0 <malloc+0xb0>
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 7d0:	89 d0                	mov    %edx,%eax
 7d2:	89 da                	mov    %ebx,%edx
 7d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 7d8:	39 fe                	cmp    %edi,%esi
 7da:	74 1c                	je     7f8 <malloc+0xb8>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 7dc:	29 f7                	sub    %esi,%edi
 7de:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
 7e1:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
 7e4:	89 70 04             	mov    %esi,0x4(%eax)
      }
      freep = prevp;
 7e7:	89 15 cc 0a 00 00    	mov    %edx,0xacc
      return (void*)(p + 1);
 7ed:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 7f0:	83 c4 1c             	add    $0x1c,%esp
 7f3:	5b                   	pop    %ebx
 7f4:	5e                   	pop    %esi
 7f5:	5f                   	pop    %edi
 7f6:	5d                   	pop    %ebp
 7f7:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 7f8:	8b 08                	mov    (%eax),%ecx
 7fa:	89 0a                	mov    %ecx,(%edx)
 7fc:	eb e9                	jmp    7e7 <malloc+0xa7>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 7fe:	c7 05 cc 0a 00 00 d0 	movl   $0xad0,0xacc
 805:	0a 00 00 
    base.s.size = 0;
 808:	ba d0 0a 00 00       	mov    $0xad0,%edx
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 80d:	c7 05 d0 0a 00 00 d0 	movl   $0xad0,0xad0
 814:	0a 00 00 
    base.s.size = 0;
 817:	c7 05 d4 0a 00 00 00 	movl   $0x0,0xad4
 81e:	00 00 00 
 821:	e9 46 ff ff ff       	jmp    76c <malloc+0x2c>
