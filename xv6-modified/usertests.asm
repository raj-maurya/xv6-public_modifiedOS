
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
       0:	55                   	push   %ebp
       1:	89 e5                	mov    %esp,%ebp
       3:	83 e4 f0             	and    $0xfffffff0,%esp
       6:	83 ec 10             	sub    $0x10,%esp
  printf(1, "usertests starting\n");
       9:	c7 44 24 04 56 51 00 	movl   $0x5156,0x4(%esp)
      10:	00 
      11:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      18:	e8 e3 3d 00 00       	call   3e00 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
      24:	00 
      25:	c7 04 24 6a 51 00 00 	movl   $0x516a,(%esp)
      2c:	e8 b1 3c 00 00       	call   3ce2 <open>
      31:	85 c0                	test   %eax,%eax
      33:	78 19                	js     4e <main+0x4e>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      35:	c7 44 24 04 d4 58 00 	movl   $0x58d4,0x4(%esp)
      3c:	00 
      3d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      44:	e8 b7 3d 00 00       	call   3e00 <printf>
    exit();
      49:	e8 54 3c 00 00       	call   3ca2 <exit>
  }
  close(open("usertests.ran", O_CREATE));
      4e:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
      55:	00 
      56:	c7 04 24 6a 51 00 00 	movl   $0x516a,(%esp)
      5d:	e8 80 3c 00 00       	call   3ce2 <open>
      62:	89 04 24             	mov    %eax,(%esp)
      65:	e8 60 3c 00 00       	call   3cca <close>

  argptest();
      6a:	e8 71 39 00 00       	call   39e0 <argptest>
  createdelete();
      6f:	e8 9c 12 00 00       	call   1310 <createdelete>
  linkunlink();
      74:	e8 27 1c 00 00       	call   1ca0 <linkunlink>
  concreate();
      79:	e8 02 19 00 00       	call   1980 <concreate>
      7e:	66 90                	xchg   %ax,%ax
  fourfiles();
      80:	e8 7b 10 00 00       	call   1100 <fourfiles>
  sharedfd();
      85:	e8 96 0e 00 00       	call   f20 <sharedfd>

  bigargtest();
      8a:	e8 c1 35 00 00       	call   3650 <bigargtest>
      8f:	90                   	nop
  bigwrite();
      90:	e8 fb 25 00 00       	call   2690 <bigwrite>
  bigargtest();
      95:	e8 b6 35 00 00       	call   3650 <bigargtest>
  bsstest();
      9a:	e8 31 35 00 00       	call   35d0 <bsstest>
      9f:	90                   	nop
  sbrktest();
      a0:	e8 0b 30 00 00       	call   30b0 <sbrktest>
  validatetest();
      a5:	e8 76 34 00 00       	call   3520 <validatetest>

  opentest();
      aa:	e8 61 03 00 00       	call   410 <opentest>
      af:	90                   	nop
  writetest();
      b0:	e8 fb 03 00 00       	call   4b0 <writetest>
  writetest1();
      b5:	e8 06 06 00 00       	call   6c0 <writetest1>
  createtest();
      ba:	e8 f1 07 00 00       	call   8b0 <createtest>
      bf:	90                   	nop

  openiputtest();
      c0:	e8 3b 02 00 00       	call   300 <openiputtest>
  exitiputtest();
      c5:	e8 46 01 00 00       	call   210 <exitiputtest>
  iputtest();
      ca:	e8 61 00 00 00       	call   130 <iputtest>
      cf:	90                   	nop

  mem();
      d0:	e8 6b 0d 00 00       	call   e40 <mem>
  pipe1();
      d5:	e8 b6 09 00 00       	call   a90 <pipe1>
  preempt();
      da:	e8 71 0b 00 00       	call   c50 <preempt>
      df:	90                   	nop
  exitwait();
      e0:	e8 cb 0c 00 00       	call   db0 <exitwait>

  rmdot();
      e5:	e8 06 2a 00 00       	call   2af0 <rmdot>
  fourteen();
      ea:	e8 a1 28 00 00       	call   2990 <fourteen>
      ef:	90                   	nop
  bigfile();
      f0:	e8 9b 26 00 00       	call   2790 <bigfile>
  subdir();
      f5:	e8 06 1e 00 00       	call   1f00 <subdir>
  linktest();
      fa:	e8 21 16 00 00       	call   1720 <linktest>
      ff:	90                   	nop
  unlinkread();
     100:	e8 4b 14 00 00       	call   1550 <unlinkread>
  dirfile();
     105:	e8 76 2b 00 00       	call   2c80 <dirfile>
  iref();
     10a:	e8 b1 2d 00 00       	call   2ec0 <iref>
     10f:	90                   	nop
  forktest();
     110:	e8 cb 2e 00 00       	call   2fe0 <forktest>
  bigdir(); // slow
     115:	e8 96 1c 00 00       	call   1db0 <bigdir>

  uio();
     11a:	e8 41 38 00 00       	call   3960 <uio>
     11f:	90                   	nop

  exectest();
     120:	e8 1b 09 00 00       	call   a40 <exectest>

  exit();
     125:	e8 78 3b 00 00       	call   3ca2 <exit>
     12a:	66 90                	xchg   %ax,%ax
     12c:	66 90                	xchg   %ax,%ax
     12e:	66 90                	xchg   %ax,%ax

00000130 <iputtest>:
int stdout = 1;

// does chdir() call iput(p->cwd) in a transaction?
void
iputtest(void)
{
     130:	55                   	push   %ebp
     131:	89 e5                	mov    %esp,%ebp
     133:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "iput test\n");
     136:	a1 e4 61 00 00       	mov    0x61e4,%eax
     13b:	c7 44 24 04 fc 41 00 	movl   $0x41fc,0x4(%esp)
     142:	00 
     143:	89 04 24             	mov    %eax,(%esp)
     146:	e8 b5 3c 00 00       	call   3e00 <printf>

  if(mkdir("iputdir") < 0){
     14b:	c7 04 24 8f 41 00 00 	movl   $0x418f,(%esp)
     152:	e8 b3 3b 00 00       	call   3d0a <mkdir>
     157:	85 c0                	test   %eax,%eax
     159:	78 4b                	js     1a6 <iputtest+0x76>
    printf(stdout, "mkdir failed\n");
    exit();
  }
  if(chdir("iputdir") < 0){
     15b:	c7 04 24 8f 41 00 00 	movl   $0x418f,(%esp)
     162:	e8 ab 3b 00 00       	call   3d12 <chdir>
     167:	85 c0                	test   %eax,%eax
     169:	0f 88 85 00 00 00    	js     1f4 <iputtest+0xc4>
    printf(stdout, "chdir iputdir failed\n");
    exit();
  }
  if(unlink("../iputdir") < 0){
     16f:	c7 04 24 8c 41 00 00 	movl   $0x418c,(%esp)
     176:	e8 77 3b 00 00       	call   3cf2 <unlink>
     17b:	85 c0                	test   %eax,%eax
     17d:	78 5b                	js     1da <iputtest+0xaa>
    printf(stdout, "unlink ../iputdir failed\n");
    exit();
  }
  if(chdir("/") < 0){
     17f:	c7 04 24 b1 41 00 00 	movl   $0x41b1,(%esp)
     186:	e8 87 3b 00 00       	call   3d12 <chdir>
     18b:	85 c0                	test   %eax,%eax
     18d:	78 31                	js     1c0 <iputtest+0x90>
    printf(stdout, "chdir / failed\n");
    exit();
  }
  printf(stdout, "iput test ok\n");
     18f:	a1 e4 61 00 00       	mov    0x61e4,%eax
     194:	c7 44 24 04 34 42 00 	movl   $0x4234,0x4(%esp)
     19b:	00 
     19c:	89 04 24             	mov    %eax,(%esp)
     19f:	e8 5c 3c 00 00       	call   3e00 <printf>
}
     1a4:	c9                   	leave  
     1a5:	c3                   	ret    
iputtest(void)
{
  printf(stdout, "iput test\n");

  if(mkdir("iputdir") < 0){
    printf(stdout, "mkdir failed\n");
     1a6:	a1 e4 61 00 00       	mov    0x61e4,%eax
     1ab:	c7 44 24 04 68 41 00 	movl   $0x4168,0x4(%esp)
     1b2:	00 
     1b3:	89 04 24             	mov    %eax,(%esp)
     1b6:	e8 45 3c 00 00       	call   3e00 <printf>
    exit();
     1bb:	e8 e2 3a 00 00       	call   3ca2 <exit>
  if(unlink("../iputdir") < 0){
    printf(stdout, "unlink ../iputdir failed\n");
    exit();
  }
  if(chdir("/") < 0){
    printf(stdout, "chdir / failed\n");
     1c0:	a1 e4 61 00 00       	mov    0x61e4,%eax
     1c5:	c7 44 24 04 b3 41 00 	movl   $0x41b3,0x4(%esp)
     1cc:	00 
     1cd:	89 04 24             	mov    %eax,(%esp)
     1d0:	e8 2b 3c 00 00       	call   3e00 <printf>
    exit();
     1d5:	e8 c8 3a 00 00       	call   3ca2 <exit>
  if(chdir("iputdir") < 0){
    printf(stdout, "chdir iputdir failed\n");
    exit();
  }
  if(unlink("../iputdir") < 0){
    printf(stdout, "unlink ../iputdir failed\n");
     1da:	a1 e4 61 00 00       	mov    0x61e4,%eax
     1df:	c7 44 24 04 97 41 00 	movl   $0x4197,0x4(%esp)
     1e6:	00 
     1e7:	89 04 24             	mov    %eax,(%esp)
     1ea:	e8 11 3c 00 00       	call   3e00 <printf>
    exit();
     1ef:	e8 ae 3a 00 00       	call   3ca2 <exit>
  if(mkdir("iputdir") < 0){
    printf(stdout, "mkdir failed\n");
    exit();
  }
  if(chdir("iputdir") < 0){
    printf(stdout, "chdir iputdir failed\n");
     1f4:	a1 e4 61 00 00       	mov    0x61e4,%eax
     1f9:	c7 44 24 04 76 41 00 	movl   $0x4176,0x4(%esp)
     200:	00 
     201:	89 04 24             	mov    %eax,(%esp)
     204:	e8 f7 3b 00 00       	call   3e00 <printf>
    exit();
     209:	e8 94 3a 00 00       	call   3ca2 <exit>
     20e:	66 90                	xchg   %ax,%ax

00000210 <exitiputtest>:
}

// does exit() call iput(p->cwd) in a transaction?
void
exitiputtest(void)
{
     210:	55                   	push   %ebp
     211:	89 e5                	mov    %esp,%ebp
     213:	83 ec 18             	sub    $0x18,%esp
  int pid;

  printf(stdout, "exitiput test\n");
     216:	a1 e4 61 00 00       	mov    0x61e4,%eax
     21b:	c7 44 24 04 c3 41 00 	movl   $0x41c3,0x4(%esp)
     222:	00 
     223:	89 04 24             	mov    %eax,(%esp)
     226:	e8 d5 3b 00 00       	call   3e00 <printf>

  pid = fork();
     22b:	e8 6a 3a 00 00       	call   3c9a <fork>
  if(pid < 0){
     230:	85 c0                	test   %eax,%eax
     232:	78 76                	js     2aa <exitiputtest+0x9a>
    printf(stdout, "fork failed\n");
    exit();
  }
  if(pid == 0){
     234:	75 3a                	jne    270 <exitiputtest+0x60>
    if(mkdir("iputdir") < 0){
     236:	c7 04 24 8f 41 00 00 	movl   $0x418f,(%esp)
     23d:	e8 c8 3a 00 00       	call   3d0a <mkdir>
     242:	85 c0                	test   %eax,%eax
     244:	0f 88 94 00 00 00    	js     2de <exitiputtest+0xce>
      printf(stdout, "mkdir failed\n");
      exit();
    }
    if(chdir("iputdir") < 0){
     24a:	c7 04 24 8f 41 00 00 	movl   $0x418f,(%esp)
     251:	e8 bc 3a 00 00       	call   3d12 <chdir>
     256:	85 c0                	test   %eax,%eax
     258:	78 6a                	js     2c4 <exitiputtest+0xb4>
      printf(stdout, "child chdir failed\n");
      exit();
    }
    if(unlink("../iputdir") < 0){
     25a:	c7 04 24 8c 41 00 00 	movl   $0x418c,(%esp)
     261:	e8 8c 3a 00 00       	call   3cf2 <unlink>
     266:	85 c0                	test   %eax,%eax
     268:	78 26                	js     290 <exitiputtest+0x80>
      printf(stdout, "unlink ../iputdir failed\n");
      exit();
    }
    exit();
     26a:	e8 33 3a 00 00       	call   3ca2 <exit>
     26f:	90                   	nop
  }
  wait();
     270:	e8 35 3a 00 00       	call   3caa <wait>
  printf(stdout, "exitiput test ok\n");
     275:	a1 e4 61 00 00       	mov    0x61e4,%eax
     27a:	c7 44 24 04 e6 41 00 	movl   $0x41e6,0x4(%esp)
     281:	00 
     282:	89 04 24             	mov    %eax,(%esp)
     285:	e8 76 3b 00 00       	call   3e00 <printf>
}
     28a:	c9                   	leave  
     28b:	c3                   	ret    
     28c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(chdir("iputdir") < 0){
      printf(stdout, "child chdir failed\n");
      exit();
    }
    if(unlink("../iputdir") < 0){
      printf(stdout, "unlink ../iputdir failed\n");
     290:	a1 e4 61 00 00       	mov    0x61e4,%eax
     295:	c7 44 24 04 97 41 00 	movl   $0x4197,0x4(%esp)
     29c:	00 
     29d:	89 04 24             	mov    %eax,(%esp)
     2a0:	e8 5b 3b 00 00       	call   3e00 <printf>
      exit();
     2a5:	e8 f8 39 00 00       	call   3ca2 <exit>

  printf(stdout, "exitiput test\n");

  pid = fork();
  if(pid < 0){
    printf(stdout, "fork failed\n");
     2aa:	a1 e4 61 00 00       	mov    0x61e4,%eax
     2af:	c7 44 24 04 a9 50 00 	movl   $0x50a9,0x4(%esp)
     2b6:	00 
     2b7:	89 04 24             	mov    %eax,(%esp)
     2ba:	e8 41 3b 00 00       	call   3e00 <printf>
    exit();
     2bf:	e8 de 39 00 00       	call   3ca2 <exit>
    if(mkdir("iputdir") < 0){
      printf(stdout, "mkdir failed\n");
      exit();
    }
    if(chdir("iputdir") < 0){
      printf(stdout, "child chdir failed\n");
     2c4:	a1 e4 61 00 00       	mov    0x61e4,%eax
     2c9:	c7 44 24 04 d2 41 00 	movl   $0x41d2,0x4(%esp)
     2d0:	00 
     2d1:	89 04 24             	mov    %eax,(%esp)
     2d4:	e8 27 3b 00 00       	call   3e00 <printf>
      exit();
     2d9:	e8 c4 39 00 00       	call   3ca2 <exit>
    printf(stdout, "fork failed\n");
    exit();
  }
  if(pid == 0){
    if(mkdir("iputdir") < 0){
      printf(stdout, "mkdir failed\n");
     2de:	a1 e4 61 00 00       	mov    0x61e4,%eax
     2e3:	c7 44 24 04 68 41 00 	movl   $0x4168,0x4(%esp)
     2ea:	00 
     2eb:	89 04 24             	mov    %eax,(%esp)
     2ee:	e8 0d 3b 00 00       	call   3e00 <printf>
      exit();
     2f3:	e8 aa 39 00 00       	call   3ca2 <exit>
     2f8:	90                   	nop
     2f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000300 <openiputtest>:
//      for(i = 0; i < 10000; i++)
//        yield();
//    }
void
openiputtest(void)
{
     300:	55                   	push   %ebp
     301:	89 e5                	mov    %esp,%ebp
     303:	83 ec 18             	sub    $0x18,%esp
  int pid;

  printf(stdout, "openiput test\n");
     306:	a1 e4 61 00 00       	mov    0x61e4,%eax
     30b:	c7 44 24 04 f8 41 00 	movl   $0x41f8,0x4(%esp)
     312:	00 
     313:	89 04 24             	mov    %eax,(%esp)
     316:	e8 e5 3a 00 00       	call   3e00 <printf>
  if(mkdir("oidir") < 0){
     31b:	c7 04 24 07 42 00 00 	movl   $0x4207,(%esp)
     322:	e8 e3 39 00 00       	call   3d0a <mkdir>
     327:	85 c0                	test   %eax,%eax
     329:	0f 88 9e 00 00 00    	js     3cd <openiputtest+0xcd>
    printf(stdout, "mkdir oidir failed\n");
    exit();
  }
  pid = fork();
     32f:	e8 66 39 00 00       	call   3c9a <fork>
  if(pid < 0){
     334:	85 c0                	test   %eax,%eax
     336:	0f 88 ab 00 00 00    	js     3e7 <openiputtest+0xe7>
     33c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(stdout, "fork failed\n");
    exit();
  }
  if(pid == 0){
     340:	75 36                	jne    378 <openiputtest+0x78>
    int fd = open("oidir", O_RDWR);
     342:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
     349:	00 
     34a:	c7 04 24 07 42 00 00 	movl   $0x4207,(%esp)
     351:	e8 8c 39 00 00       	call   3ce2 <open>
    if(fd >= 0){
     356:	85 c0                	test   %eax,%eax
     358:	78 6e                	js     3c8 <openiputtest+0xc8>
      printf(stdout, "open directory for write succeeded\n");
     35a:	a1 e4 61 00 00       	mov    0x61e4,%eax
     35f:	c7 44 24 04 8c 51 00 	movl   $0x518c,0x4(%esp)
     366:	00 
     367:	89 04 24             	mov    %eax,(%esp)
     36a:	e8 91 3a 00 00       	call   3e00 <printf>
      exit();
     36f:	e8 2e 39 00 00       	call   3ca2 <exit>
     374:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    }
    exit();
  }
  sleep(1);
     378:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     37f:	e8 ae 39 00 00       	call   3d32 <sleep>
  if(unlink("oidir") != 0){
     384:	c7 04 24 07 42 00 00 	movl   $0x4207,(%esp)
     38b:	e8 62 39 00 00       	call   3cf2 <unlink>
     390:	85 c0                	test   %eax,%eax
     392:	75 1c                	jne    3b0 <openiputtest+0xb0>
    printf(stdout, "unlink failed\n");
    exit();
  }
  wait();
     394:	e8 11 39 00 00       	call   3caa <wait>
  printf(stdout, "openiput test ok\n");
     399:	a1 e4 61 00 00       	mov    0x61e4,%eax
     39e:	c7 44 24 04 30 42 00 	movl   $0x4230,0x4(%esp)
     3a5:	00 
     3a6:	89 04 24             	mov    %eax,(%esp)
     3a9:	e8 52 3a 00 00       	call   3e00 <printf>
}
     3ae:	c9                   	leave  
     3af:	c3                   	ret    
    }
    exit();
  }
  sleep(1);
  if(unlink("oidir") != 0){
    printf(stdout, "unlink failed\n");
     3b0:	a1 e4 61 00 00       	mov    0x61e4,%eax
     3b5:	c7 44 24 04 21 42 00 	movl   $0x4221,0x4(%esp)
     3bc:	00 
     3bd:	89 04 24             	mov    %eax,(%esp)
     3c0:	e8 3b 3a 00 00       	call   3e00 <printf>
     3c5:	8d 76 00             	lea    0x0(%esi),%esi
    exit();
     3c8:	e8 d5 38 00 00       	call   3ca2 <exit>
{
  int pid;

  printf(stdout, "openiput test\n");
  if(mkdir("oidir") < 0){
    printf(stdout, "mkdir oidir failed\n");
     3cd:	a1 e4 61 00 00       	mov    0x61e4,%eax
     3d2:	c7 44 24 04 0d 42 00 	movl   $0x420d,0x4(%esp)
     3d9:	00 
     3da:	89 04 24             	mov    %eax,(%esp)
     3dd:	e8 1e 3a 00 00       	call   3e00 <printf>
    exit();
     3e2:	e8 bb 38 00 00       	call   3ca2 <exit>
  }
  pid = fork();
  if(pid < 0){
    printf(stdout, "fork failed\n");
     3e7:	a1 e4 61 00 00       	mov    0x61e4,%eax
     3ec:	c7 44 24 04 a9 50 00 	movl   $0x50a9,0x4(%esp)
     3f3:	00 
     3f4:	89 04 24             	mov    %eax,(%esp)
     3f7:	e8 04 3a 00 00       	call   3e00 <printf>
    exit();
     3fc:	e8 a1 38 00 00       	call   3ca2 <exit>
     401:	eb 0d                	jmp    410 <opentest>
     403:	90                   	nop
     404:	90                   	nop
     405:	90                   	nop
     406:	90                   	nop
     407:	90                   	nop
     408:	90                   	nop
     409:	90                   	nop
     40a:	90                   	nop
     40b:	90                   	nop
     40c:	90                   	nop
     40d:	90                   	nop
     40e:	90                   	nop
     40f:	90                   	nop

00000410 <opentest>:

// simple file system tests

void
opentest(void)
{
     410:	55                   	push   %ebp
     411:	89 e5                	mov    %esp,%ebp
     413:	83 ec 18             	sub    $0x18,%esp
  int fd;

  printf(stdout, "open test\n");
     416:	a1 e4 61 00 00       	mov    0x61e4,%eax
     41b:	c7 44 24 04 42 42 00 	movl   $0x4242,0x4(%esp)
     422:	00 
     423:	89 04 24             	mov    %eax,(%esp)
     426:	e8 d5 39 00 00       	call   3e00 <printf>
  fd = open("echo", 0);
     42b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     432:	00 
     433:	c7 04 24 4d 42 00 00 	movl   $0x424d,(%esp)
     43a:	e8 a3 38 00 00       	call   3ce2 <open>
  if(fd < 0){
     43f:	85 c0                	test   %eax,%eax
     441:	78 37                	js     47a <opentest+0x6a>
    printf(stdout, "open echo failed!\n");
    exit();
  }
  close(fd);
     443:	89 04 24             	mov    %eax,(%esp)
     446:	e8 7f 38 00 00       	call   3cca <close>
  fd = open("doesnotexist", 0);
     44b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     452:	00 
     453:	c7 04 24 65 42 00 00 	movl   $0x4265,(%esp)
     45a:	e8 83 38 00 00       	call   3ce2 <open>
  if(fd >= 0){
     45f:	85 c0                	test   %eax,%eax
     461:	79 31                	jns    494 <opentest+0x84>
    printf(stdout, "open doesnotexist succeeded!\n");
    exit();
  }
  printf(stdout, "open test ok\n");
     463:	a1 e4 61 00 00       	mov    0x61e4,%eax
     468:	c7 44 24 04 90 42 00 	movl   $0x4290,0x4(%esp)
     46f:	00 
     470:	89 04 24             	mov    %eax,(%esp)
     473:	e8 88 39 00 00       	call   3e00 <printf>
}
     478:	c9                   	leave  
     479:	c3                   	ret    
  int fd;

  printf(stdout, "open test\n");
  fd = open("echo", 0);
  if(fd < 0){
    printf(stdout, "open echo failed!\n");
     47a:	a1 e4 61 00 00       	mov    0x61e4,%eax
     47f:	c7 44 24 04 52 42 00 	movl   $0x4252,0x4(%esp)
     486:	00 
     487:	89 04 24             	mov    %eax,(%esp)
     48a:	e8 71 39 00 00       	call   3e00 <printf>
    exit();
     48f:	e8 0e 38 00 00       	call   3ca2 <exit>
  }
  close(fd);
  fd = open("doesnotexist", 0);
  if(fd >= 0){
    printf(stdout, "open doesnotexist succeeded!\n");
     494:	a1 e4 61 00 00       	mov    0x61e4,%eax
     499:	c7 44 24 04 72 42 00 	movl   $0x4272,0x4(%esp)
     4a0:	00 
     4a1:	89 04 24             	mov    %eax,(%esp)
     4a4:	e8 57 39 00 00       	call   3e00 <printf>
    exit();
     4a9:	e8 f4 37 00 00       	call   3ca2 <exit>
     4ae:	66 90                	xchg   %ax,%ax

000004b0 <writetest>:
  printf(stdout, "open test ok\n");
}

void
writetest(void)
{
     4b0:	55                   	push   %ebp
     4b1:	89 e5                	mov    %esp,%ebp
     4b3:	56                   	push   %esi
     4b4:	53                   	push   %ebx
     4b5:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int i;

  printf(stdout, "small file test\n");
     4b8:	a1 e4 61 00 00       	mov    0x61e4,%eax
     4bd:	c7 44 24 04 9e 42 00 	movl   $0x429e,0x4(%esp)
     4c4:	00 
     4c5:	89 04 24             	mov    %eax,(%esp)
     4c8:	e8 33 39 00 00       	call   3e00 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     4cd:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     4d4:	00 
     4d5:	c7 04 24 af 42 00 00 	movl   $0x42af,(%esp)
     4dc:	e8 01 38 00 00       	call   3ce2 <open>
  if(fd >= 0){
     4e1:	85 c0                	test   %eax,%eax
{
  int fd;
  int i;

  printf(stdout, "small file test\n");
  fd = open("small", O_CREATE|O_RDWR);
     4e3:	89 c6                	mov    %eax,%esi
  if(fd >= 0){
     4e5:	0f 88 b1 01 00 00    	js     69c <writetest+0x1ec>
    printf(stdout, "creat small succeeded; ok\n");
     4eb:	a1 e4 61 00 00       	mov    0x61e4,%eax
  } else {
    printf(stdout, "error: creat small failed!\n");
    exit();
  }
  for(i = 0; i < 100; i++){
     4f0:	31 db                	xor    %ebx,%ebx
  int i;

  printf(stdout, "small file test\n");
  fd = open("small", O_CREATE|O_RDWR);
  if(fd >= 0){
    printf(stdout, "creat small succeeded; ok\n");
     4f2:	c7 44 24 04 b5 42 00 	movl   $0x42b5,0x4(%esp)
     4f9:	00 
     4fa:	89 04 24             	mov    %eax,(%esp)
     4fd:	e8 fe 38 00 00       	call   3e00 <printf>
     502:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  } else {
    printf(stdout, "error: creat small failed!\n");
    exit();
  }
  for(i = 0; i < 100; i++){
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     508:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     50f:	00 
     510:	c7 44 24 04 ec 42 00 	movl   $0x42ec,0x4(%esp)
     517:	00 
     518:	89 34 24             	mov    %esi,(%esp)
     51b:	e8 a2 37 00 00       	call   3cc2 <write>
     520:	83 f8 0a             	cmp    $0xa,%eax
     523:	0f 85 e9 00 00 00    	jne    612 <writetest+0x162>
      printf(stdout, "error: write aa %d new file failed\n", i);
      exit();
    }
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     529:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     530:	00 
     531:	c7 44 24 04 f7 42 00 	movl   $0x42f7,0x4(%esp)
     538:	00 
     539:	89 34 24             	mov    %esi,(%esp)
     53c:	e8 81 37 00 00       	call   3cc2 <write>
     541:	83 f8 0a             	cmp    $0xa,%eax
     544:	0f 85 e6 00 00 00    	jne    630 <writetest+0x180>
    printf(stdout, "creat small succeeded; ok\n");
  } else {
    printf(stdout, "error: creat small failed!\n");
    exit();
  }
  for(i = 0; i < 100; i++){
     54a:	83 c3 01             	add    $0x1,%ebx
     54d:	83 fb 64             	cmp    $0x64,%ebx
     550:	75 b6                	jne    508 <writetest+0x58>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
      printf(stdout, "error: write bb %d new file failed\n", i);
      exit();
    }
  }
  printf(stdout, "writes ok\n");
     552:	a1 e4 61 00 00       	mov    0x61e4,%eax
     557:	c7 44 24 04 02 43 00 	movl   $0x4302,0x4(%esp)
     55e:	00 
     55f:	89 04 24             	mov    %eax,(%esp)
     562:	e8 99 38 00 00       	call   3e00 <printf>
  close(fd);
     567:	89 34 24             	mov    %esi,(%esp)
     56a:	e8 5b 37 00 00       	call   3cca <close>
  fd = open("small", O_RDONLY);
     56f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     576:	00 
     577:	c7 04 24 af 42 00 00 	movl   $0x42af,(%esp)
     57e:	e8 5f 37 00 00       	call   3ce2 <open>
  if(fd >= 0){
     583:	85 c0                	test   %eax,%eax
      exit();
    }
  }
  printf(stdout, "writes ok\n");
  close(fd);
  fd = open("small", O_RDONLY);
     585:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
     587:	0f 88 c1 00 00 00    	js     64e <writetest+0x19e>
    printf(stdout, "open small succeeded ok\n");
     58d:	a1 e4 61 00 00       	mov    0x61e4,%eax
     592:	c7 44 24 04 0d 43 00 	movl   $0x430d,0x4(%esp)
     599:	00 
     59a:	89 04 24             	mov    %eax,(%esp)
     59d:	e8 5e 38 00 00       	call   3e00 <printf>
  } else {
    printf(stdout, "error: open small failed!\n");
    exit();
  }
  i = read(fd, buf, 2000);
     5a2:	c7 44 24 08 d0 07 00 	movl   $0x7d0,0x8(%esp)
     5a9:	00 
     5aa:	c7 44 24 04 c0 89 00 	movl   $0x89c0,0x4(%esp)
     5b1:	00 
     5b2:	89 1c 24             	mov    %ebx,(%esp)
     5b5:	e8 00 37 00 00       	call   3cba <read>
  if(i == 2000){
     5ba:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     5bf:	0f 85 a3 00 00 00    	jne    668 <writetest+0x1b8>
    printf(stdout, "read succeeded ok\n");
     5c5:	a1 e4 61 00 00       	mov    0x61e4,%eax
     5ca:	c7 44 24 04 41 43 00 	movl   $0x4341,0x4(%esp)
     5d1:	00 
     5d2:	89 04 24             	mov    %eax,(%esp)
     5d5:	e8 26 38 00 00       	call   3e00 <printf>
  } else {
    printf(stdout, "read failed\n");
    exit();
  }
  close(fd);
     5da:	89 1c 24             	mov    %ebx,(%esp)
     5dd:	e8 e8 36 00 00       	call   3cca <close>

  if(unlink("small") < 0){
     5e2:	c7 04 24 af 42 00 00 	movl   $0x42af,(%esp)
     5e9:	e8 04 37 00 00       	call   3cf2 <unlink>
     5ee:	85 c0                	test   %eax,%eax
     5f0:	0f 88 8c 00 00 00    	js     682 <writetest+0x1d2>
    printf(stdout, "unlink small failed\n");
    exit();
  }
  printf(stdout, "small file test ok\n");
     5f6:	a1 e4 61 00 00       	mov    0x61e4,%eax
     5fb:	c7 44 24 04 69 43 00 	movl   $0x4369,0x4(%esp)
     602:	00 
     603:	89 04 24             	mov    %eax,(%esp)
     606:	e8 f5 37 00 00       	call   3e00 <printf>
}
     60b:	83 c4 10             	add    $0x10,%esp
     60e:	5b                   	pop    %ebx
     60f:	5e                   	pop    %esi
     610:	5d                   	pop    %ebp
     611:	c3                   	ret    
    printf(stdout, "error: creat small failed!\n");
    exit();
  }
  for(i = 0; i < 100; i++){
    if(write(fd, "aaaaaaaaaa", 10) != 10){
      printf(stdout, "error: write aa %d new file failed\n", i);
     612:	a1 e4 61 00 00       	mov    0x61e4,%eax
     617:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     61b:	c7 44 24 04 b0 51 00 	movl   $0x51b0,0x4(%esp)
     622:	00 
     623:	89 04 24             	mov    %eax,(%esp)
     626:	e8 d5 37 00 00       	call   3e00 <printf>
      exit();
     62b:	e8 72 36 00 00       	call   3ca2 <exit>
    }
    if(write(fd, "bbbbbbbbbb", 10) != 10){
      printf(stdout, "error: write bb %d new file failed\n", i);
     630:	a1 e4 61 00 00       	mov    0x61e4,%eax
     635:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     639:	c7 44 24 04 d4 51 00 	movl   $0x51d4,0x4(%esp)
     640:	00 
     641:	89 04 24             	mov    %eax,(%esp)
     644:	e8 b7 37 00 00       	call   3e00 <printf>
      exit();
     649:	e8 54 36 00 00       	call   3ca2 <exit>
  close(fd);
  fd = open("small", O_RDONLY);
  if(fd >= 0){
    printf(stdout, "open small succeeded ok\n");
  } else {
    printf(stdout, "error: open small failed!\n");
     64e:	a1 e4 61 00 00       	mov    0x61e4,%eax
     653:	c7 44 24 04 26 43 00 	movl   $0x4326,0x4(%esp)
     65a:	00 
     65b:	89 04 24             	mov    %eax,(%esp)
     65e:	e8 9d 37 00 00       	call   3e00 <printf>
    exit();
     663:	e8 3a 36 00 00       	call   3ca2 <exit>
  }
  i = read(fd, buf, 2000);
  if(i == 2000){
    printf(stdout, "read succeeded ok\n");
  } else {
    printf(stdout, "read failed\n");
     668:	a1 e4 61 00 00       	mov    0x61e4,%eax
     66d:	c7 44 24 04 6d 46 00 	movl   $0x466d,0x4(%esp)
     674:	00 
     675:	89 04 24             	mov    %eax,(%esp)
     678:	e8 83 37 00 00       	call   3e00 <printf>
    exit();
     67d:	e8 20 36 00 00       	call   3ca2 <exit>
  }
  close(fd);

  if(unlink("small") < 0){
    printf(stdout, "unlink small failed\n");
     682:	a1 e4 61 00 00       	mov    0x61e4,%eax
     687:	c7 44 24 04 54 43 00 	movl   $0x4354,0x4(%esp)
     68e:	00 
     68f:	89 04 24             	mov    %eax,(%esp)
     692:	e8 69 37 00 00       	call   3e00 <printf>
    exit();
     697:	e8 06 36 00 00       	call   3ca2 <exit>
  printf(stdout, "small file test\n");
  fd = open("small", O_CREATE|O_RDWR);
  if(fd >= 0){
    printf(stdout, "creat small succeeded; ok\n");
  } else {
    printf(stdout, "error: creat small failed!\n");
     69c:	a1 e4 61 00 00       	mov    0x61e4,%eax
     6a1:	c7 44 24 04 d0 42 00 	movl   $0x42d0,0x4(%esp)
     6a8:	00 
     6a9:	89 04 24             	mov    %eax,(%esp)
     6ac:	e8 4f 37 00 00       	call   3e00 <printf>
    exit();
     6b1:	e8 ec 35 00 00       	call   3ca2 <exit>
     6b6:	8d 76 00             	lea    0x0(%esi),%esi
     6b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000006c0 <writetest1>:
  printf(stdout, "small file test ok\n");
}

void
writetest1(void)
{
     6c0:	55                   	push   %ebp
     6c1:	89 e5                	mov    %esp,%ebp
     6c3:	56                   	push   %esi
     6c4:	53                   	push   %ebx
     6c5:	83 ec 10             	sub    $0x10,%esp
  int i, fd, n;

  printf(stdout, "big files test\n");
     6c8:	a1 e4 61 00 00       	mov    0x61e4,%eax
     6cd:	c7 44 24 04 7d 43 00 	movl   $0x437d,0x4(%esp)
     6d4:	00 
     6d5:	89 04 24             	mov    %eax,(%esp)
     6d8:	e8 23 37 00 00       	call   3e00 <printf>

  fd = open("big", O_CREATE|O_RDWR);
     6dd:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     6e4:	00 
     6e5:	c7 04 24 f7 43 00 00 	movl   $0x43f7,(%esp)
     6ec:	e8 f1 35 00 00       	call   3ce2 <open>
  if(fd < 0){
     6f1:	85 c0                	test   %eax,%eax
{
  int i, fd, n;

  printf(stdout, "big files test\n");

  fd = open("big", O_CREATE|O_RDWR);
     6f3:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     6f5:	0f 88 7a 01 00 00    	js     875 <writetest1+0x1b5>
     6fb:	31 db                	xor    %ebx,%ebx
     6fd:	8d 76 00             	lea    0x0(%esi),%esi
    exit();
  }

  for(i = 0; i < MAXFILE; i++){
    ((int*)buf)[0] = i;
    if(write(fd, buf, 512) != 512){
     700:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     707:	00 
     708:	c7 44 24 04 c0 89 00 	movl   $0x89c0,0x4(%esp)
     70f:	00 
     710:	89 34 24             	mov    %esi,(%esp)
    printf(stdout, "error: creat big failed!\n");
    exit();
  }

  for(i = 0; i < MAXFILE; i++){
    ((int*)buf)[0] = i;
     713:	89 1d c0 89 00 00    	mov    %ebx,0x89c0
    if(write(fd, buf, 512) != 512){
     719:	e8 a4 35 00 00       	call   3cc2 <write>
     71e:	3d 00 02 00 00       	cmp    $0x200,%eax
     723:	0f 85 b2 00 00 00    	jne    7db <writetest1+0x11b>
  if(fd < 0){
    printf(stdout, "error: creat big failed!\n");
    exit();
  }

  for(i = 0; i < MAXFILE; i++){
     729:	83 c3 01             	add    $0x1,%ebx
     72c:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     732:	75 cc                	jne    700 <writetest1+0x40>
      printf(stdout, "error: write big file failed\n", i);
      exit();
    }
  }

  close(fd);
     734:	89 34 24             	mov    %esi,(%esp)
     737:	e8 8e 35 00 00       	call   3cca <close>

  fd = open("big", O_RDONLY);
     73c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     743:	00 
     744:	c7 04 24 f7 43 00 00 	movl   $0x43f7,(%esp)
     74b:	e8 92 35 00 00       	call   3ce2 <open>
  if(fd < 0){
     750:	85 c0                	test   %eax,%eax
    }
  }

  close(fd);

  fd = open("big", O_RDONLY);
     752:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     754:	0f 88 01 01 00 00    	js     85b <writetest1+0x19b>
     75a:	31 db                	xor    %ebx,%ebx
     75c:	eb 1d                	jmp    77b <writetest1+0xbb>
     75e:	66 90                	xchg   %ax,%ax
      if(n == MAXFILE - 1){
        printf(stdout, "read only %d blocks from big", n);
        exit();
      }
      break;
    } else if(i != 512){
     760:	3d 00 02 00 00       	cmp    $0x200,%eax
     765:	0f 85 b0 00 00 00    	jne    81b <writetest1+0x15b>
      printf(stdout, "read failed %d\n", i);
      exit();
    }
    if(((int*)buf)[0] != n){
     76b:	a1 c0 89 00 00       	mov    0x89c0,%eax
     770:	39 d8                	cmp    %ebx,%eax
     772:	0f 85 81 00 00 00    	jne    7f9 <writetest1+0x139>
      printf(stdout, "read content of block %d is %d\n",
             n, ((int*)buf)[0]);
      exit();
    }
    n++;
     778:	83 c3 01             	add    $0x1,%ebx
    exit();
  }

  n = 0;
  for(;;){
    i = read(fd, buf, 512);
     77b:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     782:	00 
     783:	c7 44 24 04 c0 89 00 	movl   $0x89c0,0x4(%esp)
     78a:	00 
     78b:	89 34 24             	mov    %esi,(%esp)
     78e:	e8 27 35 00 00       	call   3cba <read>
    if(i == 0){
     793:	85 c0                	test   %eax,%eax
     795:	75 c9                	jne    760 <writetest1+0xa0>
      if(n == MAXFILE - 1){
     797:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     79d:	0f 84 96 00 00 00    	je     839 <writetest1+0x179>
             n, ((int*)buf)[0]);
      exit();
    }
    n++;
  }
  close(fd);
     7a3:	89 34 24             	mov    %esi,(%esp)
     7a6:	e8 1f 35 00 00       	call   3cca <close>
  if(unlink("big") < 0){
     7ab:	c7 04 24 f7 43 00 00 	movl   $0x43f7,(%esp)
     7b2:	e8 3b 35 00 00       	call   3cf2 <unlink>
     7b7:	85 c0                	test   %eax,%eax
     7b9:	0f 88 d0 00 00 00    	js     88f <writetest1+0x1cf>
    printf(stdout, "unlink big failed\n");
    exit();
  }
  printf(stdout, "big files ok\n");
     7bf:	a1 e4 61 00 00       	mov    0x61e4,%eax
     7c4:	c7 44 24 04 1e 44 00 	movl   $0x441e,0x4(%esp)
     7cb:	00 
     7cc:	89 04 24             	mov    %eax,(%esp)
     7cf:	e8 2c 36 00 00       	call   3e00 <printf>
}
     7d4:	83 c4 10             	add    $0x10,%esp
     7d7:	5b                   	pop    %ebx
     7d8:	5e                   	pop    %esi
     7d9:	5d                   	pop    %ebp
     7da:	c3                   	ret    
  }

  for(i = 0; i < MAXFILE; i++){
    ((int*)buf)[0] = i;
    if(write(fd, buf, 512) != 512){
      printf(stdout, "error: write big file failed\n", i);
     7db:	a1 e4 61 00 00       	mov    0x61e4,%eax
     7e0:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     7e4:	c7 44 24 04 a7 43 00 	movl   $0x43a7,0x4(%esp)
     7eb:	00 
     7ec:	89 04 24             	mov    %eax,(%esp)
     7ef:	e8 0c 36 00 00       	call   3e00 <printf>
      exit();
     7f4:	e8 a9 34 00 00       	call   3ca2 <exit>
    } else if(i != 512){
      printf(stdout, "read failed %d\n", i);
      exit();
    }
    if(((int*)buf)[0] != n){
      printf(stdout, "read content of block %d is %d\n",
     7f9:	89 44 24 0c          	mov    %eax,0xc(%esp)
     7fd:	a1 e4 61 00 00       	mov    0x61e4,%eax
     802:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     806:	c7 44 24 04 f8 51 00 	movl   $0x51f8,0x4(%esp)
     80d:	00 
     80e:	89 04 24             	mov    %eax,(%esp)
     811:	e8 ea 35 00 00       	call   3e00 <printf>
             n, ((int*)buf)[0]);
      exit();
     816:	e8 87 34 00 00       	call   3ca2 <exit>
        printf(stdout, "read only %d blocks from big", n);
        exit();
      }
      break;
    } else if(i != 512){
      printf(stdout, "read failed %d\n", i);
     81b:	89 44 24 08          	mov    %eax,0x8(%esp)
     81f:	a1 e4 61 00 00       	mov    0x61e4,%eax
     824:	c7 44 24 04 fb 43 00 	movl   $0x43fb,0x4(%esp)
     82b:	00 
     82c:	89 04 24             	mov    %eax,(%esp)
     82f:	e8 cc 35 00 00       	call   3e00 <printf>
      exit();
     834:	e8 69 34 00 00       	call   3ca2 <exit>
  n = 0;
  for(;;){
    i = read(fd, buf, 512);
    if(i == 0){
      if(n == MAXFILE - 1){
        printf(stdout, "read only %d blocks from big", n);
     839:	a1 e4 61 00 00       	mov    0x61e4,%eax
     83e:	c7 44 24 08 8b 00 00 	movl   $0x8b,0x8(%esp)
     845:	00 
     846:	c7 44 24 04 de 43 00 	movl   $0x43de,0x4(%esp)
     84d:	00 
     84e:	89 04 24             	mov    %eax,(%esp)
     851:	e8 aa 35 00 00       	call   3e00 <printf>
        exit();
     856:	e8 47 34 00 00       	call   3ca2 <exit>

  close(fd);

  fd = open("big", O_RDONLY);
  if(fd < 0){
    printf(stdout, "error: open big failed!\n");
     85b:	a1 e4 61 00 00       	mov    0x61e4,%eax
     860:	c7 44 24 04 c5 43 00 	movl   $0x43c5,0x4(%esp)
     867:	00 
     868:	89 04 24             	mov    %eax,(%esp)
     86b:	e8 90 35 00 00       	call   3e00 <printf>
    exit();
     870:	e8 2d 34 00 00       	call   3ca2 <exit>

  printf(stdout, "big files test\n");

  fd = open("big", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(stdout, "error: creat big failed!\n");
     875:	a1 e4 61 00 00       	mov    0x61e4,%eax
     87a:	c7 44 24 04 8d 43 00 	movl   $0x438d,0x4(%esp)
     881:	00 
     882:	89 04 24             	mov    %eax,(%esp)
     885:	e8 76 35 00 00       	call   3e00 <printf>
    exit();
     88a:	e8 13 34 00 00       	call   3ca2 <exit>
    }
    n++;
  }
  close(fd);
  if(unlink("big") < 0){
    printf(stdout, "unlink big failed\n");
     88f:	a1 e4 61 00 00       	mov    0x61e4,%eax
     894:	c7 44 24 04 0b 44 00 	movl   $0x440b,0x4(%esp)
     89b:	00 
     89c:	89 04 24             	mov    %eax,(%esp)
     89f:	e8 5c 35 00 00       	call   3e00 <printf>
    exit();
     8a4:	e8 f9 33 00 00       	call   3ca2 <exit>
     8a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000008b0 <createtest>:
  printf(stdout, "big files ok\n");
}

void
createtest(void)
{
     8b0:	55                   	push   %ebp
     8b1:	89 e5                	mov    %esp,%ebp
     8b3:	53                   	push   %ebx
  int i, fd;

  printf(stdout, "many creates, followed by unlink test\n");

  name[0] = 'a';
  name[2] = '\0';
     8b4:	bb 30 00 00 00       	mov    $0x30,%ebx
  printf(stdout, "big files ok\n");
}

void
createtest(void)
{
     8b9:	83 ec 14             	sub    $0x14,%esp
  int i, fd;

  printf(stdout, "many creates, followed by unlink test\n");
     8bc:	a1 e4 61 00 00       	mov    0x61e4,%eax
     8c1:	c7 44 24 04 18 52 00 	movl   $0x5218,0x4(%esp)
     8c8:	00 
     8c9:	89 04 24             	mov    %eax,(%esp)
     8cc:	e8 2f 35 00 00       	call   3e00 <printf>

  name[0] = 'a';
     8d1:	c6 05 c0 a9 00 00 61 	movb   $0x61,0xa9c0
  name[2] = '\0';
     8d8:	c6 05 c2 a9 00 00 00 	movb   $0x0,0xa9c2
     8df:	90                   	nop
  for(i = 0; i < 52; i++){
    name[1] = '0' + i;
    fd = open(name, O_CREATE|O_RDWR);
     8e0:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     8e7:	00 
     8e8:	c7 04 24 c0 a9 00 00 	movl   $0xa9c0,(%esp)
  printf(stdout, "many creates, followed by unlink test\n");

  name[0] = 'a';
  name[2] = '\0';
  for(i = 0; i < 52; i++){
    name[1] = '0' + i;
     8ef:	88 1d c1 a9 00 00    	mov    %bl,0xa9c1
     8f5:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     8f8:	e8 e5 33 00 00       	call   3ce2 <open>
    close(fd);
     8fd:	89 04 24             	mov    %eax,(%esp)
     900:	e8 c5 33 00 00       	call   3cca <close>

  printf(stdout, "many creates, followed by unlink test\n");

  name[0] = 'a';
  name[2] = '\0';
  for(i = 0; i < 52; i++){
     905:	80 fb 64             	cmp    $0x64,%bl
     908:	75 d6                	jne    8e0 <createtest+0x30>
    name[1] = '0' + i;
    fd = open(name, O_CREATE|O_RDWR);
    close(fd);
  }
  name[0] = 'a';
     90a:	c6 05 c0 a9 00 00 61 	movb   $0x61,0xa9c0
  name[2] = '\0';
     911:	bb 30 00 00 00       	mov    $0x30,%ebx
     916:	c6 05 c2 a9 00 00 00 	movb   $0x0,0xa9c2
     91d:	8d 76 00             	lea    0x0(%esi),%esi
  for(i = 0; i < 52; i++){
    name[1] = '0' + i;
     920:	88 1d c1 a9 00 00    	mov    %bl,0xa9c1
     926:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     929:	c7 04 24 c0 a9 00 00 	movl   $0xa9c0,(%esp)
     930:	e8 bd 33 00 00       	call   3cf2 <unlink>
    fd = open(name, O_CREATE|O_RDWR);
    close(fd);
  }
  name[0] = 'a';
  name[2] = '\0';
  for(i = 0; i < 52; i++){
     935:	80 fb 64             	cmp    $0x64,%bl
     938:	75 e6                	jne    920 <createtest+0x70>
    name[1] = '0' + i;
    unlink(name);
  }
  printf(stdout, "many creates, followed by unlink; ok\n");
     93a:	a1 e4 61 00 00       	mov    0x61e4,%eax
     93f:	c7 44 24 04 40 52 00 	movl   $0x5240,0x4(%esp)
     946:	00 
     947:	89 04 24             	mov    %eax,(%esp)
     94a:	e8 b1 34 00 00       	call   3e00 <printf>
}
     94f:	83 c4 14             	add    $0x14,%esp
     952:	5b                   	pop    %ebx
     953:	5d                   	pop    %ebp
     954:	c3                   	ret    
     955:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     959:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000960 <dirtest>:

void dirtest(void)
{
     960:	55                   	push   %ebp
     961:	89 e5                	mov    %esp,%ebp
     963:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "mkdir test\n");
     966:	a1 e4 61 00 00       	mov    0x61e4,%eax
     96b:	c7 44 24 04 2c 44 00 	movl   $0x442c,0x4(%esp)
     972:	00 
     973:	89 04 24             	mov    %eax,(%esp)
     976:	e8 85 34 00 00       	call   3e00 <printf>

  if(mkdir("dir0") < 0){
     97b:	c7 04 24 38 44 00 00 	movl   $0x4438,(%esp)
     982:	e8 83 33 00 00       	call   3d0a <mkdir>
     987:	85 c0                	test   %eax,%eax
     989:	78 4b                	js     9d6 <dirtest+0x76>
    printf(stdout, "mkdir failed\n");
    exit();
  }

  if(chdir("dir0") < 0){
     98b:	c7 04 24 38 44 00 00 	movl   $0x4438,(%esp)
     992:	e8 7b 33 00 00       	call   3d12 <chdir>
     997:	85 c0                	test   %eax,%eax
     999:	0f 88 85 00 00 00    	js     a24 <dirtest+0xc4>
    printf(stdout, "chdir dir0 failed\n");
    exit();
  }

  if(chdir("..") < 0){
     99f:	c7 04 24 dd 49 00 00 	movl   $0x49dd,(%esp)
     9a6:	e8 67 33 00 00       	call   3d12 <chdir>
     9ab:	85 c0                	test   %eax,%eax
     9ad:	78 5b                	js     a0a <dirtest+0xaa>
    printf(stdout, "chdir .. failed\n");
    exit();
  }

  if(unlink("dir0") < 0){
     9af:	c7 04 24 38 44 00 00 	movl   $0x4438,(%esp)
     9b6:	e8 37 33 00 00       	call   3cf2 <unlink>
     9bb:	85 c0                	test   %eax,%eax
     9bd:	78 31                	js     9f0 <dirtest+0x90>
    printf(stdout, "unlink dir0 failed\n");
    exit();
  }
  printf(stdout, "mkdir test ok\n");
     9bf:	a1 e4 61 00 00       	mov    0x61e4,%eax
     9c4:	c7 44 24 04 75 44 00 	movl   $0x4475,0x4(%esp)
     9cb:	00 
     9cc:	89 04 24             	mov    %eax,(%esp)
     9cf:	e8 2c 34 00 00       	call   3e00 <printf>
}
     9d4:	c9                   	leave  
     9d5:	c3                   	ret    
void dirtest(void)
{
  printf(stdout, "mkdir test\n");

  if(mkdir("dir0") < 0){
    printf(stdout, "mkdir failed\n");
     9d6:	a1 e4 61 00 00       	mov    0x61e4,%eax
     9db:	c7 44 24 04 68 41 00 	movl   $0x4168,0x4(%esp)
     9e2:	00 
     9e3:	89 04 24             	mov    %eax,(%esp)
     9e6:	e8 15 34 00 00       	call   3e00 <printf>
    exit();
     9eb:	e8 b2 32 00 00       	call   3ca2 <exit>
    printf(stdout, "chdir .. failed\n");
    exit();
  }

  if(unlink("dir0") < 0){
    printf(stdout, "unlink dir0 failed\n");
     9f0:	a1 e4 61 00 00       	mov    0x61e4,%eax
     9f5:	c7 44 24 04 61 44 00 	movl   $0x4461,0x4(%esp)
     9fc:	00 
     9fd:	89 04 24             	mov    %eax,(%esp)
     a00:	e8 fb 33 00 00       	call   3e00 <printf>
    exit();
     a05:	e8 98 32 00 00       	call   3ca2 <exit>
    printf(stdout, "chdir dir0 failed\n");
    exit();
  }

  if(chdir("..") < 0){
    printf(stdout, "chdir .. failed\n");
     a0a:	a1 e4 61 00 00       	mov    0x61e4,%eax
     a0f:	c7 44 24 04 50 44 00 	movl   $0x4450,0x4(%esp)
     a16:	00 
     a17:	89 04 24             	mov    %eax,(%esp)
     a1a:	e8 e1 33 00 00       	call   3e00 <printf>
    exit();
     a1f:	e8 7e 32 00 00       	call   3ca2 <exit>
    printf(stdout, "mkdir failed\n");
    exit();
  }

  if(chdir("dir0") < 0){
    printf(stdout, "chdir dir0 failed\n");
     a24:	a1 e4 61 00 00       	mov    0x61e4,%eax
     a29:	c7 44 24 04 3d 44 00 	movl   $0x443d,0x4(%esp)
     a30:	00 
     a31:	89 04 24             	mov    %eax,(%esp)
     a34:	e8 c7 33 00 00       	call   3e00 <printf>
    exit();
     a39:	e8 64 32 00 00       	call   3ca2 <exit>
     a3e:	66 90                	xchg   %ax,%ax

00000a40 <exectest>:
  printf(stdout, "mkdir test ok\n");
}

void
exectest(void)
{
     a40:	55                   	push   %ebp
     a41:	89 e5                	mov    %esp,%ebp
     a43:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "exec test\n");
     a46:	a1 e4 61 00 00       	mov    0x61e4,%eax
     a4b:	c7 44 24 04 84 44 00 	movl   $0x4484,0x4(%esp)
     a52:	00 
     a53:	89 04 24             	mov    %eax,(%esp)
     a56:	e8 a5 33 00 00       	call   3e00 <printf>
  if(exec("echo", echoargv) < 0){
     a5b:	c7 44 24 04 e8 61 00 	movl   $0x61e8,0x4(%esp)
     a62:	00 
     a63:	c7 04 24 4d 42 00 00 	movl   $0x424d,(%esp)
     a6a:	e8 6b 32 00 00       	call   3cda <exec>
     a6f:	85 c0                	test   %eax,%eax
     a71:	78 02                	js     a75 <exectest+0x35>
    printf(stdout, "exec echo failed\n");
    exit();
  }
}
     a73:	c9                   	leave  
     a74:	c3                   	ret    
void
exectest(void)
{
  printf(stdout, "exec test\n");
  if(exec("echo", echoargv) < 0){
    printf(stdout, "exec echo failed\n");
     a75:	a1 e4 61 00 00       	mov    0x61e4,%eax
     a7a:	c7 44 24 04 8f 44 00 	movl   $0x448f,0x4(%esp)
     a81:	00 
     a82:	89 04 24             	mov    %eax,(%esp)
     a85:	e8 76 33 00 00       	call   3e00 <printf>
    exit();
     a8a:	e8 13 32 00 00       	call   3ca2 <exit>
     a8f:	90                   	nop

00000a90 <pipe1>:

// simple fork and pipe read/write

void
pipe1(void)
{
     a90:	55                   	push   %ebp
     a91:	89 e5                	mov    %esp,%ebp
     a93:	57                   	push   %edi
     a94:	56                   	push   %esi
     a95:	53                   	push   %ebx
     a96:	83 ec 2c             	sub    $0x2c,%esp
  int fds[2], pid;
  int seq, i, n, cc, total;

  if(pipe(fds) != 0){
     a99:	8d 45 e0             	lea    -0x20(%ebp),%eax
     a9c:	89 04 24             	mov    %eax,(%esp)
     a9f:	e8 0e 32 00 00       	call   3cb2 <pipe>
     aa4:	85 c0                	test   %eax,%eax
     aa6:	0f 85 4e 01 00 00    	jne    bfa <pipe1+0x16a>
    printf(1, "pipe() failed\n");
    exit();
  }
  pid = fork();
     aac:	e8 e9 31 00 00       	call   3c9a <fork>
  seq = 0;
  if(pid == 0){
     ab1:	83 f8 00             	cmp    $0x0,%eax
     ab4:	0f 84 93 00 00 00    	je     b4d <pipe1+0xbd>
        printf(1, "pipe1 oops 1\n");
        exit();
      }
    }
    exit();
  } else if(pid > 0){
     aba:	0f 8e 53 01 00 00    	jle    c13 <pipe1+0x183>
    close(fds[1]);
     ac0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    total = 0;
    cc = 1;
     ac3:	bf 01 00 00 00       	mov    $0x1,%edi
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    exit();
  }
  pid = fork();
  seq = 0;
     ac8:	31 db                	xor    %ebx,%ebx
        exit();
      }
    }
    exit();
  } else if(pid > 0){
    close(fds[1]);
     aca:	89 04 24             	mov    %eax,(%esp)
     acd:	e8 f8 31 00 00       	call   3cca <close>
    total = 0;
     ad2:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
     ad9:	8b 45 e0             	mov    -0x20(%ebp),%eax
     adc:	89 7c 24 08          	mov    %edi,0x8(%esp)
     ae0:	c7 44 24 04 c0 89 00 	movl   $0x89c0,0x4(%esp)
     ae7:	00 
     ae8:	89 04 24             	mov    %eax,(%esp)
     aeb:	e8 ca 31 00 00       	call   3cba <read>
     af0:	85 c0                	test   %eax,%eax
     af2:	0f 8e b3 00 00 00    	jle    bab <pipe1+0x11b>
     af8:	89 d9                	mov    %ebx,%ecx
     afa:	8d 34 03             	lea    (%ebx,%eax,1),%esi
     afd:	f7 d9                	neg    %ecx
     aff:	eb 09                	jmp    b0a <pipe1+0x7a>
     b01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      for(i = 0; i < n; i++){
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     b08:	89 d3                	mov    %edx,%ebx
     b0a:	38 9c 0b c0 89 00 00 	cmp    %bl,0x89c0(%ebx,%ecx,1)
     b11:	8d 53 01             	lea    0x1(%ebx),%edx
     b14:	75 1b                	jne    b31 <pipe1+0xa1>
  } else if(pid > 0){
    close(fds[1]);
    total = 0;
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
      for(i = 0; i < n; i++){
     b16:	39 f2                	cmp    %esi,%edx
     b18:	75 ee                	jne    b08 <pipe1+0x78>
          printf(1, "pipe1 oops 2\n");
          return;
        }
      }
      total += n;
      cc = cc * 2;
     b1a:	01 ff                	add    %edi,%edi
    close(fds[1]);
    total = 0;
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
      for(i = 0; i < n; i++){
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     b1c:	89 f3                	mov    %esi,%ebx
          printf(1, "pipe1 oops 2\n");
          return;
        }
      }
      total += n;
     b1e:	01 45 d4             	add    %eax,-0x2c(%ebp)
      cc = cc * 2;
      if(cc > sizeof(buf))
        cc = sizeof(buf);
     b21:	81 ff 01 20 00 00    	cmp    $0x2001,%edi
     b27:	b8 00 20 00 00       	mov    $0x2000,%eax
     b2c:	0f 43 f8             	cmovae %eax,%edi
     b2f:	eb a8                	jmp    ad9 <pipe1+0x49>
    total = 0;
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
      for(i = 0; i < n; i++){
        if((buf[i] & 0xff) != (seq++ & 0xff)){
          printf(1, "pipe1 oops 2\n");
     b31:	c7 44 24 04 be 44 00 	movl   $0x44be,0x4(%esp)
     b38:	00 
     b39:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b40:	e8 bb 32 00 00       	call   3e00 <printf>
  } else {
    printf(1, "fork() failed\n");
    exit();
  }
  printf(1, "pipe1 ok\n");
}
     b45:	83 c4 2c             	add    $0x2c,%esp
     b48:	5b                   	pop    %ebx
     b49:	5e                   	pop    %esi
     b4a:	5f                   	pop    %edi
     b4b:	5d                   	pop    %ebp
     b4c:	c3                   	ret    
    exit();
  }
  pid = fork();
  seq = 0;
  if(pid == 0){
    close(fds[0]);
     b4d:	8b 45 e0             	mov    -0x20(%ebp),%eax
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    exit();
  }
  pid = fork();
  seq = 0;
     b50:	31 f6                	xor    %esi,%esi
  if(pid == 0){
    close(fds[0]);
     b52:	89 04 24             	mov    %eax,(%esp)
     b55:	e8 70 31 00 00       	call   3cca <close>
     b5a:	89 f0                	mov    %esi,%eax

// simple fork and pipe read/write

void
pipe1(void)
{
     b5c:	89 f3                	mov    %esi,%ebx
     b5e:	8d 96 09 04 00 00    	lea    0x409(%esi),%edx
     b64:	f7 d8                	neg    %eax
     b66:	66 90                	xchg   %ax,%ax
  seq = 0;
  if(pid == 0){
    close(fds[0]);
    for(n = 0; n < 5; n++){
      for(i = 0; i < 1033; i++)
        buf[i] = seq++;
     b68:	88 9c 18 c0 89 00 00 	mov    %bl,0x89c0(%eax,%ebx,1)
     b6f:	83 c3 01             	add    $0x1,%ebx
  pid = fork();
  seq = 0;
  if(pid == 0){
    close(fds[0]);
    for(n = 0; n < 5; n++){
      for(i = 0; i < 1033; i++)
     b72:	39 d3                	cmp    %edx,%ebx
     b74:	75 f2                	jne    b68 <pipe1+0xd8>
        buf[i] = seq++;
      if(write(fds[1], buf, 1033) != 1033){
     b76:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     b79:	89 de                	mov    %ebx,%esi
     b7b:	c7 44 24 08 09 04 00 	movl   $0x409,0x8(%esp)
     b82:	00 
     b83:	c7 44 24 04 c0 89 00 	movl   $0x89c0,0x4(%esp)
     b8a:	00 
     b8b:	89 04 24             	mov    %eax,(%esp)
     b8e:	e8 2f 31 00 00       	call   3cc2 <write>
     b93:	3d 09 04 00 00       	cmp    $0x409,%eax
     b98:	0f 85 8e 00 00 00    	jne    c2c <pipe1+0x19c>
  }
  pid = fork();
  seq = 0;
  if(pid == 0){
    close(fds[0]);
    for(n = 0; n < 5; n++){
     b9e:	81 fb 2d 14 00 00    	cmp    $0x142d,%ebx
     ba4:	75 b4                	jne    b5a <pipe1+0xca>
      if(cc > sizeof(buf))
        cc = sizeof(buf);
    }
    if(total != 5 * 1033){
      printf(1, "pipe1 oops 3 total %d\n", total);
      exit();
     ba6:	e8 f7 30 00 00       	call   3ca2 <exit>
      total += n;
      cc = cc * 2;
      if(cc > sizeof(buf))
        cc = sizeof(buf);
    }
    if(total != 5 * 1033){
     bab:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
     bb2:	75 29                	jne    bdd <pipe1+0x14d>
      printf(1, "pipe1 oops 3 total %d\n", total);
      exit();
    }
    close(fds[0]);
     bb4:	8b 45 e0             	mov    -0x20(%ebp),%eax
     bb7:	89 04 24             	mov    %eax,(%esp)
     bba:	e8 0b 31 00 00       	call   3cca <close>
    wait();
     bbf:	e8 e6 30 00 00       	call   3caa <wait>
  } else {
    printf(1, "fork() failed\n");
    exit();
  }
  printf(1, "pipe1 ok\n");
     bc4:	c7 44 24 04 e3 44 00 	movl   $0x44e3,0x4(%esp)
     bcb:	00 
     bcc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     bd3:	e8 28 32 00 00       	call   3e00 <printf>
     bd8:	e9 68 ff ff ff       	jmp    b45 <pipe1+0xb5>
      cc = cc * 2;
      if(cc > sizeof(buf))
        cc = sizeof(buf);
    }
    if(total != 5 * 1033){
      printf(1, "pipe1 oops 3 total %d\n", total);
     bdd:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     be0:	c7 44 24 04 cc 44 00 	movl   $0x44cc,0x4(%esp)
     be7:	00 
     be8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     bef:	89 44 24 08          	mov    %eax,0x8(%esp)
     bf3:	e8 08 32 00 00       	call   3e00 <printf>
     bf8:	eb ac                	jmp    ba6 <pipe1+0x116>
{
  int fds[2], pid;
  int seq, i, n, cc, total;

  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
     bfa:	c7 44 24 04 a1 44 00 	movl   $0x44a1,0x4(%esp)
     c01:	00 
     c02:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     c09:	e8 f2 31 00 00       	call   3e00 <printf>
    exit();
     c0e:	e8 8f 30 00 00       	call   3ca2 <exit>
      exit();
    }
    close(fds[0]);
    wait();
  } else {
    printf(1, "fork() failed\n");
     c13:	c7 44 24 04 ed 44 00 	movl   $0x44ed,0x4(%esp)
     c1a:	00 
     c1b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     c22:	e8 d9 31 00 00       	call   3e00 <printf>
    exit();
     c27:	e8 76 30 00 00       	call   3ca2 <exit>
    close(fds[0]);
    for(n = 0; n < 5; n++){
      for(i = 0; i < 1033; i++)
        buf[i] = seq++;
      if(write(fds[1], buf, 1033) != 1033){
        printf(1, "pipe1 oops 1\n");
     c2c:	c7 44 24 04 b0 44 00 	movl   $0x44b0,0x4(%esp)
     c33:	00 
     c34:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     c3b:	e8 c0 31 00 00       	call   3e00 <printf>
        exit();
     c40:	e8 5d 30 00 00       	call   3ca2 <exit>
     c45:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     c49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000c50 <preempt>:
}

// meant to be run w/ at most two CPUs
void
preempt(void)
{
     c50:	55                   	push   %ebp
     c51:	89 e5                	mov    %esp,%ebp
     c53:	57                   	push   %edi
     c54:	56                   	push   %esi
     c55:	53                   	push   %ebx
     c56:	83 ec 2c             	sub    $0x2c,%esp
  int pid1, pid2, pid3;
  int pfds[2];

  printf(1, "preempt: ");
     c59:	c7 44 24 04 fc 44 00 	movl   $0x44fc,0x4(%esp)
     c60:	00 
     c61:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     c68:	e8 93 31 00 00       	call   3e00 <printf>
  pid1 = fork();
     c6d:	e8 28 30 00 00       	call   3c9a <fork>
  if(pid1 == 0)
     c72:	85 c0                	test   %eax,%eax
{
  int pid1, pid2, pid3;
  int pfds[2];

  printf(1, "preempt: ");
  pid1 = fork();
     c74:	89 c7                	mov    %eax,%edi
  if(pid1 == 0)
     c76:	75 02                	jne    c7a <preempt+0x2a>
     c78:	eb fe                	jmp    c78 <preempt+0x28>
     c7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    for(;;)
      ;

  pid2 = fork();
     c80:	e8 15 30 00 00       	call   3c9a <fork>
  if(pid2 == 0)
     c85:	85 c0                	test   %eax,%eax
  pid1 = fork();
  if(pid1 == 0)
    for(;;)
      ;

  pid2 = fork();
     c87:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     c89:	75 02                	jne    c8d <preempt+0x3d>
     c8b:	eb fe                	jmp    c8b <preempt+0x3b>
    for(;;)
      ;

  pipe(pfds);
     c8d:	8d 45 e0             	lea    -0x20(%ebp),%eax
     c90:	89 04 24             	mov    %eax,(%esp)
     c93:	e8 1a 30 00 00       	call   3cb2 <pipe>
  pid3 = fork();
     c98:	e8 fd 2f 00 00       	call   3c9a <fork>
  if(pid3 == 0){
     c9d:	85 c0                	test   %eax,%eax
  if(pid2 == 0)
    for(;;)
      ;

  pipe(pfds);
  pid3 = fork();
     c9f:	89 c3                	mov    %eax,%ebx
  if(pid3 == 0){
     ca1:	75 4c                	jne    cef <preempt+0x9f>
    close(pfds[0]);
     ca3:	8b 45 e0             	mov    -0x20(%ebp),%eax
     ca6:	89 04 24             	mov    %eax,(%esp)
     ca9:	e8 1c 30 00 00       	call   3cca <close>
    if(write(pfds[1], "x", 1) != 1)
     cae:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     cb1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     cb8:	00 
     cb9:	c7 44 24 04 c1 4a 00 	movl   $0x4ac1,0x4(%esp)
     cc0:	00 
     cc1:	89 04 24             	mov    %eax,(%esp)
     cc4:	e8 f9 2f 00 00       	call   3cc2 <write>
     cc9:	83 f8 01             	cmp    $0x1,%eax
     ccc:	74 14                	je     ce2 <preempt+0x92>
      printf(1, "preempt write error");
     cce:	c7 44 24 04 06 45 00 	movl   $0x4506,0x4(%esp)
     cd5:	00 
     cd6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     cdd:	e8 1e 31 00 00       	call   3e00 <printf>
    close(pfds[1]);
     ce2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     ce5:	89 04 24             	mov    %eax,(%esp)
     ce8:	e8 dd 2f 00 00       	call   3cca <close>
     ced:	eb fe                	jmp    ced <preempt+0x9d>
    for(;;)
      ;
  }

  close(pfds[1]);
     cef:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     cf2:	89 04 24             	mov    %eax,(%esp)
     cf5:	e8 d0 2f 00 00       	call   3cca <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     cfa:	8b 45 e0             	mov    -0x20(%ebp),%eax
     cfd:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
     d04:	00 
     d05:	c7 44 24 04 c0 89 00 	movl   $0x89c0,0x4(%esp)
     d0c:	00 
     d0d:	89 04 24             	mov    %eax,(%esp)
     d10:	e8 a5 2f 00 00       	call   3cba <read>
     d15:	83 f8 01             	cmp    $0x1,%eax
     d18:	74 1c                	je     d36 <preempt+0xe6>
    printf(1, "preempt read error");
     d1a:	c7 44 24 04 1a 45 00 	movl   $0x451a,0x4(%esp)
     d21:	00 
     d22:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d29:	e8 d2 30 00 00       	call   3e00 <printf>
  printf(1, "wait... ");
  wait();
  wait();
  wait();
  printf(1, "preempt ok\n");
}
     d2e:	83 c4 2c             	add    $0x2c,%esp
     d31:	5b                   	pop    %ebx
     d32:	5e                   	pop    %esi
     d33:	5f                   	pop    %edi
     d34:	5d                   	pop    %ebp
     d35:	c3                   	ret    
  close(pfds[1]);
  if(read(pfds[0], buf, sizeof(buf)) != 1){
    printf(1, "preempt read error");
    return;
  }
  close(pfds[0]);
     d36:	8b 45 e0             	mov    -0x20(%ebp),%eax
     d39:	89 04 24             	mov    %eax,(%esp)
     d3c:	e8 89 2f 00 00       	call   3cca <close>
  printf(1, "kill... ");
     d41:	c7 44 24 04 2d 45 00 	movl   $0x452d,0x4(%esp)
     d48:	00 
     d49:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d50:	e8 ab 30 00 00       	call   3e00 <printf>
  kill(pid1);
     d55:	89 3c 24             	mov    %edi,(%esp)
     d58:	e8 75 2f 00 00       	call   3cd2 <kill>
  kill(pid2);
     d5d:	89 34 24             	mov    %esi,(%esp)
     d60:	e8 6d 2f 00 00       	call   3cd2 <kill>
  kill(pid3);
     d65:	89 1c 24             	mov    %ebx,(%esp)
     d68:	e8 65 2f 00 00       	call   3cd2 <kill>
  printf(1, "wait... ");
     d6d:	c7 44 24 04 36 45 00 	movl   $0x4536,0x4(%esp)
     d74:	00 
     d75:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d7c:	e8 7f 30 00 00       	call   3e00 <printf>
  wait();
     d81:	e8 24 2f 00 00       	call   3caa <wait>
  wait();
     d86:	e8 1f 2f 00 00       	call   3caa <wait>
     d8b:	90                   	nop
     d8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  wait();
     d90:	e8 15 2f 00 00       	call   3caa <wait>
  printf(1, "preempt ok\n");
     d95:	c7 44 24 04 3f 45 00 	movl   $0x453f,0x4(%esp)
     d9c:	00 
     d9d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     da4:	e8 57 30 00 00       	call   3e00 <printf>
     da9:	eb 83                	jmp    d2e <preempt+0xde>
     dab:	90                   	nop
     dac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000db0 <exitwait>:
}

// try to find any races between exit and wait
void
exitwait(void)
{
     db0:	55                   	push   %ebp
     db1:	89 e5                	mov    %esp,%ebp
     db3:	56                   	push   %esi
     db4:	be 64 00 00 00       	mov    $0x64,%esi
     db9:	53                   	push   %ebx
     dba:	83 ec 10             	sub    $0x10,%esp
     dbd:	eb 13                	jmp    dd2 <exitwait+0x22>
     dbf:	90                   	nop
    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
      return;
    }
    if(pid){
     dc0:	74 71                	je     e33 <exitwait+0x83>
      if(wait() != pid){
     dc2:	e8 e3 2e 00 00       	call   3caa <wait>
     dc7:	39 d8                	cmp    %ebx,%eax
     dc9:	75 2d                	jne    df8 <exitwait+0x48>
void
exitwait(void)
{
  int i, pid;

  for(i = 0; i < 100; i++){
     dcb:	83 ee 01             	sub    $0x1,%esi
     dce:	66 90                	xchg   %ax,%ax
     dd0:	74 46                	je     e18 <exitwait+0x68>
    pid = fork();
     dd2:	e8 c3 2e 00 00       	call   3c9a <fork>
    if(pid < 0){
     dd7:	85 c0                	test   %eax,%eax
exitwait(void)
{
  int i, pid;

  for(i = 0; i < 100; i++){
    pid = fork();
     dd9:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
     ddb:	79 e3                	jns    dc0 <exitwait+0x10>
      printf(1, "fork failed\n");
     ddd:	c7 44 24 04 a9 50 00 	movl   $0x50a9,0x4(%esp)
     de4:	00 
     de5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     dec:	e8 0f 30 00 00       	call   3e00 <printf>
    } else {
      exit();
    }
  }
  printf(1, "exitwait ok\n");
}
     df1:	83 c4 10             	add    $0x10,%esp
     df4:	5b                   	pop    %ebx
     df5:	5e                   	pop    %esi
     df6:	5d                   	pop    %ebp
     df7:	c3                   	ret    
      printf(1, "fork failed\n");
      return;
    }
    if(pid){
      if(wait() != pid){
        printf(1, "wait wrong pid\n");
     df8:	c7 44 24 04 4b 45 00 	movl   $0x454b,0x4(%esp)
     dff:	00 
     e00:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e07:	e8 f4 2f 00 00       	call   3e00 <printf>
    } else {
      exit();
    }
  }
  printf(1, "exitwait ok\n");
}
     e0c:	83 c4 10             	add    $0x10,%esp
     e0f:	5b                   	pop    %ebx
     e10:	5e                   	pop    %esi
     e11:	5d                   	pop    %ebp
     e12:	c3                   	ret    
     e13:	90                   	nop
     e14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      }
    } else {
      exit();
    }
  }
  printf(1, "exitwait ok\n");
     e18:	c7 44 24 04 5b 45 00 	movl   $0x455b,0x4(%esp)
     e1f:	00 
     e20:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e27:	e8 d4 2f 00 00       	call   3e00 <printf>
}
     e2c:	83 c4 10             	add    $0x10,%esp
     e2f:	5b                   	pop    %ebx
     e30:	5e                   	pop    %esi
     e31:	5d                   	pop    %ebp
     e32:	c3                   	ret    
      if(wait() != pid){
        printf(1, "wait wrong pid\n");
        return;
      }
    } else {
      exit();
     e33:	e8 6a 2e 00 00       	call   3ca2 <exit>
     e38:	90                   	nop
     e39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000e40 <mem>:
  printf(1, "exitwait ok\n");
}

void
mem(void)
{
     e40:	55                   	push   %ebp
     e41:	89 e5                	mov    %esp,%ebp
     e43:	57                   	push   %edi
     e44:	56                   	push   %esi
     e45:	53                   	push   %ebx
     e46:	83 ec 1c             	sub    $0x1c,%esp
  void *m1, *m2;
  int pid, ppid;

  printf(1, "mem test\n");
     e49:	c7 44 24 04 68 45 00 	movl   $0x4568,0x4(%esp)
     e50:	00 
     e51:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e58:	e8 a3 2f 00 00       	call   3e00 <printf>
  ppid = getpid();
     e5d:	e8 c0 2e 00 00       	call   3d22 <getpid>
     e62:	89 c6                	mov    %eax,%esi
  if((pid = fork()) == 0){
     e64:	e8 31 2e 00 00       	call   3c9a <fork>
     e69:	85 c0                	test   %eax,%eax
     e6b:	75 73                	jne    ee0 <mem+0xa0>
     e6d:	31 db                	xor    %ebx,%ebx
     e6f:	90                   	nop
     e70:	eb 0a                	jmp    e7c <mem+0x3c>
     e72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    m1 = 0;
    while((m2 = malloc(10001)) != 0){
      *(char**)m2 = m1;
     e78:	89 18                	mov    %ebx,(%eax)
     e7a:	89 c3                	mov    %eax,%ebx

  printf(1, "mem test\n");
  ppid = getpid();
  if((pid = fork()) == 0){
    m1 = 0;
    while((m2 = malloc(10001)) != 0){
     e7c:	c7 04 24 11 27 00 00 	movl   $0x2711,(%esp)
     e83:	e8 f8 31 00 00       	call   4080 <malloc>
     e88:	85 c0                	test   %eax,%eax
     e8a:	75 ec                	jne    e78 <mem+0x38>
      *(char**)m2 = m1;
      m1 = m2;
    }
    while(m1){
     e8c:	85 db                	test   %ebx,%ebx
     e8e:	75 0a                	jne    e9a <mem+0x5a>
     e90:	eb 16                	jmp    ea8 <mem+0x68>
     e92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      m2 = *(char**)m1;
      free(m1);
      m1 = m2;
     e98:	89 fb                	mov    %edi,%ebx
    while((m2 = malloc(10001)) != 0){
      *(char**)m2 = m1;
      m1 = m2;
    }
    while(m1){
      m2 = *(char**)m1;
     e9a:	8b 3b                	mov    (%ebx),%edi
      free(m1);
     e9c:	89 1c 24             	mov    %ebx,(%esp)
     e9f:	e8 4c 31 00 00       	call   3ff0 <free>
    m1 = 0;
    while((m2 = malloc(10001)) != 0){
      *(char**)m2 = m1;
      m1 = m2;
    }
    while(m1){
     ea4:	85 ff                	test   %edi,%edi
     ea6:	75 f0                	jne    e98 <mem+0x58>
      m2 = *(char**)m1;
      free(m1);
      m1 = m2;
    }
    m1 = malloc(1024*20);
     ea8:	c7 04 24 00 50 00 00 	movl   $0x5000,(%esp)
     eaf:	e8 cc 31 00 00       	call   4080 <malloc>
    if(m1 == 0){
     eb4:	85 c0                	test   %eax,%eax
     eb6:	74 38                	je     ef0 <mem+0xb0>
      printf(1, "couldn't allocate mem?!!\n");
      kill(ppid);
      exit();
    }
    free(m1);
     eb8:	89 04 24             	mov    %eax,(%esp)
     ebb:	e8 30 31 00 00       	call   3ff0 <free>
    printf(1, "mem ok\n");
     ec0:	c7 44 24 04 8c 45 00 	movl   $0x458c,0x4(%esp)
     ec7:	00 
     ec8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ecf:	e8 2c 2f 00 00       	call   3e00 <printf>
    exit();
     ed4:	e8 c9 2d 00 00       	call   3ca2 <exit>
     ed9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  } else {
    wait();
  }
}
     ee0:	83 c4 1c             	add    $0x1c,%esp
     ee3:	5b                   	pop    %ebx
     ee4:	5e                   	pop    %esi
     ee5:	5f                   	pop    %edi
     ee6:	5d                   	pop    %ebp
    }
    free(m1);
    printf(1, "mem ok\n");
    exit();
  } else {
    wait();
     ee7:	e9 be 2d 00 00       	jmp    3caa <wait>
     eec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      free(m1);
      m1 = m2;
    }
    m1 = malloc(1024*20);
    if(m1 == 0){
      printf(1, "couldn't allocate mem?!!\n");
     ef0:	c7 44 24 04 72 45 00 	movl   $0x4572,0x4(%esp)
     ef7:	00 
     ef8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     eff:	e8 fc 2e 00 00       	call   3e00 <printf>
      kill(ppid);
     f04:	89 34 24             	mov    %esi,(%esp)
     f07:	e8 c6 2d 00 00       	call   3cd2 <kill>
      exit();
     f0c:	e8 91 2d 00 00       	call   3ca2 <exit>
     f11:	eb 0d                	jmp    f20 <sharedfd>
     f13:	90                   	nop
     f14:	90                   	nop
     f15:	90                   	nop
     f16:	90                   	nop
     f17:	90                   	nop
     f18:	90                   	nop
     f19:	90                   	nop
     f1a:	90                   	nop
     f1b:	90                   	nop
     f1c:	90                   	nop
     f1d:	90                   	nop
     f1e:	90                   	nop
     f1f:	90                   	nop

00000f20 <sharedfd>:

// two processes write to the same file descriptor
// is the offset shared? does inode locking work?
void
sharedfd(void)
{
     f20:	55                   	push   %ebp
     f21:	89 e5                	mov    %esp,%ebp
     f23:	57                   	push   %edi
     f24:	56                   	push   %esi
     f25:	53                   	push   %ebx
     f26:	83 ec 3c             	sub    $0x3c,%esp
  int fd, pid, i, n, nc, np;
  char buf[10];

  printf(1, "sharedfd test\n");
     f29:	c7 44 24 04 94 45 00 	movl   $0x4594,0x4(%esp)
     f30:	00 
     f31:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     f38:	e8 c3 2e 00 00       	call   3e00 <printf>

  unlink("sharedfd");
     f3d:	c7 04 24 a3 45 00 00 	movl   $0x45a3,(%esp)
     f44:	e8 a9 2d 00 00       	call   3cf2 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
     f49:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     f50:	00 
     f51:	c7 04 24 a3 45 00 00 	movl   $0x45a3,(%esp)
     f58:	e8 85 2d 00 00       	call   3ce2 <open>
  if(fd < 0){
     f5d:	85 c0                	test   %eax,%eax
  char buf[10];

  printf(1, "sharedfd test\n");

  unlink("sharedfd");
  fd = open("sharedfd", O_CREATE|O_RDWR);
     f5f:	89 c7                	mov    %eax,%edi
  if(fd < 0){
     f61:	0f 88 40 01 00 00    	js     10a7 <sharedfd+0x187>
    printf(1, "fstests: cannot open sharedfd for writing");
    return;
  }
  pid = fork();
     f67:	e8 2e 2d 00 00       	call   3c9a <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
     f6c:	8d 75 de             	lea    -0x22(%ebp),%esi
     f6f:	bb e8 03 00 00       	mov    $0x3e8,%ebx
     f74:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     f7b:	00 
     f7c:	89 34 24             	mov    %esi,(%esp)
     f7f:	83 f8 01             	cmp    $0x1,%eax
  fd = open("sharedfd", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(1, "fstests: cannot open sharedfd for writing");
    return;
  }
  pid = fork();
     f82:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
     f85:	19 c0                	sbb    %eax,%eax
     f87:	83 e0 f3             	and    $0xfffffff3,%eax
     f8a:	83 c0 70             	add    $0x70,%eax
     f8d:	89 44 24 04          	mov    %eax,0x4(%esp)
     f91:	e8 9a 2b 00 00       	call   3b30 <memset>
     f96:	eb 05                	jmp    f9d <sharedfd+0x7d>
  for(i = 0; i < 1000; i++){
     f98:	83 eb 01             	sub    $0x1,%ebx
     f9b:	74 2d                	je     fca <sharedfd+0xaa>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
     f9d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     fa4:	00 
     fa5:	89 74 24 04          	mov    %esi,0x4(%esp)
     fa9:	89 3c 24             	mov    %edi,(%esp)
     fac:	e8 11 2d 00 00       	call   3cc2 <write>
     fb1:	83 f8 0a             	cmp    $0xa,%eax
     fb4:	74 e2                	je     f98 <sharedfd+0x78>
      printf(1, "fstests: write sharedfd failed\n");
     fb6:	c7 44 24 04 94 52 00 	movl   $0x5294,0x4(%esp)
     fbd:	00 
     fbe:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     fc5:	e8 36 2e 00 00       	call   3e00 <printf>
      break;
    }
  }
  if(pid == 0)
     fca:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     fcd:	85 c0                	test   %eax,%eax
     fcf:	0f 84 26 01 00 00    	je     10fb <sharedfd+0x1db>
    exit();
  else
    wait();
     fd5:	e8 d0 2c 00 00       	call   3caa <wait>
  close(fd);
     fda:	89 3c 24             	mov    %edi,(%esp)
     fdd:	e8 e8 2c 00 00       	call   3cca <close>
  fd = open("sharedfd", 0);
     fe2:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     fe9:	00 
     fea:	c7 04 24 a3 45 00 00 	movl   $0x45a3,(%esp)
     ff1:	e8 ec 2c 00 00       	call   3ce2 <open>
  if(fd < 0){
     ff6:	85 c0                	test   %eax,%eax
  if(pid == 0)
    exit();
  else
    wait();
  close(fd);
  fd = open("sharedfd", 0);
     ff8:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
     ffb:	0f 88 c2 00 00 00    	js     10c3 <sharedfd+0x1a3>
    1001:	31 d2                	xor    %edx,%edx
    1003:	31 db                	xor    %ebx,%ebx
    1005:	8d 7d e8             	lea    -0x18(%ebp),%edi
    1008:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    100b:	90                   	nop
    100c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "fstests: cannot open sharedfd for reading\n");
    return;
  }
  nc = np = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
    1010:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1013:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
    101a:	00 
    101b:	89 74 24 04          	mov    %esi,0x4(%esp)
    101f:	89 04 24             	mov    %eax,(%esp)
    1022:	e8 93 2c 00 00       	call   3cba <read>
    1027:	85 c0                	test   %eax,%eax
    1029:	7e 36                	jle    1061 <sharedfd+0x141>
    102b:	89 f0                	mov    %esi,%eax
    102d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    1030:	eb 18                	jmp    104a <sharedfd+0x12a>
    1032:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    for(i = 0; i < sizeof(buf); i++){
      if(buf[i] == 'c')
        nc++;
      if(buf[i] == 'p')
        np++;
    1038:	80 f9 70             	cmp    $0x70,%cl
    103b:	0f 94 c1             	sete   %cl
    103e:	83 c0 01             	add    $0x1,%eax
    1041:	0f b6 c9             	movzbl %cl,%ecx
    1044:	01 cb                	add    %ecx,%ebx
    printf(1, "fstests: cannot open sharedfd for reading\n");
    return;
  }
  nc = np = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
    for(i = 0; i < sizeof(buf); i++){
    1046:	39 f8                	cmp    %edi,%eax
    1048:	74 12                	je     105c <sharedfd+0x13c>
      if(buf[i] == 'c')
    104a:	0f b6 08             	movzbl (%eax),%ecx
    104d:	80 f9 63             	cmp    $0x63,%cl
    1050:	75 e6                	jne    1038 <sharedfd+0x118>
    1052:	83 c0 01             	add    $0x1,%eax
        nc++;
    1055:	83 c2 01             	add    $0x1,%edx
    printf(1, "fstests: cannot open sharedfd for reading\n");
    return;
  }
  nc = np = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
    for(i = 0; i < sizeof(buf); i++){
    1058:	39 f8                	cmp    %edi,%eax
    105a:	75 ee                	jne    104a <sharedfd+0x12a>
    105c:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    105f:	eb af                	jmp    1010 <sharedfd+0xf0>
        nc++;
      if(buf[i] == 'p')
        np++;
    }
  }
  close(fd);
    1061:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1064:	89 04 24             	mov    %eax,(%esp)
    1067:	e8 5e 2c 00 00       	call   3cca <close>
  unlink("sharedfd");
    106c:	c7 04 24 a3 45 00 00 	movl   $0x45a3,(%esp)
    1073:	e8 7a 2c 00 00       	call   3cf2 <unlink>
  if(nc == 10000 && np == 10000){
    1078:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    107e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    1081:	75 5c                	jne    10df <sharedfd+0x1bf>
    1083:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
    1089:	75 54                	jne    10df <sharedfd+0x1bf>
    printf(1, "sharedfd ok\n");
    108b:	c7 44 24 04 ac 45 00 	movl   $0x45ac,0x4(%esp)
    1092:	00 
    1093:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    109a:	e8 61 2d 00 00       	call   3e00 <printf>
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    exit();
  }
}
    109f:	83 c4 3c             	add    $0x3c,%esp
    10a2:	5b                   	pop    %ebx
    10a3:	5e                   	pop    %esi
    10a4:	5f                   	pop    %edi
    10a5:	5d                   	pop    %ebp
    10a6:	c3                   	ret    
  printf(1, "sharedfd test\n");

  unlink("sharedfd");
  fd = open("sharedfd", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(1, "fstests: cannot open sharedfd for writing");
    10a7:	c7 44 24 04 68 52 00 	movl   $0x5268,0x4(%esp)
    10ae:	00 
    10af:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    10b6:	e8 45 2d 00 00       	call   3e00 <printf>
    printf(1, "sharedfd ok\n");
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    exit();
  }
}
    10bb:	83 c4 3c             	add    $0x3c,%esp
    10be:	5b                   	pop    %ebx
    10bf:	5e                   	pop    %esi
    10c0:	5f                   	pop    %edi
    10c1:	5d                   	pop    %ebp
    10c2:	c3                   	ret    
  else
    wait();
  close(fd);
  fd = open("sharedfd", 0);
  if(fd < 0){
    printf(1, "fstests: cannot open sharedfd for reading\n");
    10c3:	c7 44 24 04 b4 52 00 	movl   $0x52b4,0x4(%esp)
    10ca:	00 
    10cb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    10d2:	e8 29 2d 00 00       	call   3e00 <printf>
    printf(1, "sharedfd ok\n");
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    exit();
  }
}
    10d7:	83 c4 3c             	add    $0x3c,%esp
    10da:	5b                   	pop    %ebx
    10db:	5e                   	pop    %esi
    10dc:	5f                   	pop    %edi
    10dd:	5d                   	pop    %ebp
    10de:	c3                   	ret    
  close(fd);
  unlink("sharedfd");
  if(nc == 10000 && np == 10000){
    printf(1, "sharedfd ok\n");
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    10df:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    10e3:	89 54 24 08          	mov    %edx,0x8(%esp)
    10e7:	c7 44 24 04 b9 45 00 	movl   $0x45b9,0x4(%esp)
    10ee:	00 
    10ef:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    10f6:	e8 05 2d 00 00       	call   3e00 <printf>
    exit();
    10fb:	e8 a2 2b 00 00       	call   3ca2 <exit>

00001100 <fourfiles>:

// four processes write different files at the same
// time, to test block allocation.
void
fourfiles(void)
{
    1100:	55                   	push   %ebp
    1101:	89 e5                	mov    %esp,%ebp
    1103:	57                   	push   %edi
    1104:	56                   	push   %esi
  int fd, pid, i, j, n, total, pi;
  char *names[] = { "f0", "f1", "f2", "f3" };
  char *fname;

  printf(1, "fourfiles test\n");
    1105:	be ce 45 00 00       	mov    $0x45ce,%esi

// four processes write different files at the same
// time, to test block allocation.
void
fourfiles(void)
{
    110a:	53                   	push   %ebx
  char *names[] = { "f0", "f1", "f2", "f3" };
  char *fname;

  printf(1, "fourfiles test\n");

  for(pi = 0; pi < 4; pi++){
    110b:	31 db                	xor    %ebx,%ebx

// four processes write different files at the same
// time, to test block allocation.
void
fourfiles(void)
{
    110d:	83 ec 2c             	sub    $0x2c,%esp
  int fd, pid, i, j, n, total, pi;
  char *names[] = { "f0", "f1", "f2", "f3" };
  char *fname;

  printf(1, "fourfiles test\n");
    1110:	c7 44 24 04 d4 45 00 	movl   $0x45d4,0x4(%esp)
    1117:	00 
    1118:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
// time, to test block allocation.
void
fourfiles(void)
{
  int fd, pid, i, j, n, total, pi;
  char *names[] = { "f0", "f1", "f2", "f3" };
    111f:	c7 45 d8 ce 45 00 00 	movl   $0x45ce,-0x28(%ebp)
    1126:	c7 45 dc 17 47 00 00 	movl   $0x4717,-0x24(%ebp)
    112d:	c7 45 e0 1b 47 00 00 	movl   $0x471b,-0x20(%ebp)
    1134:	c7 45 e4 d1 45 00 00 	movl   $0x45d1,-0x1c(%ebp)
  char *fname;

  printf(1, "fourfiles test\n");
    113b:	e8 c0 2c 00 00       	call   3e00 <printf>

  for(pi = 0; pi < 4; pi++){
    fname = names[pi];
    unlink(fname);
    1140:	89 34 24             	mov    %esi,(%esp)
    1143:	e8 aa 2b 00 00       	call   3cf2 <unlink>

    pid = fork();
    1148:	e8 4d 2b 00 00       	call   3c9a <fork>
    if(pid < 0){
    114d:	85 c0                	test   %eax,%eax
    114f:	0f 88 89 01 00 00    	js     12de <fourfiles+0x1de>
      printf(1, "fork failed\n");
      exit();
    }

    if(pid == 0){
    1155:	0f 84 e4 00 00 00    	je     123f <fourfiles+0x13f>
  char *names[] = { "f0", "f1", "f2", "f3" };
  char *fname;

  printf(1, "fourfiles test\n");

  for(pi = 0; pi < 4; pi++){
    115b:	83 c3 01             	add    $0x1,%ebx
    115e:	83 fb 04             	cmp    $0x4,%ebx
    1161:	74 06                	je     1169 <fourfiles+0x69>
    1163:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    1167:	eb d7                	jmp    1140 <fourfiles+0x40>
      exit();
    }
  }

  for(pi = 0; pi < 4; pi++){
    wait();
    1169:	e8 3c 2b 00 00       	call   3caa <wait>
    116e:	bf 30 00 00 00       	mov    $0x30,%edi
    1173:	e8 32 2b 00 00       	call   3caa <wait>
    1178:	e8 2d 2b 00 00       	call   3caa <wait>
    117d:	e8 28 2b 00 00       	call   3caa <wait>
    1182:	c7 45 d4 ce 45 00 00 	movl   $0x45ce,-0x2c(%ebp)
  }

  for(i = 0; i < 2; i++){
    fname = names[i];
    fd = open(fname, 0);
    1189:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    total = 0;
    118c:	31 db                	xor    %ebx,%ebx
    wait();
  }

  for(i = 0; i < 2; i++){
    fname = names[i];
    fd = open(fname, 0);
    118e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1195:	00 
    1196:	89 04 24             	mov    %eax,(%esp)
    1199:	e8 44 2b 00 00       	call   3ce2 <open>
    119e:	89 c6                	mov    %eax,%esi
    total = 0;
    while((n = read(fd, buf, sizeof(buf))) > 0){
    11a0:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    11a7:	00 
    11a8:	c7 44 24 04 c0 89 00 	movl   $0x89c0,0x4(%esp)
    11af:	00 
    11b0:	89 34 24             	mov    %esi,(%esp)
    11b3:	e8 02 2b 00 00       	call   3cba <read>
    11b8:	85 c0                	test   %eax,%eax
    11ba:	7e 1a                	jle    11d6 <fourfiles+0xd6>
    11bc:	31 d2                	xor    %edx,%edx
    11be:	66 90                	xchg   %ax,%ax
      for(j = 0; j < n; j++){
        if(buf[j] != '0'+i){
    11c0:	0f be 8a c0 89 00 00 	movsbl 0x89c0(%edx),%ecx
    11c7:	39 cf                	cmp    %ecx,%edi
    11c9:	75 5b                	jne    1226 <fourfiles+0x126>
  for(i = 0; i < 2; i++){
    fname = names[i];
    fd = open(fname, 0);
    total = 0;
    while((n = read(fd, buf, sizeof(buf))) > 0){
      for(j = 0; j < n; j++){
    11cb:	83 c2 01             	add    $0x1,%edx
    11ce:	39 c2                	cmp    %eax,%edx
    11d0:	75 ee                	jne    11c0 <fourfiles+0xc0>
        if(buf[j] != '0'+i){
          printf(1, "wrong char\n");
          exit();
        }
      }
      total += n;
    11d2:	01 d3                	add    %edx,%ebx
    11d4:	eb ca                	jmp    11a0 <fourfiles+0xa0>
    }
    close(fd);
    11d6:	89 34 24             	mov    %esi,(%esp)
    11d9:	e8 ec 2a 00 00       	call   3cca <close>
    if(total != 12*500){
    11de:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    11e4:	0f 85 d7 00 00 00    	jne    12c1 <fourfiles+0x1c1>
      printf(1, "wrong length %d\n", total);
      exit();
    }
    unlink(fname);
    11ea:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    11ed:	89 04 24             	mov    %eax,(%esp)
    11f0:	e8 fd 2a 00 00       	call   3cf2 <unlink>

  for(pi = 0; pi < 4; pi++){
    wait();
  }

  for(i = 0; i < 2; i++){
    11f5:	83 ff 31             	cmp    $0x31,%edi
    11f8:	75 1c                	jne    1216 <fourfiles+0x116>
      exit();
    }
    unlink(fname);
  }

  printf(1, "fourfiles ok\n");
    11fa:	c7 44 24 04 12 46 00 	movl   $0x4612,0x4(%esp)
    1201:	00 
    1202:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1209:	e8 f2 2b 00 00       	call   3e00 <printf>
}
    120e:	83 c4 2c             	add    $0x2c,%esp
    1211:	5b                   	pop    %ebx
    1212:	5e                   	pop    %esi
    1213:	5f                   	pop    %edi
    1214:	5d                   	pop    %ebp
    1215:	c3                   	ret    
    1216:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1219:	bf 31 00 00 00       	mov    $0x31,%edi
    121e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    1221:	e9 63 ff ff ff       	jmp    1189 <fourfiles+0x89>
    fd = open(fname, 0);
    total = 0;
    while((n = read(fd, buf, sizeof(buf))) > 0){
      for(j = 0; j < n; j++){
        if(buf[j] != '0'+i){
          printf(1, "wrong char\n");
    1226:	c7 44 24 04 f5 45 00 	movl   $0x45f5,0x4(%esp)
    122d:	00 
    122e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1235:	e8 c6 2b 00 00       	call   3e00 <printf>
          exit();
    123a:	e8 63 2a 00 00       	call   3ca2 <exit>
      printf(1, "fork failed\n");
      exit();
    }

    if(pid == 0){
      fd = open(fname, O_CREATE | O_RDWR);
    123f:	89 34 24             	mov    %esi,(%esp)
    1242:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1249:	00 
    124a:	e8 93 2a 00 00       	call   3ce2 <open>
      if(fd < 0){
    124f:	85 c0                	test   %eax,%eax
      printf(1, "fork failed\n");
      exit();
    }

    if(pid == 0){
      fd = open(fname, O_CREATE | O_RDWR);
    1251:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    1253:	0f 88 9e 00 00 00    	js     12f7 <fourfiles+0x1f7>
        printf(1, "create failed\n");
        exit();
      }

      memset(buf, '0'+pi, 512);
    1259:	83 c3 30             	add    $0x30,%ebx
    125c:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    1260:	bb 0c 00 00 00       	mov    $0xc,%ebx
    1265:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
    126c:	00 
    126d:	c7 04 24 c0 89 00 00 	movl   $0x89c0,(%esp)
    1274:	e8 b7 28 00 00       	call   3b30 <memset>
    1279:	eb 0a                	jmp    1285 <fourfiles+0x185>
    127b:	90                   	nop
    127c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      for(i = 0; i < 12; i++){
    1280:	83 eb 01             	sub    $0x1,%ebx
    1283:	74 b5                	je     123a <fourfiles+0x13a>
        if((n = write(fd, buf, 500)) != 500){
    1285:	c7 44 24 08 f4 01 00 	movl   $0x1f4,0x8(%esp)
    128c:	00 
    128d:	c7 44 24 04 c0 89 00 	movl   $0x89c0,0x4(%esp)
    1294:	00 
    1295:	89 34 24             	mov    %esi,(%esp)
    1298:	e8 25 2a 00 00       	call   3cc2 <write>
    129d:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    12a2:	74 dc                	je     1280 <fourfiles+0x180>
          printf(1, "write failed %d\n", n);
    12a4:	89 44 24 08          	mov    %eax,0x8(%esp)
    12a8:	c7 44 24 04 e4 45 00 	movl   $0x45e4,0x4(%esp)
    12af:	00 
    12b0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12b7:	e8 44 2b 00 00       	call   3e00 <printf>
          exit();
    12bc:	e8 e1 29 00 00       	call   3ca2 <exit>
      }
      total += n;
    }
    close(fd);
    if(total != 12*500){
      printf(1, "wrong length %d\n", total);
    12c1:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    12c5:	c7 44 24 04 01 46 00 	movl   $0x4601,0x4(%esp)
    12cc:	00 
    12cd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12d4:	e8 27 2b 00 00       	call   3e00 <printf>
      exit();
    12d9:	e8 c4 29 00 00       	call   3ca2 <exit>
    fname = names[pi];
    unlink(fname);

    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
    12de:	c7 44 24 04 a9 50 00 	movl   $0x50a9,0x4(%esp)
    12e5:	00 
    12e6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12ed:	e8 0e 2b 00 00       	call   3e00 <printf>
      exit();
    12f2:	e8 ab 29 00 00       	call   3ca2 <exit>
    }

    if(pid == 0){
      fd = open(fname, O_CREATE | O_RDWR);
      if(fd < 0){
        printf(1, "create failed\n");
    12f7:	c7 44 24 04 6f 48 00 	movl   $0x486f,0x4(%esp)
    12fe:	00 
    12ff:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1306:	e8 f5 2a 00 00       	call   3e00 <printf>
        exit();
    130b:	e8 92 29 00 00       	call   3ca2 <exit>

00001310 <createdelete>:
}

// four processes create and delete different files in same directory
void
createdelete(void)
{
    1310:	55                   	push   %ebp
    1311:	89 e5                	mov    %esp,%ebp
    1313:	57                   	push   %edi
    1314:	56                   	push   %esi
    1315:	53                   	push   %ebx
  int pid, i, fd, pi;
  char name[32];

  printf(1, "createdelete test\n");

  for(pi = 0; pi < 4; pi++){
    1316:	31 db                	xor    %ebx,%ebx
}

// four processes create and delete different files in same directory
void
createdelete(void)
{
    1318:	83 ec 4c             	sub    $0x4c,%esp
  enum { N = 20 };
  int pid, i, fd, pi;
  char name[32];

  printf(1, "createdelete test\n");
    131b:	c7 44 24 04 20 46 00 	movl   $0x4620,0x4(%esp)
    1322:	00 
    1323:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    132a:	e8 d1 2a 00 00       	call   3e00 <printf>

  for(pi = 0; pi < 4; pi++){
    pid = fork();
    132f:	e8 66 29 00 00       	call   3c9a <fork>
    if(pid < 0){
    1334:	85 c0                	test   %eax,%eax
    1336:	0f 88 d2 01 00 00    	js     150e <createdelete+0x1fe>
    133c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "fork failed\n");
      exit();
    }

    if(pid == 0){
    1340:	0f 84 14 01 00 00    	je     145a <createdelete+0x14a>
  int pid, i, fd, pi;
  char name[32];

  printf(1, "createdelete test\n");

  for(pi = 0; pi < 4; pi++){
    1346:	83 c3 01             	add    $0x1,%ebx
    1349:	83 fb 04             	cmp    $0x4,%ebx
    134c:	75 e1                	jne    132f <createdelete+0x1f>
    134e:	66 90                	xchg   %ax,%ax
      exit();
    }
  }

  for(pi = 0; pi < 4; pi++){
    wait();
    1350:	e8 55 29 00 00       	call   3caa <wait>
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    1355:	31 f6                	xor    %esi,%esi
      exit();
    }
  }

  for(pi = 0; pi < 4; pi++){
    wait();
    1357:	e8 4e 29 00 00       	call   3caa <wait>
    135c:	8d 7d c8             	lea    -0x38(%ebp),%edi
    135f:	e8 46 29 00 00       	call   3caa <wait>
    1364:	e8 41 29 00 00       	call   3caa <wait>
  }

  name[0] = name[1] = name[2] = 0;
    1369:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    136d:	8d 76 00             	lea    0x0(%esi),%esi
    1370:	85 f6                	test   %esi,%esi
      exit();
    }

    if(pid == 0){
      name[0] = 'p' + pi;
      name[2] = '\0';
    1372:	bb 70 00 00 00       	mov    $0x70,%ebx
    1377:	8d 46 30             	lea    0x30(%esi),%eax
    137a:	0f 94 45 c7          	sete   -0x39(%ebp)
    137e:	83 fe 09             	cmp    $0x9,%esi
    1381:	88 45 c6             	mov    %al,-0x3a(%ebp)
    1384:	0f 9f c0             	setg   %al
    1387:	08 45 c7             	or     %al,-0x39(%ebp)
    138a:	8d 46 ff             	lea    -0x1(%esi),%eax
    138d:	89 45 c0             	mov    %eax,-0x40(%ebp)

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + pi;
      name[1] = '0' + i;
    1390:	0f b6 45 c6          	movzbl -0x3a(%ebp),%eax
      fd = open(name, 0);
    1394:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    139b:	00 
    139c:	89 3c 24             	mov    %edi,(%esp)
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + pi;
    139f:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[1] = '0' + i;
    13a2:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    13a5:	e8 38 29 00 00       	call   3ce2 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    13aa:	80 7d c7 00          	cmpb   $0x0,-0x39(%ebp)
    13ae:	0f 84 84 00 00 00    	je     1438 <createdelete+0x128>
    13b4:	85 c0                	test   %eax,%eax
    13b6:	0f 88 1c 01 00 00    	js     14d8 <createdelete+0x1c8>
        printf(1, "oops createdelete %s didn't exist\n", name);
        exit();
      } else if((i >= 1 && i < N/2) && fd >= 0){
    13bc:	83 7d c0 08          	cmpl   $0x8,-0x40(%ebp)
    13c0:	0f 86 61 01 00 00    	jbe    1527 <createdelete+0x217>
        printf(1, "oops createdelete %s did exist\n", name);
        exit();
      }
      if(fd >= 0)
        close(fd);
    13c6:	89 04 24             	mov    %eax,(%esp)
    13c9:	83 c3 01             	add    $0x1,%ebx
    13cc:	e8 f9 28 00 00       	call   3cca <close>
    wait();
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
    13d1:	80 fb 74             	cmp    $0x74,%bl
    13d4:	75 ba                	jne    1390 <createdelete+0x80>
  for(pi = 0; pi < 4; pi++){
    wait();
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    13d6:	83 c6 01             	add    $0x1,%esi
    13d9:	83 fe 14             	cmp    $0x14,%esi
    13dc:	75 92                	jne    1370 <createdelete+0x60>
    13de:	be 70 00 00 00       	mov    $0x70,%esi
    13e3:	90                   	nop
    13e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    13e8:	8d 46 c0             	lea    -0x40(%esi),%eax
    13eb:	bb 04 00 00 00       	mov    $0x4,%ebx
    13f0:	88 45 c7             	mov    %al,-0x39(%ebp)
    }
  }

  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + i;
    13f3:	89 f0                	mov    %esi,%eax
    13f5:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    13f8:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      unlink(name);
    13fc:	89 3c 24             	mov    %edi,(%esp)
  }

  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + i;
      name[1] = '0' + i;
    13ff:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    1402:	e8 eb 28 00 00       	call   3cf2 <unlink>
        close(fd);
    }
  }

  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
    1407:	83 eb 01             	sub    $0x1,%ebx
    140a:	75 e7                	jne    13f3 <createdelete+0xe3>
    140c:	83 c6 01             	add    $0x1,%esi
      if(fd >= 0)
        close(fd);
    }
  }

  for(i = 0; i < N; i++){
    140f:	89 f0                	mov    %esi,%eax
    1411:	3c 84                	cmp    $0x84,%al
    1413:	75 d3                	jne    13e8 <createdelete+0xd8>
      name[1] = '0' + i;
      unlink(name);
    }
  }

  printf(1, "createdelete ok\n");
    1415:	c7 44 24 04 33 46 00 	movl   $0x4633,0x4(%esp)
    141c:	00 
    141d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1424:	e8 d7 29 00 00       	call   3e00 <printf>
}
    1429:	83 c4 4c             	add    $0x4c,%esp
    142c:	5b                   	pop    %ebx
    142d:	5e                   	pop    %esi
    142e:	5f                   	pop    %edi
    142f:	5d                   	pop    %ebp
    1430:	c3                   	ret    
    1431:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      name[1] = '0' + i;
      fd = open(name, 0);
      if((i == 0 || i >= N/2) && fd < 0){
        printf(1, "oops createdelete %s didn't exist\n", name);
        exit();
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1438:	85 c0                	test   %eax,%eax
    143a:	0f 89 e7 00 00 00    	jns    1527 <createdelete+0x217>
    1440:	83 c3 01             	add    $0x1,%ebx
    wait();
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
    1443:	80 fb 74             	cmp    $0x74,%bl
    1446:	0f 85 44 ff ff ff    	jne    1390 <createdelete+0x80>
  for(pi = 0; pi < 4; pi++){
    wait();
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    144c:	83 c6 01             	add    $0x1,%esi
    144f:	83 fe 14             	cmp    $0x14,%esi
    1452:	0f 85 18 ff ff ff    	jne    1370 <createdelete+0x60>
    1458:	eb 84                	jmp    13de <createdelete+0xce>
      printf(1, "fork failed\n");
      exit();
    }

    if(pid == 0){
      name[0] = 'p' + pi;
    145a:	83 c3 70             	add    $0x70,%ebx
      name[2] = '\0';
    145d:	be 01 00 00 00       	mov    $0x1,%esi
      printf(1, "fork failed\n");
      exit();
    }

    if(pid == 0){
      name[0] = 'p' + pi;
    1462:	88 5d c8             	mov    %bl,-0x38(%ebp)
    1465:	8d 7d c8             	lea    -0x38(%ebp),%edi
      name[2] = '\0';
    1468:	31 db                	xor    %ebx,%ebx
    146a:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    146e:	eb 0b                	jmp    147b <createdelete+0x16b>
      for(i = 0; i < N; i++){
    1470:	83 fe 14             	cmp    $0x14,%esi
    1473:	74 7b                	je     14f0 <createdelete+0x1e0>
    1475:	83 c3 01             	add    $0x1,%ebx
    1478:	83 c6 01             	add    $0x1,%esi
    147b:	8d 43 30             	lea    0x30(%ebx),%eax
        name[1] = '0' + i;
        fd = open(name, O_CREATE | O_RDWR);
    147e:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1485:	00 
    1486:	89 3c 24             	mov    %edi,(%esp)
    1489:	88 45 c9             	mov    %al,-0x37(%ebp)
    148c:	e8 51 28 00 00       	call   3ce2 <open>
        if(fd < 0){
    1491:	85 c0                	test   %eax,%eax
    1493:	78 60                	js     14f5 <createdelete+0x1e5>
          printf(1, "create failed\n");
          exit();
        }
        close(fd);
    1495:	89 04 24             	mov    %eax,(%esp)
    1498:	e8 2d 28 00 00       	call   3cca <close>
        if(i > 0 && (i % 2 ) == 0){
    149d:	85 db                	test   %ebx,%ebx
    149f:	74 d4                	je     1475 <createdelete+0x165>
    14a1:	f6 c3 01             	test   $0x1,%bl
    14a4:	75 ca                	jne    1470 <createdelete+0x160>
          name[1] = '0' + (i / 2);
    14a6:	89 d8                	mov    %ebx,%eax
    14a8:	d1 f8                	sar    %eax
    14aa:	83 c0 30             	add    $0x30,%eax
          if(unlink(name) < 0){
    14ad:	89 3c 24             	mov    %edi,(%esp)
          printf(1, "create failed\n");
          exit();
        }
        close(fd);
        if(i > 0 && (i % 2 ) == 0){
          name[1] = '0' + (i / 2);
    14b0:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    14b3:	e8 3a 28 00 00       	call   3cf2 <unlink>
    14b8:	85 c0                	test   %eax,%eax
    14ba:	79 b4                	jns    1470 <createdelete+0x160>
            printf(1, "unlink failed\n");
    14bc:	c7 44 24 04 21 42 00 	movl   $0x4221,0x4(%esp)
    14c3:	00 
    14c4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    14cb:	e8 30 29 00 00       	call   3e00 <printf>
            exit();
    14d0:	e8 cd 27 00 00       	call   3ca2 <exit>
    14d5:	8d 76 00             	lea    0x0(%esi),%esi
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + pi;
      name[1] = '0' + i;
      fd = open(name, 0);
      if((i == 0 || i >= N/2) && fd < 0){
        printf(1, "oops createdelete %s didn't exist\n", name);
    14d8:	89 7c 24 08          	mov    %edi,0x8(%esp)
    14dc:	c7 44 24 04 e0 52 00 	movl   $0x52e0,0x4(%esp)
    14e3:	00 
    14e4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    14eb:	e8 10 29 00 00       	call   3e00 <printf>
        exit();
    14f0:	e8 ad 27 00 00       	call   3ca2 <exit>
      name[2] = '\0';
      for(i = 0; i < N; i++){
        name[1] = '0' + i;
        fd = open(name, O_CREATE | O_RDWR);
        if(fd < 0){
          printf(1, "create failed\n");
    14f5:	c7 44 24 04 6f 48 00 	movl   $0x486f,0x4(%esp)
    14fc:	00 
    14fd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1504:	e8 f7 28 00 00       	call   3e00 <printf>
          exit();
    1509:	e8 94 27 00 00       	call   3ca2 <exit>
  printf(1, "createdelete test\n");

  for(pi = 0; pi < 4; pi++){
    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
    150e:	c7 44 24 04 a9 50 00 	movl   $0x50a9,0x4(%esp)
    1515:	00 
    1516:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    151d:	e8 de 28 00 00       	call   3e00 <printf>
      exit();
    1522:	e8 7b 27 00 00       	call   3ca2 <exit>
      fd = open(name, 0);
      if((i == 0 || i >= N/2) && fd < 0){
        printf(1, "oops createdelete %s didn't exist\n", name);
        exit();
      } else if((i >= 1 && i < N/2) && fd >= 0){
        printf(1, "oops createdelete %s did exist\n", name);
    1527:	89 7c 24 08          	mov    %edi,0x8(%esp)
    152b:	c7 44 24 04 04 53 00 	movl   $0x5304,0x4(%esp)
    1532:	00 
    1533:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    153a:	e8 c1 28 00 00       	call   3e00 <printf>
        exit();
    153f:	e8 5e 27 00 00       	call   3ca2 <exit>
    1544:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    154a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001550 <unlinkread>:
}

// can I unlink a file and still read it?
void
unlinkread(void)
{
    1550:	55                   	push   %ebp
    1551:	89 e5                	mov    %esp,%ebp
    1553:	56                   	push   %esi
    1554:	53                   	push   %ebx
    1555:	83 ec 10             	sub    $0x10,%esp
  int fd, fd1;

  printf(1, "unlinkread test\n");
    1558:	c7 44 24 04 44 46 00 	movl   $0x4644,0x4(%esp)
    155f:	00 
    1560:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1567:	e8 94 28 00 00       	call   3e00 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    156c:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1573:	00 
    1574:	c7 04 24 55 46 00 00 	movl   $0x4655,(%esp)
    157b:	e8 62 27 00 00       	call   3ce2 <open>
  if(fd < 0){
    1580:	85 c0                	test   %eax,%eax
unlinkread(void)
{
  int fd, fd1;

  printf(1, "unlinkread test\n");
  fd = open("unlinkread", O_CREATE | O_RDWR);
    1582:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1584:	0f 88 fe 00 00 00    	js     1688 <unlinkread+0x138>
    printf(1, "create unlinkread failed\n");
    exit();
  }
  write(fd, "hello", 5);
    158a:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
    1591:	00 
    1592:	c7 44 24 04 7a 46 00 	movl   $0x467a,0x4(%esp)
    1599:	00 
    159a:	89 04 24             	mov    %eax,(%esp)
    159d:	e8 20 27 00 00       	call   3cc2 <write>
  close(fd);
    15a2:	89 1c 24             	mov    %ebx,(%esp)
    15a5:	e8 20 27 00 00       	call   3cca <close>

  fd = open("unlinkread", O_RDWR);
    15aa:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    15b1:	00 
    15b2:	c7 04 24 55 46 00 00 	movl   $0x4655,(%esp)
    15b9:	e8 24 27 00 00       	call   3ce2 <open>
  if(fd < 0){
    15be:	85 c0                	test   %eax,%eax
    exit();
  }
  write(fd, "hello", 5);
  close(fd);

  fd = open("unlinkread", O_RDWR);
    15c0:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    15c2:	0f 88 3d 01 00 00    	js     1705 <unlinkread+0x1b5>
    printf(1, "open unlinkread failed\n");
    exit();
  }
  if(unlink("unlinkread") != 0){
    15c8:	c7 04 24 55 46 00 00 	movl   $0x4655,(%esp)
    15cf:	e8 1e 27 00 00       	call   3cf2 <unlink>
    15d4:	85 c0                	test   %eax,%eax
    15d6:	0f 85 10 01 00 00    	jne    16ec <unlinkread+0x19c>
    printf(1, "unlink unlinkread failed\n");
    exit();
  }

  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    15dc:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    15e3:	00 
    15e4:	c7 04 24 55 46 00 00 	movl   $0x4655,(%esp)
    15eb:	e8 f2 26 00 00       	call   3ce2 <open>
  write(fd1, "yyy", 3);
    15f0:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%esp)
    15f7:	00 
    15f8:	c7 44 24 04 b2 46 00 	movl   $0x46b2,0x4(%esp)
    15ff:	00 
  if(unlink("unlinkread") != 0){
    printf(1, "unlink unlinkread failed\n");
    exit();
  }

  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    1600:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    1602:	89 04 24             	mov    %eax,(%esp)
    1605:	e8 b8 26 00 00       	call   3cc2 <write>
  close(fd1);
    160a:	89 34 24             	mov    %esi,(%esp)
    160d:	e8 b8 26 00 00       	call   3cca <close>

  if(read(fd, buf, sizeof(buf)) != 5){
    1612:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    1619:	00 
    161a:	c7 44 24 04 c0 89 00 	movl   $0x89c0,0x4(%esp)
    1621:	00 
    1622:	89 1c 24             	mov    %ebx,(%esp)
    1625:	e8 90 26 00 00       	call   3cba <read>
    162a:	83 f8 05             	cmp    $0x5,%eax
    162d:	0f 85 a0 00 00 00    	jne    16d3 <unlinkread+0x183>
    printf(1, "unlinkread read failed");
    exit();
  }
  if(buf[0] != 'h'){
    1633:	80 3d c0 89 00 00 68 	cmpb   $0x68,0x89c0
    163a:	75 7e                	jne    16ba <unlinkread+0x16a>
    printf(1, "unlinkread wrong data\n");
    exit();
  }
  if(write(fd, buf, 10) != 10){
    163c:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
    1643:	00 
    1644:	c7 44 24 04 c0 89 00 	movl   $0x89c0,0x4(%esp)
    164b:	00 
    164c:	89 1c 24             	mov    %ebx,(%esp)
    164f:	e8 6e 26 00 00       	call   3cc2 <write>
    1654:	83 f8 0a             	cmp    $0xa,%eax
    1657:	75 48                	jne    16a1 <unlinkread+0x151>
    printf(1, "unlinkread write failed\n");
    exit();
  }
  close(fd);
    1659:	89 1c 24             	mov    %ebx,(%esp)
    165c:	e8 69 26 00 00       	call   3cca <close>
  unlink("unlinkread");
    1661:	c7 04 24 55 46 00 00 	movl   $0x4655,(%esp)
    1668:	e8 85 26 00 00       	call   3cf2 <unlink>
  printf(1, "unlinkread ok\n");
    166d:	c7 44 24 04 fd 46 00 	movl   $0x46fd,0x4(%esp)
    1674:	00 
    1675:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    167c:	e8 7f 27 00 00       	call   3e00 <printf>
}
    1681:	83 c4 10             	add    $0x10,%esp
    1684:	5b                   	pop    %ebx
    1685:	5e                   	pop    %esi
    1686:	5d                   	pop    %ebp
    1687:	c3                   	ret    
  int fd, fd1;

  printf(1, "unlinkread test\n");
  fd = open("unlinkread", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "create unlinkread failed\n");
    1688:	c7 44 24 04 60 46 00 	movl   $0x4660,0x4(%esp)
    168f:	00 
    1690:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1697:	e8 64 27 00 00       	call   3e00 <printf>
    exit();
    169c:	e8 01 26 00 00       	call   3ca2 <exit>
  if(buf[0] != 'h'){
    printf(1, "unlinkread wrong data\n");
    exit();
  }
  if(write(fd, buf, 10) != 10){
    printf(1, "unlinkread write failed\n");
    16a1:	c7 44 24 04 e4 46 00 	movl   $0x46e4,0x4(%esp)
    16a8:	00 
    16a9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    16b0:	e8 4b 27 00 00       	call   3e00 <printf>
    exit();
    16b5:	e8 e8 25 00 00       	call   3ca2 <exit>
  if(read(fd, buf, sizeof(buf)) != 5){
    printf(1, "unlinkread read failed");
    exit();
  }
  if(buf[0] != 'h'){
    printf(1, "unlinkread wrong data\n");
    16ba:	c7 44 24 04 cd 46 00 	movl   $0x46cd,0x4(%esp)
    16c1:	00 
    16c2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    16c9:	e8 32 27 00 00       	call   3e00 <printf>
    exit();
    16ce:	e8 cf 25 00 00       	call   3ca2 <exit>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
  write(fd1, "yyy", 3);
  close(fd1);

  if(read(fd, buf, sizeof(buf)) != 5){
    printf(1, "unlinkread read failed");
    16d3:	c7 44 24 04 b6 46 00 	movl   $0x46b6,0x4(%esp)
    16da:	00 
    16db:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    16e2:	e8 19 27 00 00       	call   3e00 <printf>
    exit();
    16e7:	e8 b6 25 00 00       	call   3ca2 <exit>
  if(fd < 0){
    printf(1, "open unlinkread failed\n");
    exit();
  }
  if(unlink("unlinkread") != 0){
    printf(1, "unlink unlinkread failed\n");
    16ec:	c7 44 24 04 98 46 00 	movl   $0x4698,0x4(%esp)
    16f3:	00 
    16f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    16fb:	e8 00 27 00 00       	call   3e00 <printf>
    exit();
    1700:	e8 9d 25 00 00       	call   3ca2 <exit>
  write(fd, "hello", 5);
  close(fd);

  fd = open("unlinkread", O_RDWR);
  if(fd < 0){
    printf(1, "open unlinkread failed\n");
    1705:	c7 44 24 04 80 46 00 	movl   $0x4680,0x4(%esp)
    170c:	00 
    170d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1714:	e8 e7 26 00 00       	call   3e00 <printf>
    exit();
    1719:	e8 84 25 00 00       	call   3ca2 <exit>
    171e:	66 90                	xchg   %ax,%ax

00001720 <linktest>:
  printf(1, "unlinkread ok\n");
}

void
linktest(void)
{
    1720:	55                   	push   %ebp
    1721:	89 e5                	mov    %esp,%ebp
    1723:	53                   	push   %ebx
    1724:	83 ec 14             	sub    $0x14,%esp
  int fd;

  printf(1, "linktest\n");
    1727:	c7 44 24 04 0c 47 00 	movl   $0x470c,0x4(%esp)
    172e:	00 
    172f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1736:	e8 c5 26 00 00       	call   3e00 <printf>

  unlink("lf1");
    173b:	c7 04 24 16 47 00 00 	movl   $0x4716,(%esp)
    1742:	e8 ab 25 00 00       	call   3cf2 <unlink>
  unlink("lf2");
    1747:	c7 04 24 1a 47 00 00 	movl   $0x471a,(%esp)
    174e:	e8 9f 25 00 00       	call   3cf2 <unlink>

  fd = open("lf1", O_CREATE|O_RDWR);
    1753:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    175a:	00 
    175b:	c7 04 24 16 47 00 00 	movl   $0x4716,(%esp)
    1762:	e8 7b 25 00 00       	call   3ce2 <open>
  if(fd < 0){
    1767:	85 c0                	test   %eax,%eax
  printf(1, "linktest\n");

  unlink("lf1");
  unlink("lf2");

  fd = open("lf1", O_CREATE|O_RDWR);
    1769:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    176b:	0f 88 26 01 00 00    	js     1897 <linktest+0x177>
    printf(1, "create lf1 failed\n");
    exit();
  }
  if(write(fd, "hello", 5) != 5){
    1771:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
    1778:	00 
    1779:	c7 44 24 04 7a 46 00 	movl   $0x467a,0x4(%esp)
    1780:	00 
    1781:	89 04 24             	mov    %eax,(%esp)
    1784:	e8 39 25 00 00       	call   3cc2 <write>
    1789:	83 f8 05             	cmp    $0x5,%eax
    178c:	0f 85 cd 01 00 00    	jne    195f <linktest+0x23f>
    printf(1, "write lf1 failed\n");
    exit();
  }
  close(fd);
    1792:	89 1c 24             	mov    %ebx,(%esp)
    1795:	e8 30 25 00 00       	call   3cca <close>

  if(link("lf1", "lf2") < 0){
    179a:	c7 44 24 04 1a 47 00 	movl   $0x471a,0x4(%esp)
    17a1:	00 
    17a2:	c7 04 24 16 47 00 00 	movl   $0x4716,(%esp)
    17a9:	e8 54 25 00 00       	call   3d02 <link>
    17ae:	85 c0                	test   %eax,%eax
    17b0:	0f 88 90 01 00 00    	js     1946 <linktest+0x226>
    printf(1, "link lf1 lf2 failed\n");
    exit();
  }
  unlink("lf1");
    17b6:	c7 04 24 16 47 00 00 	movl   $0x4716,(%esp)
    17bd:	e8 30 25 00 00       	call   3cf2 <unlink>

  if(open("lf1", 0) >= 0){
    17c2:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    17c9:	00 
    17ca:	c7 04 24 16 47 00 00 	movl   $0x4716,(%esp)
    17d1:	e8 0c 25 00 00       	call   3ce2 <open>
    17d6:	85 c0                	test   %eax,%eax
    17d8:	0f 89 4f 01 00 00    	jns    192d <linktest+0x20d>
    printf(1, "unlinked lf1 but it is still there!\n");
    exit();
  }

  fd = open("lf2", 0);
    17de:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    17e5:	00 
    17e6:	c7 04 24 1a 47 00 00 	movl   $0x471a,(%esp)
    17ed:	e8 f0 24 00 00       	call   3ce2 <open>
  if(fd < 0){
    17f2:	85 c0                	test   %eax,%eax
  if(open("lf1", 0) >= 0){
    printf(1, "unlinked lf1 but it is still there!\n");
    exit();
  }

  fd = open("lf2", 0);
    17f4:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    17f6:	0f 88 18 01 00 00    	js     1914 <linktest+0x1f4>
    printf(1, "open lf2 failed\n");
    exit();
  }
  if(read(fd, buf, sizeof(buf)) != 5){
    17fc:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    1803:	00 
    1804:	c7 44 24 04 c0 89 00 	movl   $0x89c0,0x4(%esp)
    180b:	00 
    180c:	89 04 24             	mov    %eax,(%esp)
    180f:	e8 a6 24 00 00       	call   3cba <read>
    1814:	83 f8 05             	cmp    $0x5,%eax
    1817:	0f 85 de 00 00 00    	jne    18fb <linktest+0x1db>
    printf(1, "read lf2 failed\n");
    exit();
  }
  close(fd);
    181d:	89 1c 24             	mov    %ebx,(%esp)
    1820:	e8 a5 24 00 00       	call   3cca <close>

  if(link("lf2", "lf2") >= 0){
    1825:	c7 44 24 04 1a 47 00 	movl   $0x471a,0x4(%esp)
    182c:	00 
    182d:	c7 04 24 1a 47 00 00 	movl   $0x471a,(%esp)
    1834:	e8 c9 24 00 00       	call   3d02 <link>
    1839:	85 c0                	test   %eax,%eax
    183b:	0f 89 a1 00 00 00    	jns    18e2 <linktest+0x1c2>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    exit();
  }

  unlink("lf2");
    1841:	c7 04 24 1a 47 00 00 	movl   $0x471a,(%esp)
    1848:	e8 a5 24 00 00       	call   3cf2 <unlink>
  if(link("lf2", "lf1") >= 0){
    184d:	c7 44 24 04 16 47 00 	movl   $0x4716,0x4(%esp)
    1854:	00 
    1855:	c7 04 24 1a 47 00 00 	movl   $0x471a,(%esp)
    185c:	e8 a1 24 00 00       	call   3d02 <link>
    1861:	85 c0                	test   %eax,%eax
    1863:	79 64                	jns    18c9 <linktest+0x1a9>
    printf(1, "link non-existant succeeded! oops\n");
    exit();
  }

  if(link(".", "lf1") >= 0){
    1865:	c7 44 24 04 16 47 00 	movl   $0x4716,0x4(%esp)
    186c:	00 
    186d:	c7 04 24 de 49 00 00 	movl   $0x49de,(%esp)
    1874:	e8 89 24 00 00       	call   3d02 <link>
    1879:	85 c0                	test   %eax,%eax
    187b:	79 33                	jns    18b0 <linktest+0x190>
    printf(1, "link . lf1 succeeded! oops\n");
    exit();
  }

  printf(1, "linktest ok\n");
    187d:	c7 44 24 04 b4 47 00 	movl   $0x47b4,0x4(%esp)
    1884:	00 
    1885:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    188c:	e8 6f 25 00 00       	call   3e00 <printf>
}
    1891:	83 c4 14             	add    $0x14,%esp
    1894:	5b                   	pop    %ebx
    1895:	5d                   	pop    %ebp
    1896:	c3                   	ret    
  unlink("lf1");
  unlink("lf2");

  fd = open("lf1", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(1, "create lf1 failed\n");
    1897:	c7 44 24 04 1e 47 00 	movl   $0x471e,0x4(%esp)
    189e:	00 
    189f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    18a6:	e8 55 25 00 00       	call   3e00 <printf>
    exit();
    18ab:	e8 f2 23 00 00       	call   3ca2 <exit>
    printf(1, "link non-existant succeeded! oops\n");
    exit();
  }

  if(link(".", "lf1") >= 0){
    printf(1, "link . lf1 succeeded! oops\n");
    18b0:	c7 44 24 04 98 47 00 	movl   $0x4798,0x4(%esp)
    18b7:	00 
    18b8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    18bf:	e8 3c 25 00 00       	call   3e00 <printf>
    exit();
    18c4:	e8 d9 23 00 00       	call   3ca2 <exit>
    exit();
  }

  unlink("lf2");
  if(link("lf2", "lf1") >= 0){
    printf(1, "link non-existant succeeded! oops\n");
    18c9:	c7 44 24 04 4c 53 00 	movl   $0x534c,0x4(%esp)
    18d0:	00 
    18d1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    18d8:	e8 23 25 00 00       	call   3e00 <printf>
    exit();
    18dd:	e8 c0 23 00 00       	call   3ca2 <exit>
    exit();
  }
  close(fd);

  if(link("lf2", "lf2") >= 0){
    printf(1, "link lf2 lf2 succeeded! oops\n");
    18e2:	c7 44 24 04 7a 47 00 	movl   $0x477a,0x4(%esp)
    18e9:	00 
    18ea:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    18f1:	e8 0a 25 00 00       	call   3e00 <printf>
    exit();
    18f6:	e8 a7 23 00 00       	call   3ca2 <exit>
  if(fd < 0){
    printf(1, "open lf2 failed\n");
    exit();
  }
  if(read(fd, buf, sizeof(buf)) != 5){
    printf(1, "read lf2 failed\n");
    18fb:	c7 44 24 04 69 47 00 	movl   $0x4769,0x4(%esp)
    1902:	00 
    1903:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    190a:	e8 f1 24 00 00       	call   3e00 <printf>
    exit();
    190f:	e8 8e 23 00 00       	call   3ca2 <exit>
    exit();
  }

  fd = open("lf2", 0);
  if(fd < 0){
    printf(1, "open lf2 failed\n");
    1914:	c7 44 24 04 58 47 00 	movl   $0x4758,0x4(%esp)
    191b:	00 
    191c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1923:	e8 d8 24 00 00       	call   3e00 <printf>
    exit();
    1928:	e8 75 23 00 00       	call   3ca2 <exit>
    exit();
  }
  unlink("lf1");

  if(open("lf1", 0) >= 0){
    printf(1, "unlinked lf1 but it is still there!\n");
    192d:	c7 44 24 04 24 53 00 	movl   $0x5324,0x4(%esp)
    1934:	00 
    1935:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    193c:	e8 bf 24 00 00       	call   3e00 <printf>
    exit();
    1941:	e8 5c 23 00 00       	call   3ca2 <exit>
    exit();
  }
  close(fd);

  if(link("lf1", "lf2") < 0){
    printf(1, "link lf1 lf2 failed\n");
    1946:	c7 44 24 04 43 47 00 	movl   $0x4743,0x4(%esp)
    194d:	00 
    194e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1955:	e8 a6 24 00 00       	call   3e00 <printf>
    exit();
    195a:	e8 43 23 00 00       	call   3ca2 <exit>
  if(fd < 0){
    printf(1, "create lf1 failed\n");
    exit();
  }
  if(write(fd, "hello", 5) != 5){
    printf(1, "write lf1 failed\n");
    195f:	c7 44 24 04 31 47 00 	movl   $0x4731,0x4(%esp)
    1966:	00 
    1967:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    196e:	e8 8d 24 00 00       	call   3e00 <printf>
    exit();
    1973:	e8 2a 23 00 00       	call   3ca2 <exit>
    1978:	90                   	nop
    1979:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001980 <concreate>:
}

// test concurrent create/link/unlink of the same file
void
concreate(void)
{
    1980:	55                   	push   %ebp
    1981:	89 e5                	mov    %esp,%ebp
    1983:	57                   	push   %edi
    1984:	56                   	push   %esi
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    1985:	31 f6                	xor    %esi,%esi
}

// test concurrent create/link/unlink of the same file
void
concreate(void)
{
    1987:	53                   	push   %ebx
    1988:	83 ec 5c             	sub    $0x5c,%esp
  struct {
    ushort inum;
    char name[14];
  } de;

  printf(1, "concreate test\n");
    198b:	c7 44 24 04 c1 47 00 	movl   $0x47c1,0x4(%esp)
    1992:	00 
    1993:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    1996:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    199d:	e8 5e 24 00 00       	call   3e00 <printf>
  file[0] = 'C';
    19a2:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    19a6:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
    19aa:	eb 4f                	jmp    19fb <concreate+0x7b>
    19ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    unlink(file);
    pid = fork();
    if(pid && (i % 3) == 1){
    19b0:	b8 56 55 55 55       	mov    $0x55555556,%eax
    19b5:	89 f1                	mov    %esi,%ecx
    19b7:	f7 ee                	imul   %esi
    19b9:	89 f0                	mov    %esi,%eax
    19bb:	c1 f8 1f             	sar    $0x1f,%eax
    19be:	29 c2                	sub    %eax,%edx
    19c0:	8d 04 52             	lea    (%edx,%edx,2),%eax
    19c3:	29 c1                	sub    %eax,%ecx
    19c5:	83 f9 01             	cmp    $0x1,%ecx
    19c8:	74 7e                	je     1a48 <concreate+0xc8>
      link("C0", file);
    } else if(pid == 0 && (i % 5) == 1){
      link("C0", file);
    } else {
      fd = open(file, O_CREATE | O_RDWR);
    19ca:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    19d1:	00 
    19d2:	89 1c 24             	mov    %ebx,(%esp)
    19d5:	e8 08 23 00 00       	call   3ce2 <open>
      if(fd < 0){
    19da:	85 c0                	test   %eax,%eax
    19dc:	0f 88 43 02 00 00    	js     1c25 <concreate+0x2a5>
        printf(1, "concreate create %s failed\n", file);
        exit();
      }
      close(fd);
    19e2:	89 04 24             	mov    %eax,(%esp)
    19e5:	e8 e0 22 00 00       	call   3cca <close>
    }
    if(pid == 0)
    19ea:	85 ff                	test   %edi,%edi
    19ec:	74 52                	je     1a40 <concreate+0xc0>
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    19ee:	83 c6 01             	add    $0x1,%esi
      close(fd);
    }
    if(pid == 0)
      exit();
    else
      wait();
    19f1:	e8 b4 22 00 00       	call   3caa <wait>
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    19f6:	83 fe 28             	cmp    $0x28,%esi
    19f9:	74 6d                	je     1a68 <concreate+0xe8>
    19fb:	8d 46 30             	lea    0x30(%esi),%eax
    file[1] = '0' + i;
    unlink(file);
    19fe:	89 1c 24             	mov    %ebx,(%esp)
    1a01:	88 45 ae             	mov    %al,-0x52(%ebp)
    1a04:	e8 e9 22 00 00       	call   3cf2 <unlink>
    pid = fork();
    1a09:	e8 8c 22 00 00       	call   3c9a <fork>
    if(pid && (i % 3) == 1){
    1a0e:	85 c0                	test   %eax,%eax
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    unlink(file);
    pid = fork();
    1a10:	89 c7                	mov    %eax,%edi
    if(pid && (i % 3) == 1){
    1a12:	75 9c                	jne    19b0 <concreate+0x30>
      link("C0", file);
    } else if(pid == 0 && (i % 5) == 1){
    1a14:	b8 67 66 66 66       	mov    $0x66666667,%eax
    1a19:	89 f1                	mov    %esi,%ecx
    1a1b:	f7 ee                	imul   %esi
    1a1d:	89 f0                	mov    %esi,%eax
    1a1f:	c1 f8 1f             	sar    $0x1f,%eax
    1a22:	d1 fa                	sar    %edx
    1a24:	29 c2                	sub    %eax,%edx
    1a26:	8d 04 92             	lea    (%edx,%edx,4),%eax
    1a29:	29 c1                	sub    %eax,%ecx
    1a2b:	83 f9 01             	cmp    $0x1,%ecx
    1a2e:	75 9a                	jne    19ca <concreate+0x4a>
      link("C0", file);
    1a30:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    1a34:	c7 04 24 d1 47 00 00 	movl   $0x47d1,(%esp)
    1a3b:	e8 c2 22 00 00       	call   3d02 <link>
      continue;
    if(de.name[0] == 'C' && de.name[2] == '\0'){
      i = de.name[1] - '0';
      if(i < 0 || i >= sizeof(fa)){
        printf(1, "concreate weird file %s\n", de.name);
        exit();
    1a40:	e8 5d 22 00 00       	call   3ca2 <exit>
    1a45:	8d 76 00             	lea    0x0(%esi),%esi
  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    unlink(file);
    pid = fork();
    if(pid && (i % 3) == 1){
      link("C0", file);
    1a48:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    1a4c:	83 c6 01             	add    $0x1,%esi
    file[1] = '0' + i;
    unlink(file);
    pid = fork();
    if(pid && (i % 3) == 1){
      link("C0", file);
    1a4f:	c7 04 24 d1 47 00 00 	movl   $0x47d1,(%esp)
    1a56:	e8 a7 22 00 00       	call   3d02 <link>
      close(fd);
    }
    if(pid == 0)
      exit();
    else
      wait();
    1a5b:	e8 4a 22 00 00       	call   3caa <wait>
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    1a60:	83 fe 28             	cmp    $0x28,%esi
    1a63:	75 96                	jne    19fb <concreate+0x7b>
    1a65:	8d 76 00             	lea    0x0(%esi),%esi
      exit();
    else
      wait();
  }

  memset(fa, 0, sizeof(fa));
    1a68:	8d 45 c0             	lea    -0x40(%ebp),%eax
    1a6b:	c7 44 24 08 28 00 00 	movl   $0x28,0x8(%esp)
    1a72:	00 
    1a73:	8d 7d b0             	lea    -0x50(%ebp),%edi
    1a76:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1a7d:	00 
    1a7e:	89 04 24             	mov    %eax,(%esp)
    1a81:	e8 aa 20 00 00       	call   3b30 <memset>
  fd = open(".", 0);
    1a86:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1a8d:	00 
    1a8e:	c7 04 24 de 49 00 00 	movl   $0x49de,(%esp)
    1a95:	e8 48 22 00 00       	call   3ce2 <open>
  n = 0;
    1a9a:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
    else
      wait();
  }

  memset(fa, 0, sizeof(fa));
  fd = open(".", 0);
    1aa1:	89 c6                	mov    %eax,%esi
    1aa3:	90                   	nop
    1aa4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  n = 0;
  while(read(fd, &de, sizeof(de)) > 0){
    1aa8:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
    1aaf:	00 
    1ab0:	89 7c 24 04          	mov    %edi,0x4(%esp)
    1ab4:	89 34 24             	mov    %esi,(%esp)
    1ab7:	e8 fe 21 00 00       	call   3cba <read>
    1abc:	85 c0                	test   %eax,%eax
    1abe:	7e 40                	jle    1b00 <concreate+0x180>
    if(de.inum == 0)
    1ac0:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1ac5:	74 e1                	je     1aa8 <concreate+0x128>
      continue;
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    1ac7:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    1acb:	75 db                	jne    1aa8 <concreate+0x128>
    1acd:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1ad1:	75 d5                	jne    1aa8 <concreate+0x128>
      i = de.name[1] - '0';
    1ad3:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    1ad7:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    1ada:	83 f8 27             	cmp    $0x27,%eax
    1add:	0f 87 5f 01 00 00    	ja     1c42 <concreate+0x2c2>
        printf(1, "concreate weird file %s\n", de.name);
        exit();
      }
      if(fa[i]){
    1ae3:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    1ae8:	0f 85 8d 01 00 00    	jne    1c7b <concreate+0x2fb>
        printf(1, "concreate duplicate file %s\n", de.name);
        exit();
      }
      fa[i] = 1;
    1aee:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    1af3:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
    1af7:	eb af                	jmp    1aa8 <concreate+0x128>
    1af9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }
  close(fd);
    1b00:	89 34 24             	mov    %esi,(%esp)
    1b03:	e8 c2 21 00 00       	call   3cca <close>

  if(n != 40){
    1b08:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1b0c:	0f 85 50 01 00 00    	jne    1c62 <concreate+0x2e2>
    1b12:	31 f6                	xor    %esi,%esi
    1b14:	eb 7f                	jmp    1b95 <concreate+0x215>
    1b16:	66 90                	xchg   %ax,%ax
    if(pid < 0){
      printf(1, "fork failed\n");
      exit();
    }
    if(((i % 3) == 0 && pid == 0) ||
       ((i % 3) == 1 && pid != 0)){
    1b18:	85 ff                	test   %edi,%edi
    1b1a:	0f 84 ae 00 00 00    	je     1bce <concreate+0x24e>
      close(open(file, 0));
    1b20:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1b27:	00 
    1b28:	89 1c 24             	mov    %ebx,(%esp)
    1b2b:	e8 b2 21 00 00       	call   3ce2 <open>
    1b30:	89 04 24             	mov    %eax,(%esp)
    1b33:	e8 92 21 00 00       	call   3cca <close>
      close(open(file, 0));
    1b38:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1b3f:	00 
    1b40:	89 1c 24             	mov    %ebx,(%esp)
    1b43:	e8 9a 21 00 00       	call   3ce2 <open>
    1b48:	89 04 24             	mov    %eax,(%esp)
    1b4b:	e8 7a 21 00 00       	call   3cca <close>
      close(open(file, 0));
    1b50:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1b57:	00 
    1b58:	89 1c 24             	mov    %ebx,(%esp)
    1b5b:	e8 82 21 00 00       	call   3ce2 <open>
    1b60:	89 04 24             	mov    %eax,(%esp)
    1b63:	e8 62 21 00 00       	call   3cca <close>
      close(open(file, 0));
    1b68:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1b6f:	00 
    1b70:	89 1c 24             	mov    %ebx,(%esp)
    1b73:	e8 6a 21 00 00       	call   3ce2 <open>
    1b78:	89 04 24             	mov    %eax,(%esp)
    1b7b:	e8 4a 21 00 00       	call   3cca <close>
      unlink(file);
      unlink(file);
      unlink(file);
      unlink(file);
    }
    if(pid == 0)
    1b80:	85 ff                	test   %edi,%edi
    1b82:	0f 84 b8 fe ff ff    	je     1a40 <concreate+0xc0>
  if(n != 40){
    printf(1, "concreate not enough files in directory listing\n");
    exit();
  }

  for(i = 0; i < 40; i++){
    1b88:	83 c6 01             	add    $0x1,%esi
      unlink(file);
    }
    if(pid == 0)
      exit();
    else
      wait();
    1b8b:	e8 1a 21 00 00       	call   3caa <wait>
  if(n != 40){
    printf(1, "concreate not enough files in directory listing\n");
    exit();
  }

  for(i = 0; i < 40; i++){
    1b90:	83 fe 28             	cmp    $0x28,%esi
    1b93:	74 5b                	je     1bf0 <concreate+0x270>
    1b95:	8d 46 30             	lea    0x30(%esi),%eax
    1b98:	88 45 ae             	mov    %al,-0x52(%ebp)
    file[1] = '0' + i;
    pid = fork();
    1b9b:	e8 fa 20 00 00       	call   3c9a <fork>
    if(pid < 0){
    1ba0:	85 c0                	test   %eax,%eax
    exit();
  }

  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    pid = fork();
    1ba2:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    1ba4:	78 66                	js     1c0c <concreate+0x28c>
      printf(1, "fork failed\n");
      exit();
    }
    if(((i % 3) == 0 && pid == 0) ||
    1ba6:	b8 56 55 55 55       	mov    $0x55555556,%eax
    1bab:	f7 ee                	imul   %esi
    1bad:	89 f0                	mov    %esi,%eax
    1baf:	c1 f8 1f             	sar    $0x1f,%eax
    1bb2:	29 c2                	sub    %eax,%edx
    1bb4:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1bb7:	89 f2                	mov    %esi,%edx
    1bb9:	29 c2                	sub    %eax,%edx
    1bbb:	89 d0                	mov    %edx,%eax
    1bbd:	09 f8                	or     %edi,%eax
    1bbf:	0f 84 5b ff ff ff    	je     1b20 <concreate+0x1a0>
    1bc5:	83 fa 01             	cmp    $0x1,%edx
    1bc8:	0f 84 4a ff ff ff    	je     1b18 <concreate+0x198>
      close(open(file, 0));
      close(open(file, 0));
      close(open(file, 0));
      close(open(file, 0));
    } else {
      unlink(file);
    1bce:	89 1c 24             	mov    %ebx,(%esp)
    1bd1:	e8 1c 21 00 00       	call   3cf2 <unlink>
      unlink(file);
    1bd6:	89 1c 24             	mov    %ebx,(%esp)
    1bd9:	e8 14 21 00 00       	call   3cf2 <unlink>
      unlink(file);
    1bde:	89 1c 24             	mov    %ebx,(%esp)
    1be1:	e8 0c 21 00 00       	call   3cf2 <unlink>
      unlink(file);
    1be6:	89 1c 24             	mov    %ebx,(%esp)
    1be9:	e8 04 21 00 00       	call   3cf2 <unlink>
    1bee:	eb 90                	jmp    1b80 <concreate+0x200>
      exit();
    else
      wait();
  }

  printf(1, "concreate ok\n");
    1bf0:	c7 44 24 04 26 48 00 	movl   $0x4826,0x4(%esp)
    1bf7:	00 
    1bf8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1bff:	e8 fc 21 00 00       	call   3e00 <printf>
}
    1c04:	83 c4 5c             	add    $0x5c,%esp
    1c07:	5b                   	pop    %ebx
    1c08:	5e                   	pop    %esi
    1c09:	5f                   	pop    %edi
    1c0a:	5d                   	pop    %ebp
    1c0b:	c3                   	ret    

  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
    1c0c:	c7 44 24 04 a9 50 00 	movl   $0x50a9,0x4(%esp)
    1c13:	00 
    1c14:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1c1b:	e8 e0 21 00 00       	call   3e00 <printf>
      exit();
    1c20:	e8 7d 20 00 00       	call   3ca2 <exit>
    } else if(pid == 0 && (i % 5) == 1){
      link("C0", file);
    } else {
      fd = open(file, O_CREATE | O_RDWR);
      if(fd < 0){
        printf(1, "concreate create %s failed\n", file);
    1c25:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    1c29:	c7 44 24 04 d4 47 00 	movl   $0x47d4,0x4(%esp)
    1c30:	00 
    1c31:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1c38:	e8 c3 21 00 00       	call   3e00 <printf>
        exit();
    1c3d:	e8 60 20 00 00       	call   3ca2 <exit>
    if(de.inum == 0)
      continue;
    if(de.name[0] == 'C' && de.name[2] == '\0'){
      i = de.name[1] - '0';
      if(i < 0 || i >= sizeof(fa)){
        printf(1, "concreate weird file %s\n", de.name);
    1c42:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1c45:	89 44 24 08          	mov    %eax,0x8(%esp)
    1c49:	c7 44 24 04 f0 47 00 	movl   $0x47f0,0x4(%esp)
    1c50:	00 
    1c51:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1c58:	e8 a3 21 00 00       	call   3e00 <printf>
    1c5d:	e9 de fd ff ff       	jmp    1a40 <concreate+0xc0>
    }
  }
  close(fd);

  if(n != 40){
    printf(1, "concreate not enough files in directory listing\n");
    1c62:	c7 44 24 04 70 53 00 	movl   $0x5370,0x4(%esp)
    1c69:	00 
    1c6a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1c71:	e8 8a 21 00 00       	call   3e00 <printf>
    exit();
    1c76:	e8 27 20 00 00       	call   3ca2 <exit>
      if(i < 0 || i >= sizeof(fa)){
        printf(1, "concreate weird file %s\n", de.name);
        exit();
      }
      if(fa[i]){
        printf(1, "concreate duplicate file %s\n", de.name);
    1c7b:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1c7e:	89 44 24 08          	mov    %eax,0x8(%esp)
    1c82:	c7 44 24 04 09 48 00 	movl   $0x4809,0x4(%esp)
    1c89:	00 
    1c8a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1c91:	e8 6a 21 00 00       	call   3e00 <printf>
        exit();
    1c96:	e8 07 20 00 00       	call   3ca2 <exit>
    1c9b:	90                   	nop
    1c9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001ca0 <linkunlink>:

// another concurrent link/unlink/create test,
// to look for deadlocks.
void
linkunlink()
{
    1ca0:	55                   	push   %ebp
    1ca1:	89 e5                	mov    %esp,%ebp
    1ca3:	57                   	push   %edi
    1ca4:	56                   	push   %esi
    1ca5:	53                   	push   %ebx
    1ca6:	83 ec 1c             	sub    $0x1c,%esp
  int pid, i;

  printf(1, "linkunlink test\n");
    1ca9:	c7 44 24 04 34 48 00 	movl   $0x4834,0x4(%esp)
    1cb0:	00 
    1cb1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1cb8:	e8 43 21 00 00       	call   3e00 <printf>

  unlink("x");
    1cbd:	c7 04 24 c1 4a 00 00 	movl   $0x4ac1,(%esp)
    1cc4:	e8 29 20 00 00       	call   3cf2 <unlink>
  pid = fork();
    1cc9:	e8 cc 1f 00 00       	call   3c9a <fork>
  if(pid < 0){
    1cce:	85 c0                	test   %eax,%eax
  int pid, i;

  printf(1, "linkunlink test\n");

  unlink("x");
  pid = fork();
    1cd0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    1cd3:	0f 88 b8 00 00 00    	js     1d91 <linkunlink+0xf1>
    printf(1, "fork failed\n");
    exit();
  }

  unsigned int x = (pid ? 1 : 97);
    1cd9:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    1cdd:	bb 64 00 00 00       	mov    $0x64,%ebx
  for(i = 0; i < 100; i++){
    x = x * 1103515245 + 12345;
    if((x % 3) == 0){
    1ce2:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  if(pid < 0){
    printf(1, "fork failed\n");
    exit();
  }

  unsigned int x = (pid ? 1 : 97);
    1ce7:	19 ff                	sbb    %edi,%edi
    1ce9:	83 e7 60             	and    $0x60,%edi
    1cec:	83 c7 01             	add    $0x1,%edi
    1cef:	eb 1d                	jmp    1d0e <linkunlink+0x6e>
    1cf1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 100; i++){
    x = x * 1103515245 + 12345;
    if((x % 3) == 0){
      close(open("x", O_RDWR | O_CREATE));
    } else if((x % 3) == 1){
    1cf8:	83 fa 01             	cmp    $0x1,%edx
    1cfb:	74 7b                	je     1d78 <linkunlink+0xd8>
      link("cat", "x");
    } else {
      unlink("x");
    1cfd:	c7 04 24 c1 4a 00 00 	movl   $0x4ac1,(%esp)
    1d04:	e8 e9 1f 00 00       	call   3cf2 <unlink>
    printf(1, "fork failed\n");
    exit();
  }

  unsigned int x = (pid ? 1 : 97);
  for(i = 0; i < 100; i++){
    1d09:	83 eb 01             	sub    $0x1,%ebx
    1d0c:	74 3c                	je     1d4a <linkunlink+0xaa>
    x = x * 1103515245 + 12345;
    1d0e:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    1d14:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    1d1a:	89 f8                	mov    %edi,%eax
    1d1c:	f7 e6                	mul    %esi
    1d1e:	d1 ea                	shr    %edx
    1d20:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1d23:	89 fa                	mov    %edi,%edx
    1d25:	29 c2                	sub    %eax,%edx
    1d27:	75 cf                	jne    1cf8 <linkunlink+0x58>
      close(open("x", O_RDWR | O_CREATE));
    1d29:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1d30:	00 
    1d31:	c7 04 24 c1 4a 00 00 	movl   $0x4ac1,(%esp)
    1d38:	e8 a5 1f 00 00       	call   3ce2 <open>
    1d3d:	89 04 24             	mov    %eax,(%esp)
    1d40:	e8 85 1f 00 00       	call   3cca <close>
    printf(1, "fork failed\n");
    exit();
  }

  unsigned int x = (pid ? 1 : 97);
  for(i = 0; i < 100; i++){
    1d45:	83 eb 01             	sub    $0x1,%ebx
    1d48:	75 c4                	jne    1d0e <linkunlink+0x6e>
    } else {
      unlink("x");
    }
  }

  if(pid)
    1d4a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1d4d:	85 c0                	test   %eax,%eax
    1d4f:	74 59                	je     1daa <linkunlink+0x10a>
    wait();
    1d51:	e8 54 1f 00 00       	call   3caa <wait>
  else
    exit();

  printf(1, "linkunlink ok\n");
    1d56:	c7 44 24 04 49 48 00 	movl   $0x4849,0x4(%esp)
    1d5d:	00 
    1d5e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d65:	e8 96 20 00 00       	call   3e00 <printf>
}
    1d6a:	83 c4 1c             	add    $0x1c,%esp
    1d6d:	5b                   	pop    %ebx
    1d6e:	5e                   	pop    %esi
    1d6f:	5f                   	pop    %edi
    1d70:	5d                   	pop    %ebp
    1d71:	c3                   	ret    
    1d72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(i = 0; i < 100; i++){
    x = x * 1103515245 + 12345;
    if((x % 3) == 0){
      close(open("x", O_RDWR | O_CREATE));
    } else if((x % 3) == 1){
      link("cat", "x");
    1d78:	c7 44 24 04 c1 4a 00 	movl   $0x4ac1,0x4(%esp)
    1d7f:	00 
    1d80:	c7 04 24 45 48 00 00 	movl   $0x4845,(%esp)
    1d87:	e8 76 1f 00 00       	call   3d02 <link>
    1d8c:	e9 78 ff ff ff       	jmp    1d09 <linkunlink+0x69>
  printf(1, "linkunlink test\n");

  unlink("x");
  pid = fork();
  if(pid < 0){
    printf(1, "fork failed\n");
    1d91:	c7 44 24 04 a9 50 00 	movl   $0x50a9,0x4(%esp)
    1d98:	00 
    1d99:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1da0:	e8 5b 20 00 00       	call   3e00 <printf>
    exit();
    1da5:	e8 f8 1e 00 00       	call   3ca2 <exit>
  }

  if(pid)
    wait();
  else
    exit();
    1daa:	e8 f3 1e 00 00       	call   3ca2 <exit>
    1daf:	90                   	nop

00001db0 <bigdir>:
}

// directory that uses indirect blocks
void
bigdir(void)
{
    1db0:	55                   	push   %ebp
    1db1:	89 e5                	mov    %esp,%ebp
    1db3:	56                   	push   %esi
    1db4:	53                   	push   %ebx
    1db5:	83 ec 20             	sub    $0x20,%esp
  int i, fd;
  char name[10];

  printf(1, "bigdir test\n");
    1db8:	c7 44 24 04 58 48 00 	movl   $0x4858,0x4(%esp)
    1dbf:	00 
    1dc0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1dc7:	e8 34 20 00 00       	call   3e00 <printf>
  unlink("bd");
    1dcc:	c7 04 24 65 48 00 00 	movl   $0x4865,(%esp)
    1dd3:	e8 1a 1f 00 00       	call   3cf2 <unlink>

  fd = open("bd", O_CREATE);
    1dd8:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    1ddf:	00 
    1de0:	c7 04 24 65 48 00 00 	movl   $0x4865,(%esp)
    1de7:	e8 f6 1e 00 00       	call   3ce2 <open>
  if(fd < 0){
    1dec:	85 c0                	test   %eax,%eax
    1dee:	0f 88 e6 00 00 00    	js     1eda <bigdir+0x12a>
    printf(1, "bigdir create failed\n");
    exit();
  }
  close(fd);
    1df4:	89 04 24             	mov    %eax,(%esp)

  for(i = 0; i < 500; i++){
    1df7:	31 db                	xor    %ebx,%ebx
  fd = open("bd", O_CREATE);
  if(fd < 0){
    printf(1, "bigdir create failed\n");
    exit();
  }
  close(fd);
    1df9:	e8 cc 1e 00 00       	call   3cca <close>
    1dfe:	8d 75 ee             	lea    -0x12(%ebp),%esi
    1e01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    1e08:	89 d8                	mov    %ebx,%eax
    1e0a:	c1 f8 06             	sar    $0x6,%eax
    1e0d:	83 c0 30             	add    $0x30,%eax
    1e10:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    1e13:	89 d8                	mov    %ebx,%eax
    1e15:	83 e0 3f             	and    $0x3f,%eax
    1e18:	83 c0 30             	add    $0x30,%eax
    name[3] = '\0';
    if(link("bd", name) != 0){
    1e1b:	89 74 24 04          	mov    %esi,0x4(%esp)
    1e1f:	c7 04 24 65 48 00 00 	movl   $0x4865,(%esp)
    exit();
  }
  close(fd);

  for(i = 0; i < 500; i++){
    name[0] = 'x';
    1e26:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[1] = '0' + (i / 64);
    name[2] = '0' + (i % 64);
    1e2a:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    1e2d:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    if(link("bd", name) != 0){
    1e31:	e8 cc 1e 00 00       	call   3d02 <link>
    1e36:	85 c0                	test   %eax,%eax
    1e38:	75 6e                	jne    1ea8 <bigdir+0xf8>
    printf(1, "bigdir create failed\n");
    exit();
  }
  close(fd);

  for(i = 0; i < 500; i++){
    1e3a:	83 c3 01             	add    $0x1,%ebx
    1e3d:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1e43:	75 c3                	jne    1e08 <bigdir+0x58>
      printf(1, "bigdir link failed\n");
      exit();
    }
  }

  unlink("bd");
    1e45:	c7 04 24 65 48 00 00 	movl   $0x4865,(%esp)
  for(i = 0; i < 500; i++){
    1e4c:	66 31 db             	xor    %bx,%bx
      printf(1, "bigdir link failed\n");
      exit();
    }
  }

  unlink("bd");
    1e4f:	e8 9e 1e 00 00       	call   3cf2 <unlink>
    1e54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    1e58:	89 d8                	mov    %ebx,%eax
    1e5a:	c1 f8 06             	sar    $0x6,%eax
    1e5d:	83 c0 30             	add    $0x30,%eax
    1e60:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    1e63:	89 d8                	mov    %ebx,%eax
    1e65:	83 e0 3f             	and    $0x3f,%eax
    1e68:	83 c0 30             	add    $0x30,%eax
    name[3] = '\0';
    if(unlink(name) != 0){
    1e6b:	89 34 24             	mov    %esi,(%esp)
    }
  }

  unlink("bd");
  for(i = 0; i < 500; i++){
    name[0] = 'x';
    1e6e:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[1] = '0' + (i / 64);
    name[2] = '0' + (i % 64);
    1e72:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    1e75:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    if(unlink(name) != 0){
    1e79:	e8 74 1e 00 00       	call   3cf2 <unlink>
    1e7e:	85 c0                	test   %eax,%eax
    1e80:	75 3f                	jne    1ec1 <bigdir+0x111>
      exit();
    }
  }

  unlink("bd");
  for(i = 0; i < 500; i++){
    1e82:	83 c3 01             	add    $0x1,%ebx
    1e85:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1e8b:	75 cb                	jne    1e58 <bigdir+0xa8>
      printf(1, "bigdir unlink failed");
      exit();
    }
  }

  printf(1, "bigdir ok\n");
    1e8d:	c7 44 24 04 a7 48 00 	movl   $0x48a7,0x4(%esp)
    1e94:	00 
    1e95:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1e9c:	e8 5f 1f 00 00       	call   3e00 <printf>
}
    1ea1:	83 c4 20             	add    $0x20,%esp
    1ea4:	5b                   	pop    %ebx
    1ea5:	5e                   	pop    %esi
    1ea6:	5d                   	pop    %ebp
    1ea7:	c3                   	ret    
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(link("bd", name) != 0){
      printf(1, "bigdir link failed\n");
    1ea8:	c7 44 24 04 7e 48 00 	movl   $0x487e,0x4(%esp)
    1eaf:	00 
    1eb0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1eb7:	e8 44 1f 00 00       	call   3e00 <printf>
      exit();
    1ebc:	e8 e1 1d 00 00       	call   3ca2 <exit>
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(unlink(name) != 0){
      printf(1, "bigdir unlink failed");
    1ec1:	c7 44 24 04 92 48 00 	movl   $0x4892,0x4(%esp)
    1ec8:	00 
    1ec9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1ed0:	e8 2b 1f 00 00       	call   3e00 <printf>
      exit();
    1ed5:	e8 c8 1d 00 00       	call   3ca2 <exit>
  printf(1, "bigdir test\n");
  unlink("bd");

  fd = open("bd", O_CREATE);
  if(fd < 0){
    printf(1, "bigdir create failed\n");
    1eda:	c7 44 24 04 68 48 00 	movl   $0x4868,0x4(%esp)
    1ee1:	00 
    1ee2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1ee9:	e8 12 1f 00 00       	call   3e00 <printf>
    exit();
    1eee:	e8 af 1d 00 00       	call   3ca2 <exit>
    1ef3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1ef9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001f00 <subdir>:
  printf(1, "bigdir ok\n");
}

void
subdir(void)
{
    1f00:	55                   	push   %ebp
    1f01:	89 e5                	mov    %esp,%ebp
    1f03:	53                   	push   %ebx
    1f04:	83 ec 14             	sub    $0x14,%esp
  int fd, cc;

  printf(1, "subdir test\n");
    1f07:	c7 44 24 04 b2 48 00 	movl   $0x48b2,0x4(%esp)
    1f0e:	00 
    1f0f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1f16:	e8 e5 1e 00 00       	call   3e00 <printf>

  unlink("ff");
    1f1b:	c7 04 24 3b 49 00 00 	movl   $0x493b,(%esp)
    1f22:	e8 cb 1d 00 00       	call   3cf2 <unlink>
  if(mkdir("dd") != 0){
    1f27:	c7 04 24 d8 49 00 00 	movl   $0x49d8,(%esp)
    1f2e:	e8 d7 1d 00 00       	call   3d0a <mkdir>
    1f33:	85 c0                	test   %eax,%eax
    1f35:	0f 85 07 06 00 00    	jne    2542 <subdir+0x642>
    printf(1, "subdir mkdir dd failed\n");
    exit();
  }

  fd = open("dd/ff", O_CREATE | O_RDWR);
    1f3b:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1f42:	00 
    1f43:	c7 04 24 11 49 00 00 	movl   $0x4911,(%esp)
    1f4a:	e8 93 1d 00 00       	call   3ce2 <open>
  if(fd < 0){
    1f4f:	85 c0                	test   %eax,%eax
  if(mkdir("dd") != 0){
    printf(1, "subdir mkdir dd failed\n");
    exit();
  }

  fd = open("dd/ff", O_CREATE | O_RDWR);
    1f51:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1f53:	0f 88 d0 05 00 00    	js     2529 <subdir+0x629>
    printf(1, "create dd/ff failed\n");
    exit();
  }
  write(fd, "ff", 2);
    1f59:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
    1f60:	00 
    1f61:	c7 44 24 04 3b 49 00 	movl   $0x493b,0x4(%esp)
    1f68:	00 
    1f69:	89 04 24             	mov    %eax,(%esp)
    1f6c:	e8 51 1d 00 00       	call   3cc2 <write>
  close(fd);
    1f71:	89 1c 24             	mov    %ebx,(%esp)
    1f74:	e8 51 1d 00 00       	call   3cca <close>

  if(unlink("dd") >= 0){
    1f79:	c7 04 24 d8 49 00 00 	movl   $0x49d8,(%esp)
    1f80:	e8 6d 1d 00 00       	call   3cf2 <unlink>
    1f85:	85 c0                	test   %eax,%eax
    1f87:	0f 89 83 05 00 00    	jns    2510 <subdir+0x610>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    exit();
  }

  if(mkdir("/dd/dd") != 0){
    1f8d:	c7 04 24 ec 48 00 00 	movl   $0x48ec,(%esp)
    1f94:	e8 71 1d 00 00       	call   3d0a <mkdir>
    1f99:	85 c0                	test   %eax,%eax
    1f9b:	0f 85 56 05 00 00    	jne    24f7 <subdir+0x5f7>
    printf(1, "subdir mkdir dd/dd failed\n");
    exit();
  }

  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    1fa1:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1fa8:	00 
    1fa9:	c7 04 24 0e 49 00 00 	movl   $0x490e,(%esp)
    1fb0:	e8 2d 1d 00 00       	call   3ce2 <open>
  if(fd < 0){
    1fb5:	85 c0                	test   %eax,%eax
  if(mkdir("/dd/dd") != 0){
    printf(1, "subdir mkdir dd/dd failed\n");
    exit();
  }

  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    1fb7:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1fb9:	0f 88 25 04 00 00    	js     23e4 <subdir+0x4e4>
    printf(1, "create dd/dd/ff failed\n");
    exit();
  }
  write(fd, "FF", 2);
    1fbf:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
    1fc6:	00 
    1fc7:	c7 44 24 04 2f 49 00 	movl   $0x492f,0x4(%esp)
    1fce:	00 
    1fcf:	89 04 24             	mov    %eax,(%esp)
    1fd2:	e8 eb 1c 00 00       	call   3cc2 <write>
  close(fd);
    1fd7:	89 1c 24             	mov    %ebx,(%esp)
    1fda:	e8 eb 1c 00 00       	call   3cca <close>

  fd = open("dd/dd/../ff", 0);
    1fdf:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1fe6:	00 
    1fe7:	c7 04 24 32 49 00 00 	movl   $0x4932,(%esp)
    1fee:	e8 ef 1c 00 00       	call   3ce2 <open>
  if(fd < 0){
    1ff3:	85 c0                	test   %eax,%eax
    exit();
  }
  write(fd, "FF", 2);
  close(fd);

  fd = open("dd/dd/../ff", 0);
    1ff5:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1ff7:	0f 88 ce 03 00 00    	js     23cb <subdir+0x4cb>
    printf(1, "open dd/dd/../ff failed\n");
    exit();
  }
  cc = read(fd, buf, sizeof(buf));
    1ffd:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    2004:	00 
    2005:	c7 44 24 04 c0 89 00 	movl   $0x89c0,0x4(%esp)
    200c:	00 
    200d:	89 04 24             	mov    %eax,(%esp)
    2010:	e8 a5 1c 00 00       	call   3cba <read>
  if(cc != 2 || buf[0] != 'f'){
    2015:	83 f8 02             	cmp    $0x2,%eax
    2018:	0f 85 fe 02 00 00    	jne    231c <subdir+0x41c>
    201e:	80 3d c0 89 00 00 66 	cmpb   $0x66,0x89c0
    2025:	0f 85 f1 02 00 00    	jne    231c <subdir+0x41c>
    printf(1, "dd/dd/../ff wrong content\n");
    exit();
  }
  close(fd);
    202b:	89 1c 24             	mov    %ebx,(%esp)
    202e:	e8 97 1c 00 00       	call   3cca <close>

  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    2033:	c7 44 24 04 72 49 00 	movl   $0x4972,0x4(%esp)
    203a:	00 
    203b:	c7 04 24 0e 49 00 00 	movl   $0x490e,(%esp)
    2042:	e8 bb 1c 00 00       	call   3d02 <link>
    2047:	85 c0                	test   %eax,%eax
    2049:	0f 85 c7 03 00 00    	jne    2416 <subdir+0x516>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    exit();
  }

  if(unlink("dd/dd/ff") != 0){
    204f:	c7 04 24 0e 49 00 00 	movl   $0x490e,(%esp)
    2056:	e8 97 1c 00 00       	call   3cf2 <unlink>
    205b:	85 c0                	test   %eax,%eax
    205d:	0f 85 eb 02 00 00    	jne    234e <subdir+0x44e>
    printf(1, "unlink dd/dd/ff failed\n");
    exit();
  }
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2063:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    206a:	00 
    206b:	c7 04 24 0e 49 00 00 	movl   $0x490e,(%esp)
    2072:	e8 6b 1c 00 00       	call   3ce2 <open>
    2077:	85 c0                	test   %eax,%eax
    2079:	0f 89 5f 04 00 00    	jns    24de <subdir+0x5de>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    exit();
  }

  if(chdir("dd") != 0){
    207f:	c7 04 24 d8 49 00 00 	movl   $0x49d8,(%esp)
    2086:	e8 87 1c 00 00       	call   3d12 <chdir>
    208b:	85 c0                	test   %eax,%eax
    208d:	0f 85 32 04 00 00    	jne    24c5 <subdir+0x5c5>
    printf(1, "chdir dd failed\n");
    exit();
  }
  if(chdir("dd/../../dd") != 0){
    2093:	c7 04 24 a6 49 00 00 	movl   $0x49a6,(%esp)
    209a:	e8 73 1c 00 00       	call   3d12 <chdir>
    209f:	85 c0                	test   %eax,%eax
    20a1:	0f 85 8e 02 00 00    	jne    2335 <subdir+0x435>
    printf(1, "chdir dd/../../dd failed\n");
    exit();
  }
  if(chdir("dd/../../../dd") != 0){
    20a7:	c7 04 24 cc 49 00 00 	movl   $0x49cc,(%esp)
    20ae:	e8 5f 1c 00 00       	call   3d12 <chdir>
    20b3:	85 c0                	test   %eax,%eax
    20b5:	0f 85 7a 02 00 00    	jne    2335 <subdir+0x435>
    printf(1, "chdir dd/../../dd failed\n");
    exit();
  }
  if(chdir("./..") != 0){
    20bb:	c7 04 24 db 49 00 00 	movl   $0x49db,(%esp)
    20c2:	e8 4b 1c 00 00       	call   3d12 <chdir>
    20c7:	85 c0                	test   %eax,%eax
    20c9:	0f 85 2e 03 00 00    	jne    23fd <subdir+0x4fd>
    printf(1, "chdir ./.. failed\n");
    exit();
  }

  fd = open("dd/dd/ffff", 0);
    20cf:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    20d6:	00 
    20d7:	c7 04 24 72 49 00 00 	movl   $0x4972,(%esp)
    20de:	e8 ff 1b 00 00       	call   3ce2 <open>
  if(fd < 0){
    20e3:	85 c0                	test   %eax,%eax
  if(chdir("./..") != 0){
    printf(1, "chdir ./.. failed\n");
    exit();
  }

  fd = open("dd/dd/ffff", 0);
    20e5:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    20e7:	0f 88 81 05 00 00    	js     266e <subdir+0x76e>
    printf(1, "open dd/dd/ffff failed\n");
    exit();
  }
  if(read(fd, buf, sizeof(buf)) != 2){
    20ed:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    20f4:	00 
    20f5:	c7 44 24 04 c0 89 00 	movl   $0x89c0,0x4(%esp)
    20fc:	00 
    20fd:	89 04 24             	mov    %eax,(%esp)
    2100:	e8 b5 1b 00 00       	call   3cba <read>
    2105:	83 f8 02             	cmp    $0x2,%eax
    2108:	0f 85 47 05 00 00    	jne    2655 <subdir+0x755>
    printf(1, "read dd/dd/ffff wrong len\n");
    exit();
  }
  close(fd);
    210e:	89 1c 24             	mov    %ebx,(%esp)
    2111:	e8 b4 1b 00 00       	call   3cca <close>

  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2116:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    211d:	00 
    211e:	c7 04 24 0e 49 00 00 	movl   $0x490e,(%esp)
    2125:	e8 b8 1b 00 00       	call   3ce2 <open>
    212a:	85 c0                	test   %eax,%eax
    212c:	0f 89 4e 02 00 00    	jns    2380 <subdir+0x480>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    exit();
  }

  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    2132:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2139:	00 
    213a:	c7 04 24 26 4a 00 00 	movl   $0x4a26,(%esp)
    2141:	e8 9c 1b 00 00       	call   3ce2 <open>
    2146:	85 c0                	test   %eax,%eax
    2148:	0f 89 19 02 00 00    	jns    2367 <subdir+0x467>
    printf(1, "create dd/ff/ff succeeded!\n");
    exit();
  }
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    214e:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2155:	00 
    2156:	c7 04 24 4b 4a 00 00 	movl   $0x4a4b,(%esp)
    215d:	e8 80 1b 00 00       	call   3ce2 <open>
    2162:	85 c0                	test   %eax,%eax
    2164:	0f 89 42 03 00 00    	jns    24ac <subdir+0x5ac>
    printf(1, "create dd/xx/ff succeeded!\n");
    exit();
  }
  if(open("dd", O_CREATE) >= 0){
    216a:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2171:	00 
    2172:	c7 04 24 d8 49 00 00 	movl   $0x49d8,(%esp)
    2179:	e8 64 1b 00 00       	call   3ce2 <open>
    217e:	85 c0                	test   %eax,%eax
    2180:	0f 89 0d 03 00 00    	jns    2493 <subdir+0x593>
    printf(1, "create dd succeeded!\n");
    exit();
  }
  if(open("dd", O_RDWR) >= 0){
    2186:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    218d:	00 
    218e:	c7 04 24 d8 49 00 00 	movl   $0x49d8,(%esp)
    2195:	e8 48 1b 00 00       	call   3ce2 <open>
    219a:	85 c0                	test   %eax,%eax
    219c:	0f 89 d8 02 00 00    	jns    247a <subdir+0x57a>
    printf(1, "open dd rdwr succeeded!\n");
    exit();
  }
  if(open("dd", O_WRONLY) >= 0){
    21a2:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
    21a9:	00 
    21aa:	c7 04 24 d8 49 00 00 	movl   $0x49d8,(%esp)
    21b1:	e8 2c 1b 00 00       	call   3ce2 <open>
    21b6:	85 c0                	test   %eax,%eax
    21b8:	0f 89 a3 02 00 00    	jns    2461 <subdir+0x561>
    printf(1, "open dd wronly succeeded!\n");
    exit();
  }
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    21be:	c7 44 24 04 ba 4a 00 	movl   $0x4aba,0x4(%esp)
    21c5:	00 
    21c6:	c7 04 24 26 4a 00 00 	movl   $0x4a26,(%esp)
    21cd:	e8 30 1b 00 00       	call   3d02 <link>
    21d2:	85 c0                	test   %eax,%eax
    21d4:	0f 84 6e 02 00 00    	je     2448 <subdir+0x548>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    exit();
  }
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    21da:	c7 44 24 04 ba 4a 00 	movl   $0x4aba,0x4(%esp)
    21e1:	00 
    21e2:	c7 04 24 4b 4a 00 00 	movl   $0x4a4b,(%esp)
    21e9:	e8 14 1b 00 00       	call   3d02 <link>
    21ee:	85 c0                	test   %eax,%eax
    21f0:	0f 84 39 02 00 00    	je     242f <subdir+0x52f>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    exit();
  }
  if(link("dd/ff", "dd/dd/ffff") == 0){
    21f6:	c7 44 24 04 72 49 00 	movl   $0x4972,0x4(%esp)
    21fd:	00 
    21fe:	c7 04 24 11 49 00 00 	movl   $0x4911,(%esp)
    2205:	e8 f8 1a 00 00       	call   3d02 <link>
    220a:	85 c0                	test   %eax,%eax
    220c:	0f 84 a0 01 00 00    	je     23b2 <subdir+0x4b2>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    exit();
  }
  if(mkdir("dd/ff/ff") == 0){
    2212:	c7 04 24 26 4a 00 00 	movl   $0x4a26,(%esp)
    2219:	e8 ec 1a 00 00       	call   3d0a <mkdir>
    221e:	85 c0                	test   %eax,%eax
    2220:	0f 84 73 01 00 00    	je     2399 <subdir+0x499>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    exit();
  }
  if(mkdir("dd/xx/ff") == 0){
    2226:	c7 04 24 4b 4a 00 00 	movl   $0x4a4b,(%esp)
    222d:	e8 d8 1a 00 00       	call   3d0a <mkdir>
    2232:	85 c0                	test   %eax,%eax
    2234:	0f 84 02 04 00 00    	je     263c <subdir+0x73c>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    exit();
  }
  if(mkdir("dd/dd/ffff") == 0){
    223a:	c7 04 24 72 49 00 00 	movl   $0x4972,(%esp)
    2241:	e8 c4 1a 00 00       	call   3d0a <mkdir>
    2246:	85 c0                	test   %eax,%eax
    2248:	0f 84 d5 03 00 00    	je     2623 <subdir+0x723>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    exit();
  }
  if(unlink("dd/xx/ff") == 0){
    224e:	c7 04 24 4b 4a 00 00 	movl   $0x4a4b,(%esp)
    2255:	e8 98 1a 00 00       	call   3cf2 <unlink>
    225a:	85 c0                	test   %eax,%eax
    225c:	0f 84 a8 03 00 00    	je     260a <subdir+0x70a>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    exit();
  }
  if(unlink("dd/ff/ff") == 0){
    2262:	c7 04 24 26 4a 00 00 	movl   $0x4a26,(%esp)
    2269:	e8 84 1a 00 00       	call   3cf2 <unlink>
    226e:	85 c0                	test   %eax,%eax
    2270:	0f 84 7b 03 00 00    	je     25f1 <subdir+0x6f1>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    exit();
  }
  if(chdir("dd/ff") == 0){
    2276:	c7 04 24 11 49 00 00 	movl   $0x4911,(%esp)
    227d:	e8 90 1a 00 00       	call   3d12 <chdir>
    2282:	85 c0                	test   %eax,%eax
    2284:	0f 84 4e 03 00 00    	je     25d8 <subdir+0x6d8>
    printf(1, "chdir dd/ff succeeded!\n");
    exit();
  }
  if(chdir("dd/xx") == 0){
    228a:	c7 04 24 bd 4a 00 00 	movl   $0x4abd,(%esp)
    2291:	e8 7c 1a 00 00       	call   3d12 <chdir>
    2296:	85 c0                	test   %eax,%eax
    2298:	0f 84 21 03 00 00    	je     25bf <subdir+0x6bf>
    printf(1, "chdir dd/xx succeeded!\n");
    exit();
  }

  if(unlink("dd/dd/ffff") != 0){
    229e:	c7 04 24 72 49 00 00 	movl   $0x4972,(%esp)
    22a5:	e8 48 1a 00 00       	call   3cf2 <unlink>
    22aa:	85 c0                	test   %eax,%eax
    22ac:	0f 85 9c 00 00 00    	jne    234e <subdir+0x44e>
    printf(1, "unlink dd/dd/ff failed\n");
    exit();
  }
  if(unlink("dd/ff") != 0){
    22b2:	c7 04 24 11 49 00 00 	movl   $0x4911,(%esp)
    22b9:	e8 34 1a 00 00       	call   3cf2 <unlink>
    22be:	85 c0                	test   %eax,%eax
    22c0:	0f 85 e0 02 00 00    	jne    25a6 <subdir+0x6a6>
    printf(1, "unlink dd/ff failed\n");
    exit();
  }
  if(unlink("dd") == 0){
    22c6:	c7 04 24 d8 49 00 00 	movl   $0x49d8,(%esp)
    22cd:	e8 20 1a 00 00       	call   3cf2 <unlink>
    22d2:	85 c0                	test   %eax,%eax
    22d4:	0f 84 b3 02 00 00    	je     258d <subdir+0x68d>
    printf(1, "unlink non-empty dd succeeded!\n");
    exit();
  }
  if(unlink("dd/dd") < 0){
    22da:	c7 04 24 ed 48 00 00 	movl   $0x48ed,(%esp)
    22e1:	e8 0c 1a 00 00       	call   3cf2 <unlink>
    22e6:	85 c0                	test   %eax,%eax
    22e8:	0f 88 86 02 00 00    	js     2574 <subdir+0x674>
    printf(1, "unlink dd/dd failed\n");
    exit();
  }
  if(unlink("dd") < 0){
    22ee:	c7 04 24 d8 49 00 00 	movl   $0x49d8,(%esp)
    22f5:	e8 f8 19 00 00       	call   3cf2 <unlink>
    22fa:	85 c0                	test   %eax,%eax
    22fc:	0f 88 59 02 00 00    	js     255b <subdir+0x65b>
    printf(1, "unlink dd failed\n");
    exit();
  }

  printf(1, "subdir ok\n");
    2302:	c7 44 24 04 ba 4b 00 	movl   $0x4bba,0x4(%esp)
    2309:	00 
    230a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2311:	e8 ea 1a 00 00       	call   3e00 <printf>
}
    2316:	83 c4 14             	add    $0x14,%esp
    2319:	5b                   	pop    %ebx
    231a:	5d                   	pop    %ebp
    231b:	c3                   	ret    
    printf(1, "open dd/dd/../ff failed\n");
    exit();
  }
  cc = read(fd, buf, sizeof(buf));
  if(cc != 2 || buf[0] != 'f'){
    printf(1, "dd/dd/../ff wrong content\n");
    231c:	c7 44 24 04 57 49 00 	movl   $0x4957,0x4(%esp)
    2323:	00 
    2324:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    232b:	e8 d0 1a 00 00       	call   3e00 <printf>
    exit();
    2330:	e8 6d 19 00 00       	call   3ca2 <exit>
  if(chdir("dd") != 0){
    printf(1, "chdir dd failed\n");
    exit();
  }
  if(chdir("dd/../../dd") != 0){
    printf(1, "chdir dd/../../dd failed\n");
    2335:	c7 44 24 04 b2 49 00 	movl   $0x49b2,0x4(%esp)
    233c:	00 
    233d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2344:	e8 b7 1a 00 00       	call   3e00 <printf>
    exit();
    2349:	e8 54 19 00 00       	call   3ca2 <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    exit();
  }

  if(unlink("dd/dd/ff") != 0){
    printf(1, "unlink dd/dd/ff failed\n");
    234e:	c7 44 24 04 7d 49 00 	movl   $0x497d,0x4(%esp)
    2355:	00 
    2356:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    235d:	e8 9e 1a 00 00       	call   3e00 <printf>
    exit();
    2362:	e8 3b 19 00 00       	call   3ca2 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    exit();
  }

  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    printf(1, "create dd/ff/ff succeeded!\n");
    2367:	c7 44 24 04 2f 4a 00 	movl   $0x4a2f,0x4(%esp)
    236e:	00 
    236f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2376:	e8 85 1a 00 00       	call   3e00 <printf>
    exit();
    237b:	e8 22 19 00 00       	call   3ca2 <exit>
    exit();
  }
  close(fd);

  if(open("dd/dd/ff", O_RDONLY) >= 0){
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    2380:	c7 44 24 04 14 54 00 	movl   $0x5414,0x4(%esp)
    2387:	00 
    2388:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    238f:	e8 6c 1a 00 00       	call   3e00 <printf>
    exit();
    2394:	e8 09 19 00 00       	call   3ca2 <exit>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    exit();
  }
  if(mkdir("dd/ff/ff") == 0){
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    2399:	c7 44 24 04 c3 4a 00 	movl   $0x4ac3,0x4(%esp)
    23a0:	00 
    23a1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    23a8:	e8 53 1a 00 00       	call   3e00 <printf>
    exit();
    23ad:	e8 f0 18 00 00       	call   3ca2 <exit>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    exit();
  }
  if(link("dd/ff", "dd/dd/ffff") == 0){
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    23b2:	c7 44 24 04 84 54 00 	movl   $0x5484,0x4(%esp)
    23b9:	00 
    23ba:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    23c1:	e8 3a 1a 00 00       	call   3e00 <printf>
    exit();
    23c6:	e8 d7 18 00 00       	call   3ca2 <exit>
  write(fd, "FF", 2);
  close(fd);

  fd = open("dd/dd/../ff", 0);
  if(fd < 0){
    printf(1, "open dd/dd/../ff failed\n");
    23cb:	c7 44 24 04 3e 49 00 	movl   $0x493e,0x4(%esp)
    23d2:	00 
    23d3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    23da:	e8 21 1a 00 00       	call   3e00 <printf>
    exit();
    23df:	e8 be 18 00 00       	call   3ca2 <exit>
    exit();
  }

  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "create dd/dd/ff failed\n");
    23e4:	c7 44 24 04 17 49 00 	movl   $0x4917,0x4(%esp)
    23eb:	00 
    23ec:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    23f3:	e8 08 1a 00 00       	call   3e00 <printf>
    exit();
    23f8:	e8 a5 18 00 00       	call   3ca2 <exit>
  if(chdir("dd/../../../dd") != 0){
    printf(1, "chdir dd/../../dd failed\n");
    exit();
  }
  if(chdir("./..") != 0){
    printf(1, "chdir ./.. failed\n");
    23fd:	c7 44 24 04 e0 49 00 	movl   $0x49e0,0x4(%esp)
    2404:	00 
    2405:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    240c:	e8 ef 19 00 00       	call   3e00 <printf>
    exit();
    2411:	e8 8c 18 00 00       	call   3ca2 <exit>
    exit();
  }
  close(fd);

  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    2416:	c7 44 24 04 cc 53 00 	movl   $0x53cc,0x4(%esp)
    241d:	00 
    241e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2425:	e8 d6 19 00 00       	call   3e00 <printf>
    exit();
    242a:	e8 73 18 00 00       	call   3ca2 <exit>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    exit();
  }
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    242f:	c7 44 24 04 60 54 00 	movl   $0x5460,0x4(%esp)
    2436:	00 
    2437:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    243e:	e8 bd 19 00 00       	call   3e00 <printf>
    exit();
    2443:	e8 5a 18 00 00       	call   3ca2 <exit>
  if(open("dd", O_WRONLY) >= 0){
    printf(1, "open dd wronly succeeded!\n");
    exit();
  }
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    2448:	c7 44 24 04 3c 54 00 	movl   $0x543c,0x4(%esp)
    244f:	00 
    2450:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2457:	e8 a4 19 00 00       	call   3e00 <printf>
    exit();
    245c:	e8 41 18 00 00       	call   3ca2 <exit>
  if(open("dd", O_RDWR) >= 0){
    printf(1, "open dd rdwr succeeded!\n");
    exit();
  }
  if(open("dd", O_WRONLY) >= 0){
    printf(1, "open dd wronly succeeded!\n");
    2461:	c7 44 24 04 9f 4a 00 	movl   $0x4a9f,0x4(%esp)
    2468:	00 
    2469:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2470:	e8 8b 19 00 00       	call   3e00 <printf>
    exit();
    2475:	e8 28 18 00 00       	call   3ca2 <exit>
  if(open("dd", O_CREATE) >= 0){
    printf(1, "create dd succeeded!\n");
    exit();
  }
  if(open("dd", O_RDWR) >= 0){
    printf(1, "open dd rdwr succeeded!\n");
    247a:	c7 44 24 04 86 4a 00 	movl   $0x4a86,0x4(%esp)
    2481:	00 
    2482:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2489:	e8 72 19 00 00       	call   3e00 <printf>
    exit();
    248e:	e8 0f 18 00 00       	call   3ca2 <exit>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    printf(1, "create dd/xx/ff succeeded!\n");
    exit();
  }
  if(open("dd", O_CREATE) >= 0){
    printf(1, "create dd succeeded!\n");
    2493:	c7 44 24 04 70 4a 00 	movl   $0x4a70,0x4(%esp)
    249a:	00 
    249b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24a2:	e8 59 19 00 00       	call   3e00 <printf>
    exit();
    24a7:	e8 f6 17 00 00       	call   3ca2 <exit>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    printf(1, "create dd/ff/ff succeeded!\n");
    exit();
  }
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    printf(1, "create dd/xx/ff succeeded!\n");
    24ac:	c7 44 24 04 54 4a 00 	movl   $0x4a54,0x4(%esp)
    24b3:	00 
    24b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24bb:	e8 40 19 00 00       	call   3e00 <printf>
    exit();
    24c0:	e8 dd 17 00 00       	call   3ca2 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    exit();
  }

  if(chdir("dd") != 0){
    printf(1, "chdir dd failed\n");
    24c5:	c7 44 24 04 95 49 00 	movl   $0x4995,0x4(%esp)
    24cc:	00 
    24cd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24d4:	e8 27 19 00 00       	call   3e00 <printf>
    exit();
    24d9:	e8 c4 17 00 00       	call   3ca2 <exit>
  if(unlink("dd/dd/ff") != 0){
    printf(1, "unlink dd/dd/ff failed\n");
    exit();
  }
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    24de:	c7 44 24 04 f0 53 00 	movl   $0x53f0,0x4(%esp)
    24e5:	00 
    24e6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24ed:	e8 0e 19 00 00       	call   3e00 <printf>
    exit();
    24f2:	e8 ab 17 00 00       	call   3ca2 <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    exit();
  }

  if(mkdir("/dd/dd") != 0){
    printf(1, "subdir mkdir dd/dd failed\n");
    24f7:	c7 44 24 04 f3 48 00 	movl   $0x48f3,0x4(%esp)
    24fe:	00 
    24ff:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2506:	e8 f5 18 00 00       	call   3e00 <printf>
    exit();
    250b:	e8 92 17 00 00       	call   3ca2 <exit>
  }
  write(fd, "ff", 2);
  close(fd);

  if(unlink("dd") >= 0){
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    2510:	c7 44 24 04 a4 53 00 	movl   $0x53a4,0x4(%esp)
    2517:	00 
    2518:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    251f:	e8 dc 18 00 00       	call   3e00 <printf>
    exit();
    2524:	e8 79 17 00 00       	call   3ca2 <exit>
    exit();
  }

  fd = open("dd/ff", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "create dd/ff failed\n");
    2529:	c7 44 24 04 d7 48 00 	movl   $0x48d7,0x4(%esp)
    2530:	00 
    2531:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2538:	e8 c3 18 00 00       	call   3e00 <printf>
    exit();
    253d:	e8 60 17 00 00       	call   3ca2 <exit>

  printf(1, "subdir test\n");

  unlink("ff");
  if(mkdir("dd") != 0){
    printf(1, "subdir mkdir dd failed\n");
    2542:	c7 44 24 04 bf 48 00 	movl   $0x48bf,0x4(%esp)
    2549:	00 
    254a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2551:	e8 aa 18 00 00       	call   3e00 <printf>
    exit();
    2556:	e8 47 17 00 00       	call   3ca2 <exit>
  if(unlink("dd/dd") < 0){
    printf(1, "unlink dd/dd failed\n");
    exit();
  }
  if(unlink("dd") < 0){
    printf(1, "unlink dd failed\n");
    255b:	c7 44 24 04 a8 4b 00 	movl   $0x4ba8,0x4(%esp)
    2562:	00 
    2563:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    256a:	e8 91 18 00 00       	call   3e00 <printf>
    exit();
    256f:	e8 2e 17 00 00       	call   3ca2 <exit>
  if(unlink("dd") == 0){
    printf(1, "unlink non-empty dd succeeded!\n");
    exit();
  }
  if(unlink("dd/dd") < 0){
    printf(1, "unlink dd/dd failed\n");
    2574:	c7 44 24 04 93 4b 00 	movl   $0x4b93,0x4(%esp)
    257b:	00 
    257c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2583:	e8 78 18 00 00       	call   3e00 <printf>
    exit();
    2588:	e8 15 17 00 00       	call   3ca2 <exit>
  if(unlink("dd/ff") != 0){
    printf(1, "unlink dd/ff failed\n");
    exit();
  }
  if(unlink("dd") == 0){
    printf(1, "unlink non-empty dd succeeded!\n");
    258d:	c7 44 24 04 a8 54 00 	movl   $0x54a8,0x4(%esp)
    2594:	00 
    2595:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    259c:	e8 5f 18 00 00       	call   3e00 <printf>
    exit();
    25a1:	e8 fc 16 00 00       	call   3ca2 <exit>
  if(unlink("dd/dd/ffff") != 0){
    printf(1, "unlink dd/dd/ff failed\n");
    exit();
  }
  if(unlink("dd/ff") != 0){
    printf(1, "unlink dd/ff failed\n");
    25a6:	c7 44 24 04 7e 4b 00 	movl   $0x4b7e,0x4(%esp)
    25ad:	00 
    25ae:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25b5:	e8 46 18 00 00       	call   3e00 <printf>
    exit();
    25ba:	e8 e3 16 00 00       	call   3ca2 <exit>
  if(chdir("dd/ff") == 0){
    printf(1, "chdir dd/ff succeeded!\n");
    exit();
  }
  if(chdir("dd/xx") == 0){
    printf(1, "chdir dd/xx succeeded!\n");
    25bf:	c7 44 24 04 66 4b 00 	movl   $0x4b66,0x4(%esp)
    25c6:	00 
    25c7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25ce:	e8 2d 18 00 00       	call   3e00 <printf>
    exit();
    25d3:	e8 ca 16 00 00       	call   3ca2 <exit>
  if(unlink("dd/ff/ff") == 0){
    printf(1, "unlink dd/ff/ff succeeded!\n");
    exit();
  }
  if(chdir("dd/ff") == 0){
    printf(1, "chdir dd/ff succeeded!\n");
    25d8:	c7 44 24 04 4e 4b 00 	movl   $0x4b4e,0x4(%esp)
    25df:	00 
    25e0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25e7:	e8 14 18 00 00       	call   3e00 <printf>
    exit();
    25ec:	e8 b1 16 00 00       	call   3ca2 <exit>
  if(unlink("dd/xx/ff") == 0){
    printf(1, "unlink dd/xx/ff succeeded!\n");
    exit();
  }
  if(unlink("dd/ff/ff") == 0){
    printf(1, "unlink dd/ff/ff succeeded!\n");
    25f1:	c7 44 24 04 32 4b 00 	movl   $0x4b32,0x4(%esp)
    25f8:	00 
    25f9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2600:	e8 fb 17 00 00       	call   3e00 <printf>
    exit();
    2605:	e8 98 16 00 00       	call   3ca2 <exit>
  if(mkdir("dd/dd/ffff") == 0){
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    exit();
  }
  if(unlink("dd/xx/ff") == 0){
    printf(1, "unlink dd/xx/ff succeeded!\n");
    260a:	c7 44 24 04 16 4b 00 	movl   $0x4b16,0x4(%esp)
    2611:	00 
    2612:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2619:	e8 e2 17 00 00       	call   3e00 <printf>
    exit();
    261e:	e8 7f 16 00 00       	call   3ca2 <exit>
  if(mkdir("dd/xx/ff") == 0){
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    exit();
  }
  if(mkdir("dd/dd/ffff") == 0){
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    2623:	c7 44 24 04 f9 4a 00 	movl   $0x4af9,0x4(%esp)
    262a:	00 
    262b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2632:	e8 c9 17 00 00       	call   3e00 <printf>
    exit();
    2637:	e8 66 16 00 00       	call   3ca2 <exit>
  if(mkdir("dd/ff/ff") == 0){
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    exit();
  }
  if(mkdir("dd/xx/ff") == 0){
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    263c:	c7 44 24 04 de 4a 00 	movl   $0x4ade,0x4(%esp)
    2643:	00 
    2644:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    264b:	e8 b0 17 00 00       	call   3e00 <printf>
    exit();
    2650:	e8 4d 16 00 00       	call   3ca2 <exit>
  if(fd < 0){
    printf(1, "open dd/dd/ffff failed\n");
    exit();
  }
  if(read(fd, buf, sizeof(buf)) != 2){
    printf(1, "read dd/dd/ffff wrong len\n");
    2655:	c7 44 24 04 0b 4a 00 	movl   $0x4a0b,0x4(%esp)
    265c:	00 
    265d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2664:	e8 97 17 00 00       	call   3e00 <printf>
    exit();
    2669:	e8 34 16 00 00       	call   3ca2 <exit>
    exit();
  }

  fd = open("dd/dd/ffff", 0);
  if(fd < 0){
    printf(1, "open dd/dd/ffff failed\n");
    266e:	c7 44 24 04 f3 49 00 	movl   $0x49f3,0x4(%esp)
    2675:	00 
    2676:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    267d:	e8 7e 17 00 00       	call   3e00 <printf>
    exit();
    2682:	e8 1b 16 00 00       	call   3ca2 <exit>
    2687:	89 f6                	mov    %esi,%esi
    2689:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002690 <bigwrite>:
}

// test writes that are larger than the log.
void
bigwrite(void)
{
    2690:	55                   	push   %ebp
    2691:	89 e5                	mov    %esp,%ebp
    2693:	56                   	push   %esi
    2694:	53                   	push   %ebx
  int fd, sz;

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    2695:	bb f3 01 00 00       	mov    $0x1f3,%ebx
}

// test writes that are larger than the log.
void
bigwrite(void)
{
    269a:	83 ec 10             	sub    $0x10,%esp
  int fd, sz;

  printf(1, "bigwrite test\n");
    269d:	c7 44 24 04 c5 4b 00 	movl   $0x4bc5,0x4(%esp)
    26a4:	00 
    26a5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26ac:	e8 4f 17 00 00       	call   3e00 <printf>

  unlink("bigwrite");
    26b1:	c7 04 24 d4 4b 00 00 	movl   $0x4bd4,(%esp)
    26b8:	e8 35 16 00 00       	call   3cf2 <unlink>
    26bd:	8d 76 00             	lea    0x0(%esi),%esi
  for(sz = 499; sz < 12*512; sz += 471){
    fd = open("bigwrite", O_CREATE | O_RDWR);
    26c0:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    26c7:	00 
    26c8:	c7 04 24 d4 4b 00 00 	movl   $0x4bd4,(%esp)
    26cf:	e8 0e 16 00 00       	call   3ce2 <open>
    if(fd < 0){
    26d4:	85 c0                	test   %eax,%eax

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    fd = open("bigwrite", O_CREATE | O_RDWR);
    26d6:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    26d8:	0f 88 8e 00 00 00    	js     276c <bigwrite+0xdc>
      printf(1, "cannot create bigwrite\n");
      exit();
    }
    int i;
    for(i = 0; i < 2; i++){
      int cc = write(fd, buf, sz);
    26de:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    26e2:	c7 44 24 04 c0 89 00 	movl   $0x89c0,0x4(%esp)
    26e9:	00 
    26ea:	89 04 24             	mov    %eax,(%esp)
    26ed:	e8 d0 15 00 00       	call   3cc2 <write>
      if(cc != sz){
    26f2:	39 d8                	cmp    %ebx,%eax
    26f4:	75 55                	jne    274b <bigwrite+0xbb>
      printf(1, "cannot create bigwrite\n");
      exit();
    }
    int i;
    for(i = 0; i < 2; i++){
      int cc = write(fd, buf, sz);
    26f6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    26fa:	c7 44 24 04 c0 89 00 	movl   $0x89c0,0x4(%esp)
    2701:	00 
    2702:	89 34 24             	mov    %esi,(%esp)
    2705:	e8 b8 15 00 00       	call   3cc2 <write>
      if(cc != sz){
    270a:	39 c3                	cmp    %eax,%ebx
    270c:	75 3d                	jne    274b <bigwrite+0xbb>
        printf(1, "write(%d) ret %d\n", sz, cc);
        exit();
      }
    }
    close(fd);
    270e:	89 34 24             	mov    %esi,(%esp)
  int fd, sz;

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    2711:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
      if(cc != sz){
        printf(1, "write(%d) ret %d\n", sz, cc);
        exit();
      }
    }
    close(fd);
    2717:	e8 ae 15 00 00       	call   3cca <close>
    unlink("bigwrite");
    271c:	c7 04 24 d4 4b 00 00 	movl   $0x4bd4,(%esp)
    2723:	e8 ca 15 00 00       	call   3cf2 <unlink>
  int fd, sz;

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    2728:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    272e:	75 90                	jne    26c0 <bigwrite+0x30>
    }
    close(fd);
    unlink("bigwrite");
  }

  printf(1, "bigwrite ok\n");
    2730:	c7 44 24 04 07 4c 00 	movl   $0x4c07,0x4(%esp)
    2737:	00 
    2738:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    273f:	e8 bc 16 00 00       	call   3e00 <printf>
}
    2744:	83 c4 10             	add    $0x10,%esp
    2747:	5b                   	pop    %ebx
    2748:	5e                   	pop    %esi
    2749:	5d                   	pop    %ebp
    274a:	c3                   	ret    
    }
    int i;
    for(i = 0; i < 2; i++){
      int cc = write(fd, buf, sz);
      if(cc != sz){
        printf(1, "write(%d) ret %d\n", sz, cc);
    274b:	89 44 24 0c          	mov    %eax,0xc(%esp)
    274f:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    2753:	c7 44 24 04 f5 4b 00 	movl   $0x4bf5,0x4(%esp)
    275a:	00 
    275b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2762:	e8 99 16 00 00       	call   3e00 <printf>
        exit();
    2767:	e8 36 15 00 00       	call   3ca2 <exit>

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    fd = open("bigwrite", O_CREATE | O_RDWR);
    if(fd < 0){
      printf(1, "cannot create bigwrite\n");
    276c:	c7 44 24 04 dd 4b 00 	movl   $0x4bdd,0x4(%esp)
    2773:	00 
    2774:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    277b:	e8 80 16 00 00       	call   3e00 <printf>
      exit();
    2780:	e8 1d 15 00 00       	call   3ca2 <exit>
    2785:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2789:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002790 <bigfile>:
  printf(1, "bigwrite ok\n");
}

void
bigfile(void)
{
    2790:	55                   	push   %ebp
    2791:	89 e5                	mov    %esp,%ebp
    2793:	57                   	push   %edi
    2794:	56                   	push   %esi
    2795:	53                   	push   %ebx
    2796:	83 ec 1c             	sub    $0x1c,%esp
  int fd, i, total, cc;

  printf(1, "bigfile test\n");
    2799:	c7 44 24 04 14 4c 00 	movl   $0x4c14,0x4(%esp)
    27a0:	00 
    27a1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27a8:	e8 53 16 00 00       	call   3e00 <printf>

  unlink("bigfile");
    27ad:	c7 04 24 30 4c 00 00 	movl   $0x4c30,(%esp)
    27b4:	e8 39 15 00 00       	call   3cf2 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    27b9:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    27c0:	00 
    27c1:	c7 04 24 30 4c 00 00 	movl   $0x4c30,(%esp)
    27c8:	e8 15 15 00 00       	call   3ce2 <open>
  if(fd < 0){
    27cd:	85 c0                	test   %eax,%eax
  int fd, i, total, cc;

  printf(1, "bigfile test\n");

  unlink("bigfile");
  fd = open("bigfile", O_CREATE | O_RDWR);
    27cf:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    27d1:	0f 88 7f 01 00 00    	js     2956 <bigfile+0x1c6>
    27d7:	31 db                	xor    %ebx,%ebx
    27d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "cannot create bigfile");
    exit();
  }
  for(i = 0; i < 20; i++){
    memset(buf, i, 600);
    27e0:	c7 44 24 08 58 02 00 	movl   $0x258,0x8(%esp)
    27e7:	00 
    27e8:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    27ec:	c7 04 24 c0 89 00 00 	movl   $0x89c0,(%esp)
    27f3:	e8 38 13 00 00       	call   3b30 <memset>
    if(write(fd, buf, 600) != 600){
    27f8:	c7 44 24 08 58 02 00 	movl   $0x258,0x8(%esp)
    27ff:	00 
    2800:	c7 44 24 04 c0 89 00 	movl   $0x89c0,0x4(%esp)
    2807:	00 
    2808:	89 34 24             	mov    %esi,(%esp)
    280b:	e8 b2 14 00 00       	call   3cc2 <write>
    2810:	3d 58 02 00 00       	cmp    $0x258,%eax
    2815:	0f 85 09 01 00 00    	jne    2924 <bigfile+0x194>
  fd = open("bigfile", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "cannot create bigfile");
    exit();
  }
  for(i = 0; i < 20; i++){
    281b:	83 c3 01             	add    $0x1,%ebx
    281e:	83 fb 14             	cmp    $0x14,%ebx
    2821:	75 bd                	jne    27e0 <bigfile+0x50>
    if(write(fd, buf, 600) != 600){
      printf(1, "write bigfile failed\n");
      exit();
    }
  }
  close(fd);
    2823:	89 34 24             	mov    %esi,(%esp)
    2826:	e8 9f 14 00 00       	call   3cca <close>

  fd = open("bigfile", 0);
    282b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2832:	00 
    2833:	c7 04 24 30 4c 00 00 	movl   $0x4c30,(%esp)
    283a:	e8 a3 14 00 00       	call   3ce2 <open>
  if(fd < 0){
    283f:	85 c0                	test   %eax,%eax
      exit();
    }
  }
  close(fd);

  fd = open("bigfile", 0);
    2841:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2843:	0f 88 f4 00 00 00    	js     293d <bigfile+0x1ad>
    2849:	31 db                	xor    %ebx,%ebx
    284b:	31 ff                	xor    %edi,%edi
    284d:	eb 2f                	jmp    287e <bigfile+0xee>
    284f:	90                   	nop
      printf(1, "read bigfile failed\n");
      exit();
    }
    if(cc == 0)
      break;
    if(cc != 300){
    2850:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2855:	0f 85 97 00 00 00    	jne    28f2 <bigfile+0x162>
      printf(1, "short read bigfile\n");
      exit();
    }
    if(buf[0] != i/2 || buf[299] != i/2){
    285b:	0f be 05 c0 89 00 00 	movsbl 0x89c0,%eax
    2862:	89 fa                	mov    %edi,%edx
    2864:	d1 fa                	sar    %edx
    2866:	39 d0                	cmp    %edx,%eax
    2868:	75 6f                	jne    28d9 <bigfile+0x149>
    286a:	0f be 15 eb 8a 00 00 	movsbl 0x8aeb,%edx
    2871:	39 d0                	cmp    %edx,%eax
    2873:	75 64                	jne    28d9 <bigfile+0x149>
      printf(1, "read bigfile wrong data\n");
      exit();
    }
    total += cc;
    2875:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  if(fd < 0){
    printf(1, "cannot open bigfile\n");
    exit();
  }
  total = 0;
  for(i = 0; ; i++){
    287b:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    287e:	c7 44 24 08 2c 01 00 	movl   $0x12c,0x8(%esp)
    2885:	00 
    2886:	c7 44 24 04 c0 89 00 	movl   $0x89c0,0x4(%esp)
    288d:	00 
    288e:	89 34 24             	mov    %esi,(%esp)
    2891:	e8 24 14 00 00       	call   3cba <read>
    if(cc < 0){
    2896:	85 c0                	test   %eax,%eax
    2898:	78 71                	js     290b <bigfile+0x17b>
      printf(1, "read bigfile failed\n");
      exit();
    }
    if(cc == 0)
    289a:	75 b4                	jne    2850 <bigfile+0xc0>
      printf(1, "read bigfile wrong data\n");
      exit();
    }
    total += cc;
  }
  close(fd);
    289c:	89 34 24             	mov    %esi,(%esp)
    289f:	90                   	nop
    28a0:	e8 25 14 00 00       	call   3cca <close>
  if(total != 20*600){
    28a5:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    28ab:	0f 85 be 00 00 00    	jne    296f <bigfile+0x1df>
    printf(1, "read bigfile wrong total\n");
    exit();
  }
  unlink("bigfile");
    28b1:	c7 04 24 30 4c 00 00 	movl   $0x4c30,(%esp)
    28b8:	e8 35 14 00 00       	call   3cf2 <unlink>

  printf(1, "bigfile test ok\n");
    28bd:	c7 44 24 04 bf 4c 00 	movl   $0x4cbf,0x4(%esp)
    28c4:	00 
    28c5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    28cc:	e8 2f 15 00 00       	call   3e00 <printf>
}
    28d1:	83 c4 1c             	add    $0x1c,%esp
    28d4:	5b                   	pop    %ebx
    28d5:	5e                   	pop    %esi
    28d6:	5f                   	pop    %edi
    28d7:	5d                   	pop    %ebp
    28d8:	c3                   	ret    
    if(cc != 300){
      printf(1, "short read bigfile\n");
      exit();
    }
    if(buf[0] != i/2 || buf[299] != i/2){
      printf(1, "read bigfile wrong data\n");
    28d9:	c7 44 24 04 8c 4c 00 	movl   $0x4c8c,0x4(%esp)
    28e0:	00 
    28e1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    28e8:	e8 13 15 00 00       	call   3e00 <printf>
      exit();
    28ed:	e8 b0 13 00 00       	call   3ca2 <exit>
      exit();
    }
    if(cc == 0)
      break;
    if(cc != 300){
      printf(1, "short read bigfile\n");
    28f2:	c7 44 24 04 78 4c 00 	movl   $0x4c78,0x4(%esp)
    28f9:	00 
    28fa:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2901:	e8 fa 14 00 00       	call   3e00 <printf>
      exit();
    2906:	e8 97 13 00 00       	call   3ca2 <exit>
  }
  total = 0;
  for(i = 0; ; i++){
    cc = read(fd, buf, 300);
    if(cc < 0){
      printf(1, "read bigfile failed\n");
    290b:	c7 44 24 04 63 4c 00 	movl   $0x4c63,0x4(%esp)
    2912:	00 
    2913:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    291a:	e8 e1 14 00 00       	call   3e00 <printf>
      exit();
    291f:	e8 7e 13 00 00       	call   3ca2 <exit>
    exit();
  }
  for(i = 0; i < 20; i++){
    memset(buf, i, 600);
    if(write(fd, buf, 600) != 600){
      printf(1, "write bigfile failed\n");
    2924:	c7 44 24 04 38 4c 00 	movl   $0x4c38,0x4(%esp)
    292b:	00 
    292c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2933:	e8 c8 14 00 00       	call   3e00 <printf>
      exit();
    2938:	e8 65 13 00 00       	call   3ca2 <exit>
  }
  close(fd);

  fd = open("bigfile", 0);
  if(fd < 0){
    printf(1, "cannot open bigfile\n");
    293d:	c7 44 24 04 4e 4c 00 	movl   $0x4c4e,0x4(%esp)
    2944:	00 
    2945:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    294c:	e8 af 14 00 00       	call   3e00 <printf>
    exit();
    2951:	e8 4c 13 00 00       	call   3ca2 <exit>
  printf(1, "bigfile test\n");

  unlink("bigfile");
  fd = open("bigfile", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "cannot create bigfile");
    2956:	c7 44 24 04 22 4c 00 	movl   $0x4c22,0x4(%esp)
    295d:	00 
    295e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2965:	e8 96 14 00 00       	call   3e00 <printf>
    exit();
    296a:	e8 33 13 00 00       	call   3ca2 <exit>
    }
    total += cc;
  }
  close(fd);
  if(total != 20*600){
    printf(1, "read bigfile wrong total\n");
    296f:	c7 44 24 04 a5 4c 00 	movl   $0x4ca5,0x4(%esp)
    2976:	00 
    2977:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    297e:	e8 7d 14 00 00       	call   3e00 <printf>
    exit();
    2983:	e8 1a 13 00 00       	call   3ca2 <exit>
    2988:	90                   	nop
    2989:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002990 <fourteen>:
  printf(1, "bigfile test ok\n");
}

void
fourteen(void)
{
    2990:	55                   	push   %ebp
    2991:	89 e5                	mov    %esp,%ebp
    2993:	83 ec 18             	sub    $0x18,%esp
  int fd;

  // DIRSIZ is 14.
  printf(1, "fourteen test\n");
    2996:	c7 44 24 04 d0 4c 00 	movl   $0x4cd0,0x4(%esp)
    299d:	00 
    299e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    29a5:	e8 56 14 00 00       	call   3e00 <printf>

  if(mkdir("12345678901234") != 0){
    29aa:	c7 04 24 0b 4d 00 00 	movl   $0x4d0b,(%esp)
    29b1:	e8 54 13 00 00       	call   3d0a <mkdir>
    29b6:	85 c0                	test   %eax,%eax
    29b8:	0f 85 92 00 00 00    	jne    2a50 <fourteen+0xc0>
    printf(1, "mkdir 12345678901234 failed\n");
    exit();
  }
  if(mkdir("12345678901234/123456789012345") != 0){
    29be:	c7 04 24 c8 54 00 00 	movl   $0x54c8,(%esp)
    29c5:	e8 40 13 00 00       	call   3d0a <mkdir>
    29ca:	85 c0                	test   %eax,%eax
    29cc:	0f 85 fb 00 00 00    	jne    2acd <fourteen+0x13d>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    exit();
  }
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    29d2:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    29d9:	00 
    29da:	c7 04 24 18 55 00 00 	movl   $0x5518,(%esp)
    29e1:	e8 fc 12 00 00       	call   3ce2 <open>
  if(fd < 0){
    29e6:	85 c0                	test   %eax,%eax
    29e8:	0f 88 c6 00 00 00    	js     2ab4 <fourteen+0x124>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    exit();
  }
  close(fd);
    29ee:	89 04 24             	mov    %eax,(%esp)
    29f1:	e8 d4 12 00 00       	call   3cca <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    29f6:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    29fd:	00 
    29fe:	c7 04 24 88 55 00 00 	movl   $0x5588,(%esp)
    2a05:	e8 d8 12 00 00       	call   3ce2 <open>
  if(fd < 0){
    2a0a:	85 c0                	test   %eax,%eax
    2a0c:	0f 88 89 00 00 00    	js     2a9b <fourteen+0x10b>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    exit();
  }
  close(fd);
    2a12:	89 04 24             	mov    %eax,(%esp)
    2a15:	e8 b0 12 00 00       	call   3cca <close>

  if(mkdir("12345678901234/12345678901234") == 0){
    2a1a:	c7 04 24 fc 4c 00 00 	movl   $0x4cfc,(%esp)
    2a21:	e8 e4 12 00 00       	call   3d0a <mkdir>
    2a26:	85 c0                	test   %eax,%eax
    2a28:	74 58                	je     2a82 <fourteen+0xf2>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    exit();
  }
  if(mkdir("123456789012345/12345678901234") == 0){
    2a2a:	c7 04 24 24 56 00 00 	movl   $0x5624,(%esp)
    2a31:	e8 d4 12 00 00       	call   3d0a <mkdir>
    2a36:	85 c0                	test   %eax,%eax
    2a38:	74 2f                	je     2a69 <fourteen+0xd9>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    exit();
  }

  printf(1, "fourteen ok\n");
    2a3a:	c7 44 24 04 1a 4d 00 	movl   $0x4d1a,0x4(%esp)
    2a41:	00 
    2a42:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2a49:	e8 b2 13 00 00       	call   3e00 <printf>
}
    2a4e:	c9                   	leave  
    2a4f:	c3                   	ret    

  // DIRSIZ is 14.
  printf(1, "fourteen test\n");

  if(mkdir("12345678901234") != 0){
    printf(1, "mkdir 12345678901234 failed\n");
    2a50:	c7 44 24 04 df 4c 00 	movl   $0x4cdf,0x4(%esp)
    2a57:	00 
    2a58:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2a5f:	e8 9c 13 00 00       	call   3e00 <printf>
    exit();
    2a64:	e8 39 12 00 00       	call   3ca2 <exit>
  if(mkdir("12345678901234/12345678901234") == 0){
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    exit();
  }
  if(mkdir("123456789012345/12345678901234") == 0){
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    2a69:	c7 44 24 04 44 56 00 	movl   $0x5644,0x4(%esp)
    2a70:	00 
    2a71:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2a78:	e8 83 13 00 00       	call   3e00 <printf>
    exit();
    2a7d:	e8 20 12 00 00       	call   3ca2 <exit>
    exit();
  }
  close(fd);

  if(mkdir("12345678901234/12345678901234") == 0){
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    2a82:	c7 44 24 04 f4 55 00 	movl   $0x55f4,0x4(%esp)
    2a89:	00 
    2a8a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2a91:	e8 6a 13 00 00       	call   3e00 <printf>
    exit();
    2a96:	e8 07 12 00 00       	call   3ca2 <exit>
    exit();
  }
  close(fd);
  fd = open("12345678901234/12345678901234/12345678901234", 0);
  if(fd < 0){
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    2a9b:	c7 44 24 04 b8 55 00 	movl   $0x55b8,0x4(%esp)
    2aa2:	00 
    2aa3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2aaa:	e8 51 13 00 00       	call   3e00 <printf>
    exit();
    2aaf:	e8 ee 11 00 00       	call   3ca2 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    exit();
  }
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
  if(fd < 0){
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    2ab4:	c7 44 24 04 48 55 00 	movl   $0x5548,0x4(%esp)
    2abb:	00 
    2abc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ac3:	e8 38 13 00 00       	call   3e00 <printf>
    exit();
    2ac8:	e8 d5 11 00 00       	call   3ca2 <exit>
  if(mkdir("12345678901234") != 0){
    printf(1, "mkdir 12345678901234 failed\n");
    exit();
  }
  if(mkdir("12345678901234/123456789012345") != 0){
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    2acd:	c7 44 24 04 e8 54 00 	movl   $0x54e8,0x4(%esp)
    2ad4:	00 
    2ad5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2adc:	e8 1f 13 00 00       	call   3e00 <printf>
    exit();
    2ae1:	e8 bc 11 00 00       	call   3ca2 <exit>
    2ae6:	8d 76 00             	lea    0x0(%esi),%esi
    2ae9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002af0 <rmdot>:
  printf(1, "fourteen ok\n");
}

void
rmdot(void)
{
    2af0:	55                   	push   %ebp
    2af1:	89 e5                	mov    %esp,%ebp
    2af3:	83 ec 18             	sub    $0x18,%esp
  printf(1, "rmdot test\n");
    2af6:	c7 44 24 04 27 4d 00 	movl   $0x4d27,0x4(%esp)
    2afd:	00 
    2afe:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b05:	e8 f6 12 00 00       	call   3e00 <printf>
  if(mkdir("dots") != 0){
    2b0a:	c7 04 24 33 4d 00 00 	movl   $0x4d33,(%esp)
    2b11:	e8 f4 11 00 00       	call   3d0a <mkdir>
    2b16:	85 c0                	test   %eax,%eax
    2b18:	0f 85 9a 00 00 00    	jne    2bb8 <rmdot+0xc8>
    printf(1, "mkdir dots failed\n");
    exit();
  }
  if(chdir("dots") != 0){
    2b1e:	c7 04 24 33 4d 00 00 	movl   $0x4d33,(%esp)
    2b25:	e8 e8 11 00 00       	call   3d12 <chdir>
    2b2a:	85 c0                	test   %eax,%eax
    2b2c:	0f 85 35 01 00 00    	jne    2c67 <rmdot+0x177>
    printf(1, "chdir dots failed\n");
    exit();
  }
  if(unlink(".") == 0){
    2b32:	c7 04 24 de 49 00 00 	movl   $0x49de,(%esp)
    2b39:	e8 b4 11 00 00       	call   3cf2 <unlink>
    2b3e:	85 c0                	test   %eax,%eax
    2b40:	0f 84 08 01 00 00    	je     2c4e <rmdot+0x15e>
    printf(1, "rm . worked!\n");
    exit();
  }
  if(unlink("..") == 0){
    2b46:	c7 04 24 dd 49 00 00 	movl   $0x49dd,(%esp)
    2b4d:	e8 a0 11 00 00       	call   3cf2 <unlink>
    2b52:	85 c0                	test   %eax,%eax
    2b54:	0f 84 db 00 00 00    	je     2c35 <rmdot+0x145>
    printf(1, "rm .. worked!\n");
    exit();
  }
  if(chdir("/") != 0){
    2b5a:	c7 04 24 b1 41 00 00 	movl   $0x41b1,(%esp)
    2b61:	e8 ac 11 00 00       	call   3d12 <chdir>
    2b66:	85 c0                	test   %eax,%eax
    2b68:	0f 85 ae 00 00 00    	jne    2c1c <rmdot+0x12c>
    printf(1, "chdir / failed\n");
    exit();
  }
  if(unlink("dots/.") == 0){
    2b6e:	c7 04 24 7b 4d 00 00 	movl   $0x4d7b,(%esp)
    2b75:	e8 78 11 00 00       	call   3cf2 <unlink>
    2b7a:	85 c0                	test   %eax,%eax
    2b7c:	0f 84 81 00 00 00    	je     2c03 <rmdot+0x113>
    printf(1, "unlink dots/. worked!\n");
    exit();
  }
  if(unlink("dots/..") == 0){
    2b82:	c7 04 24 99 4d 00 00 	movl   $0x4d99,(%esp)
    2b89:	e8 64 11 00 00       	call   3cf2 <unlink>
    2b8e:	85 c0                	test   %eax,%eax
    2b90:	74 58                	je     2bea <rmdot+0xfa>
    printf(1, "unlink dots/.. worked!\n");
    exit();
  }
  if(unlink("dots") != 0){
    2b92:	c7 04 24 33 4d 00 00 	movl   $0x4d33,(%esp)
    2b99:	e8 54 11 00 00       	call   3cf2 <unlink>
    2b9e:	85 c0                	test   %eax,%eax
    2ba0:	75 2f                	jne    2bd1 <rmdot+0xe1>
    printf(1, "unlink dots failed!\n");
    exit();
  }
  printf(1, "rmdot ok\n");
    2ba2:	c7 44 24 04 ce 4d 00 	movl   $0x4dce,0x4(%esp)
    2ba9:	00 
    2baa:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2bb1:	e8 4a 12 00 00       	call   3e00 <printf>
}
    2bb6:	c9                   	leave  
    2bb7:	c3                   	ret    
void
rmdot(void)
{
  printf(1, "rmdot test\n");
  if(mkdir("dots") != 0){
    printf(1, "mkdir dots failed\n");
    2bb8:	c7 44 24 04 38 4d 00 	movl   $0x4d38,0x4(%esp)
    2bbf:	00 
    2bc0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2bc7:	e8 34 12 00 00       	call   3e00 <printf>
    exit();
    2bcc:	e8 d1 10 00 00       	call   3ca2 <exit>
  if(unlink("dots/..") == 0){
    printf(1, "unlink dots/.. worked!\n");
    exit();
  }
  if(unlink("dots") != 0){
    printf(1, "unlink dots failed!\n");
    2bd1:	c7 44 24 04 b9 4d 00 	movl   $0x4db9,0x4(%esp)
    2bd8:	00 
    2bd9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2be0:	e8 1b 12 00 00       	call   3e00 <printf>
    exit();
    2be5:	e8 b8 10 00 00       	call   3ca2 <exit>
  if(unlink("dots/.") == 0){
    printf(1, "unlink dots/. worked!\n");
    exit();
  }
  if(unlink("dots/..") == 0){
    printf(1, "unlink dots/.. worked!\n");
    2bea:	c7 44 24 04 a1 4d 00 	movl   $0x4da1,0x4(%esp)
    2bf1:	00 
    2bf2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2bf9:	e8 02 12 00 00       	call   3e00 <printf>
    exit();
    2bfe:	e8 9f 10 00 00       	call   3ca2 <exit>
  if(chdir("/") != 0){
    printf(1, "chdir / failed\n");
    exit();
  }
  if(unlink("dots/.") == 0){
    printf(1, "unlink dots/. worked!\n");
    2c03:	c7 44 24 04 82 4d 00 	movl   $0x4d82,0x4(%esp)
    2c0a:	00 
    2c0b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c12:	e8 e9 11 00 00       	call   3e00 <printf>
    exit();
    2c17:	e8 86 10 00 00       	call   3ca2 <exit>
  if(unlink("..") == 0){
    printf(1, "rm .. worked!\n");
    exit();
  }
  if(chdir("/") != 0){
    printf(1, "chdir / failed\n");
    2c1c:	c7 44 24 04 b3 41 00 	movl   $0x41b3,0x4(%esp)
    2c23:	00 
    2c24:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c2b:	e8 d0 11 00 00       	call   3e00 <printf>
    exit();
    2c30:	e8 6d 10 00 00       	call   3ca2 <exit>
  if(unlink(".") == 0){
    printf(1, "rm . worked!\n");
    exit();
  }
  if(unlink("..") == 0){
    printf(1, "rm .. worked!\n");
    2c35:	c7 44 24 04 6c 4d 00 	movl   $0x4d6c,0x4(%esp)
    2c3c:	00 
    2c3d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c44:	e8 b7 11 00 00       	call   3e00 <printf>
    exit();
    2c49:	e8 54 10 00 00       	call   3ca2 <exit>
  if(chdir("dots") != 0){
    printf(1, "chdir dots failed\n");
    exit();
  }
  if(unlink(".") == 0){
    printf(1, "rm . worked!\n");
    2c4e:	c7 44 24 04 5e 4d 00 	movl   $0x4d5e,0x4(%esp)
    2c55:	00 
    2c56:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c5d:	e8 9e 11 00 00       	call   3e00 <printf>
    exit();
    2c62:	e8 3b 10 00 00       	call   3ca2 <exit>
  if(mkdir("dots") != 0){
    printf(1, "mkdir dots failed\n");
    exit();
  }
  if(chdir("dots") != 0){
    printf(1, "chdir dots failed\n");
    2c67:	c7 44 24 04 4b 4d 00 	movl   $0x4d4b,0x4(%esp)
    2c6e:	00 
    2c6f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c76:	e8 85 11 00 00       	call   3e00 <printf>
    exit();
    2c7b:	e8 22 10 00 00       	call   3ca2 <exit>

00002c80 <dirfile>:
  printf(1, "rmdot ok\n");
}

void
dirfile(void)
{
    2c80:	55                   	push   %ebp
    2c81:	89 e5                	mov    %esp,%ebp
    2c83:	53                   	push   %ebx
    2c84:	83 ec 14             	sub    $0x14,%esp
  int fd;

  printf(1, "dir vs file\n");
    2c87:	c7 44 24 04 d8 4d 00 	movl   $0x4dd8,0x4(%esp)
    2c8e:	00 
    2c8f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c96:	e8 65 11 00 00       	call   3e00 <printf>

  fd = open("dirfile", O_CREATE);
    2c9b:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2ca2:	00 
    2ca3:	c7 04 24 e5 4d 00 00 	movl   $0x4de5,(%esp)
    2caa:	e8 33 10 00 00       	call   3ce2 <open>
  if(fd < 0){
    2caf:	85 c0                	test   %eax,%eax
    2cb1:	0f 88 4e 01 00 00    	js     2e05 <dirfile+0x185>
    printf(1, "create dirfile failed\n");
    exit();
  }
  close(fd);
    2cb7:	89 04 24             	mov    %eax,(%esp)
    2cba:	e8 0b 10 00 00       	call   3cca <close>
  if(chdir("dirfile") == 0){
    2cbf:	c7 04 24 e5 4d 00 00 	movl   $0x4de5,(%esp)
    2cc6:	e8 47 10 00 00       	call   3d12 <chdir>
    2ccb:	85 c0                	test   %eax,%eax
    2ccd:	0f 84 19 01 00 00    	je     2dec <dirfile+0x16c>
    printf(1, "chdir dirfile succeeded!\n");
    exit();
  }
  fd = open("dirfile/xx", 0);
    2cd3:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2cda:	00 
    2cdb:	c7 04 24 1e 4e 00 00 	movl   $0x4e1e,(%esp)
    2ce2:	e8 fb 0f 00 00       	call   3ce2 <open>
  if(fd >= 0){
    2ce7:	85 c0                	test   %eax,%eax
    2ce9:	0f 89 e4 00 00 00    	jns    2dd3 <dirfile+0x153>
    printf(1, "create dirfile/xx succeeded!\n");
    exit();
  }
  fd = open("dirfile/xx", O_CREATE);
    2cef:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2cf6:	00 
    2cf7:	c7 04 24 1e 4e 00 00 	movl   $0x4e1e,(%esp)
    2cfe:	e8 df 0f 00 00       	call   3ce2 <open>
  if(fd >= 0){
    2d03:	85 c0                	test   %eax,%eax
    2d05:	0f 89 c8 00 00 00    	jns    2dd3 <dirfile+0x153>
    printf(1, "create dirfile/xx succeeded!\n");
    exit();
  }
  if(mkdir("dirfile/xx") == 0){
    2d0b:	c7 04 24 1e 4e 00 00 	movl   $0x4e1e,(%esp)
    2d12:	e8 f3 0f 00 00       	call   3d0a <mkdir>
    2d17:	85 c0                	test   %eax,%eax
    2d19:	0f 84 7c 01 00 00    	je     2e9b <dirfile+0x21b>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    exit();
  }
  if(unlink("dirfile/xx") == 0){
    2d1f:	c7 04 24 1e 4e 00 00 	movl   $0x4e1e,(%esp)
    2d26:	e8 c7 0f 00 00       	call   3cf2 <unlink>
    2d2b:	85 c0                	test   %eax,%eax
    2d2d:	0f 84 4f 01 00 00    	je     2e82 <dirfile+0x202>
    printf(1, "unlink dirfile/xx succeeded!\n");
    exit();
  }
  if(link("README", "dirfile/xx") == 0){
    2d33:	c7 44 24 04 1e 4e 00 	movl   $0x4e1e,0x4(%esp)
    2d3a:	00 
    2d3b:	c7 04 24 82 4e 00 00 	movl   $0x4e82,(%esp)
    2d42:	e8 bb 0f 00 00       	call   3d02 <link>
    2d47:	85 c0                	test   %eax,%eax
    2d49:	0f 84 1a 01 00 00    	je     2e69 <dirfile+0x1e9>
    printf(1, "link to dirfile/xx succeeded!\n");
    exit();
  }
  if(unlink("dirfile") != 0){
    2d4f:	c7 04 24 e5 4d 00 00 	movl   $0x4de5,(%esp)
    2d56:	e8 97 0f 00 00       	call   3cf2 <unlink>
    2d5b:	85 c0                	test   %eax,%eax
    2d5d:	0f 85 ed 00 00 00    	jne    2e50 <dirfile+0x1d0>
    printf(1, "unlink dirfile failed!\n");
    exit();
  }

  fd = open(".", O_RDWR);
    2d63:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    2d6a:	00 
    2d6b:	c7 04 24 de 49 00 00 	movl   $0x49de,(%esp)
    2d72:	e8 6b 0f 00 00       	call   3ce2 <open>
  if(fd >= 0){
    2d77:	85 c0                	test   %eax,%eax
    2d79:	0f 89 b8 00 00 00    	jns    2e37 <dirfile+0x1b7>
    printf(1, "open . for writing succeeded!\n");
    exit();
  }
  fd = open(".", 0);
    2d7f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2d86:	00 
    2d87:	c7 04 24 de 49 00 00 	movl   $0x49de,(%esp)
    2d8e:	e8 4f 0f 00 00       	call   3ce2 <open>
  if(write(fd, "x", 1) > 0){
    2d93:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    2d9a:	00 
    2d9b:	c7 44 24 04 c1 4a 00 	movl   $0x4ac1,0x4(%esp)
    2da2:	00 
    2da3:	89 04 24             	mov    %eax,(%esp)
  fd = open(".", O_RDWR);
  if(fd >= 0){
    printf(1, "open . for writing succeeded!\n");
    exit();
  }
  fd = open(".", 0);
    2da6:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    2da8:	e8 15 0f 00 00       	call   3cc2 <write>
    2dad:	85 c0                	test   %eax,%eax
    2daf:	7f 6d                	jg     2e1e <dirfile+0x19e>
    printf(1, "write . succeeded!\n");
    exit();
  }
  close(fd);
    2db1:	89 1c 24             	mov    %ebx,(%esp)
    2db4:	e8 11 0f 00 00       	call   3cca <close>

  printf(1, "dir vs file OK\n");
    2db9:	c7 44 24 04 b5 4e 00 	movl   $0x4eb5,0x4(%esp)
    2dc0:	00 
    2dc1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2dc8:	e8 33 10 00 00       	call   3e00 <printf>
}
    2dcd:	83 c4 14             	add    $0x14,%esp
    2dd0:	5b                   	pop    %ebx
    2dd1:	5d                   	pop    %ebp
    2dd2:	c3                   	ret    
    printf(1, "chdir dirfile succeeded!\n");
    exit();
  }
  fd = open("dirfile/xx", 0);
  if(fd >= 0){
    printf(1, "create dirfile/xx succeeded!\n");
    2dd3:	c7 44 24 04 29 4e 00 	movl   $0x4e29,0x4(%esp)
    2dda:	00 
    2ddb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2de2:	e8 19 10 00 00       	call   3e00 <printf>
    exit();
    2de7:	e8 b6 0e 00 00       	call   3ca2 <exit>
    printf(1, "create dirfile failed\n");
    exit();
  }
  close(fd);
  if(chdir("dirfile") == 0){
    printf(1, "chdir dirfile succeeded!\n");
    2dec:	c7 44 24 04 04 4e 00 	movl   $0x4e04,0x4(%esp)
    2df3:	00 
    2df4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2dfb:	e8 00 10 00 00       	call   3e00 <printf>
    exit();
    2e00:	e8 9d 0e 00 00       	call   3ca2 <exit>

  printf(1, "dir vs file\n");

  fd = open("dirfile", O_CREATE);
  if(fd < 0){
    printf(1, "create dirfile failed\n");
    2e05:	c7 44 24 04 ed 4d 00 	movl   $0x4ded,0x4(%esp)
    2e0c:	00 
    2e0d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e14:	e8 e7 0f 00 00       	call   3e00 <printf>
    exit();
    2e19:	e8 84 0e 00 00       	call   3ca2 <exit>
    printf(1, "open . for writing succeeded!\n");
    exit();
  }
  fd = open(".", 0);
  if(write(fd, "x", 1) > 0){
    printf(1, "write . succeeded!\n");
    2e1e:	c7 44 24 04 a1 4e 00 	movl   $0x4ea1,0x4(%esp)
    2e25:	00 
    2e26:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e2d:	e8 ce 0f 00 00       	call   3e00 <printf>
    exit();
    2e32:	e8 6b 0e 00 00       	call   3ca2 <exit>
    exit();
  }

  fd = open(".", O_RDWR);
  if(fd >= 0){
    printf(1, "open . for writing succeeded!\n");
    2e37:	c7 44 24 04 98 56 00 	movl   $0x5698,0x4(%esp)
    2e3e:	00 
    2e3f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e46:	e8 b5 0f 00 00       	call   3e00 <printf>
    exit();
    2e4b:	e8 52 0e 00 00       	call   3ca2 <exit>
  if(link("README", "dirfile/xx") == 0){
    printf(1, "link to dirfile/xx succeeded!\n");
    exit();
  }
  if(unlink("dirfile") != 0){
    printf(1, "unlink dirfile failed!\n");
    2e50:	c7 44 24 04 89 4e 00 	movl   $0x4e89,0x4(%esp)
    2e57:	00 
    2e58:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e5f:	e8 9c 0f 00 00       	call   3e00 <printf>
    exit();
    2e64:	e8 39 0e 00 00       	call   3ca2 <exit>
  if(unlink("dirfile/xx") == 0){
    printf(1, "unlink dirfile/xx succeeded!\n");
    exit();
  }
  if(link("README", "dirfile/xx") == 0){
    printf(1, "link to dirfile/xx succeeded!\n");
    2e69:	c7 44 24 04 78 56 00 	movl   $0x5678,0x4(%esp)
    2e70:	00 
    2e71:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e78:	e8 83 0f 00 00       	call   3e00 <printf>
    exit();
    2e7d:	e8 20 0e 00 00       	call   3ca2 <exit>
  if(mkdir("dirfile/xx") == 0){
    printf(1, "mkdir dirfile/xx succeeded!\n");
    exit();
  }
  if(unlink("dirfile/xx") == 0){
    printf(1, "unlink dirfile/xx succeeded!\n");
    2e82:	c7 44 24 04 64 4e 00 	movl   $0x4e64,0x4(%esp)
    2e89:	00 
    2e8a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e91:	e8 6a 0f 00 00       	call   3e00 <printf>
    exit();
    2e96:	e8 07 0e 00 00       	call   3ca2 <exit>
  if(fd >= 0){
    printf(1, "create dirfile/xx succeeded!\n");
    exit();
  }
  if(mkdir("dirfile/xx") == 0){
    printf(1, "mkdir dirfile/xx succeeded!\n");
    2e9b:	c7 44 24 04 47 4e 00 	movl   $0x4e47,0x4(%esp)
    2ea2:	00 
    2ea3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2eaa:	e8 51 0f 00 00       	call   3e00 <printf>
    exit();
    2eaf:	e8 ee 0d 00 00       	call   3ca2 <exit>
    2eb4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    2eba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00002ec0 <iref>:
}

// test that iput() is called at the end of _namei()
void
iref(void)
{
    2ec0:	55                   	push   %ebp
    2ec1:	89 e5                	mov    %esp,%ebp
    2ec3:	53                   	push   %ebx
  int i, fd;

  printf(1, "empty file name\n");
    2ec4:	bb 33 00 00 00       	mov    $0x33,%ebx
}

// test that iput() is called at the end of _namei()
void
iref(void)
{
    2ec9:	83 ec 14             	sub    $0x14,%esp
  int i, fd;

  printf(1, "empty file name\n");
    2ecc:	c7 44 24 04 c5 4e 00 	movl   $0x4ec5,0x4(%esp)
    2ed3:	00 
    2ed4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2edb:	e8 20 0f 00 00       	call   3e00 <printf>

  // the 50 is NINODE
  for(i = 0; i < 50 + 1; i++){
    if(mkdir("irefd") != 0){
    2ee0:	c7 04 24 d6 4e 00 00 	movl   $0x4ed6,(%esp)
    2ee7:	e8 1e 0e 00 00       	call   3d0a <mkdir>
    2eec:	85 c0                	test   %eax,%eax
    2eee:	0f 85 af 00 00 00    	jne    2fa3 <iref+0xe3>
      printf(1, "mkdir irefd failed\n");
      exit();
    }
    if(chdir("irefd") != 0){
    2ef4:	c7 04 24 d6 4e 00 00 	movl   $0x4ed6,(%esp)
    2efb:	e8 12 0e 00 00       	call   3d12 <chdir>
    2f00:	85 c0                	test   %eax,%eax
    2f02:	0f 85 b4 00 00 00    	jne    2fbc <iref+0xfc>
      printf(1, "chdir irefd failed\n");
      exit();
    }

    mkdir("");
    2f08:	c7 04 24 8b 45 00 00 	movl   $0x458b,(%esp)
    2f0f:	e8 f6 0d 00 00       	call   3d0a <mkdir>
    link("README", "");
    2f14:	c7 44 24 04 8b 45 00 	movl   $0x458b,0x4(%esp)
    2f1b:	00 
    2f1c:	c7 04 24 82 4e 00 00 	movl   $0x4e82,(%esp)
    2f23:	e8 da 0d 00 00       	call   3d02 <link>
    fd = open("", O_CREATE);
    2f28:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2f2f:	00 
    2f30:	c7 04 24 8b 45 00 00 	movl   $0x458b,(%esp)
    2f37:	e8 a6 0d 00 00       	call   3ce2 <open>
    if(fd >= 0)
    2f3c:	85 c0                	test   %eax,%eax
    2f3e:	78 08                	js     2f48 <iref+0x88>
      close(fd);
    2f40:	89 04 24             	mov    %eax,(%esp)
    2f43:	e8 82 0d 00 00       	call   3cca <close>
    fd = open("xx", O_CREATE);
    2f48:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2f4f:	00 
    2f50:	c7 04 24 c0 4a 00 00 	movl   $0x4ac0,(%esp)
    2f57:	e8 86 0d 00 00       	call   3ce2 <open>
    if(fd >= 0)
    2f5c:	85 c0                	test   %eax,%eax
    2f5e:	78 08                	js     2f68 <iref+0xa8>
      close(fd);
    2f60:	89 04 24             	mov    %eax,(%esp)
    2f63:	e8 62 0d 00 00       	call   3cca <close>
    unlink("xx");
    2f68:	c7 04 24 c0 4a 00 00 	movl   $0x4ac0,(%esp)
    2f6f:	e8 7e 0d 00 00       	call   3cf2 <unlink>
  int i, fd;

  printf(1, "empty file name\n");

  // the 50 is NINODE
  for(i = 0; i < 50 + 1; i++){
    2f74:	83 eb 01             	sub    $0x1,%ebx
    2f77:	0f 85 63 ff ff ff    	jne    2ee0 <iref+0x20>
    if(fd >= 0)
      close(fd);
    unlink("xx");
  }

  chdir("/");
    2f7d:	c7 04 24 b1 41 00 00 	movl   $0x41b1,(%esp)
    2f84:	e8 89 0d 00 00       	call   3d12 <chdir>
  printf(1, "empty file name OK\n");
    2f89:	c7 44 24 04 04 4f 00 	movl   $0x4f04,0x4(%esp)
    2f90:	00 
    2f91:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f98:	e8 63 0e 00 00       	call   3e00 <printf>
}
    2f9d:	83 c4 14             	add    $0x14,%esp
    2fa0:	5b                   	pop    %ebx
    2fa1:	5d                   	pop    %ebp
    2fa2:	c3                   	ret    
  printf(1, "empty file name\n");

  // the 50 is NINODE
  for(i = 0; i < 50 + 1; i++){
    if(mkdir("irefd") != 0){
      printf(1, "mkdir irefd failed\n");
    2fa3:	c7 44 24 04 dc 4e 00 	movl   $0x4edc,0x4(%esp)
    2faa:	00 
    2fab:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2fb2:	e8 49 0e 00 00       	call   3e00 <printf>
      exit();
    2fb7:	e8 e6 0c 00 00       	call   3ca2 <exit>
    }
    if(chdir("irefd") != 0){
      printf(1, "chdir irefd failed\n");
    2fbc:	c7 44 24 04 f0 4e 00 	movl   $0x4ef0,0x4(%esp)
    2fc3:	00 
    2fc4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2fcb:	e8 30 0e 00 00       	call   3e00 <printf>
      exit();
    2fd0:	e8 cd 0c 00 00       	call   3ca2 <exit>
    2fd5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2fd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002fe0 <forktest>:
// test that fork fails gracefully
// the forktest binary also does this, but it runs out of proc entries first.
// inside the bigger usertests binary, we run out of memory first.
void
forktest(void)
{
    2fe0:	55                   	push   %ebp
    2fe1:	89 e5                	mov    %esp,%ebp
    2fe3:	53                   	push   %ebx
  int n, pid;

  printf(1, "fork test\n");

  for(n=0; n<1000; n++){
    2fe4:	31 db                	xor    %ebx,%ebx
// test that fork fails gracefully
// the forktest binary also does this, but it runs out of proc entries first.
// inside the bigger usertests binary, we run out of memory first.
void
forktest(void)
{
    2fe6:	83 ec 14             	sub    $0x14,%esp
  int n, pid;

  printf(1, "fork test\n");
    2fe9:	c7 44 24 04 18 4f 00 	movl   $0x4f18,0x4(%esp)
    2ff0:	00 
    2ff1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ff8:	e8 03 0e 00 00       	call   3e00 <printf>
    2ffd:	eb 13                	jmp    3012 <forktest+0x32>
    2fff:	90                   	nop

  for(n=0; n<1000; n++){
    pid = fork();
    if(pid < 0)
      break;
    if(pid == 0)
    3000:	0f 84 87 00 00 00    	je     308d <forktest+0xad>
{
  int n, pid;

  printf(1, "fork test\n");

  for(n=0; n<1000; n++){
    3006:	83 c3 01             	add    $0x1,%ebx
    3009:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    300f:	90                   	nop
    3010:	74 4e                	je     3060 <forktest+0x80>
    pid = fork();
    3012:	e8 83 0c 00 00       	call   3c9a <fork>
    if(pid < 0)
    3017:	85 c0                	test   %eax,%eax
    3019:	79 e5                	jns    3000 <forktest+0x20>
  if(n == 1000){
    printf(1, "fork claimed to work 1000 times!\n");
    exit();
  }

  for(; n > 0; n--){
    301b:	85 db                	test   %ebx,%ebx
    301d:	8d 76 00             	lea    0x0(%esi),%esi
    3020:	74 15                	je     3037 <forktest+0x57>
    3022:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(wait() < 0){
    3028:	e8 7d 0c 00 00       	call   3caa <wait>
    302d:	85 c0                	test   %eax,%eax
    302f:	90                   	nop
    3030:	78 47                	js     3079 <forktest+0x99>
  if(n == 1000){
    printf(1, "fork claimed to work 1000 times!\n");
    exit();
  }

  for(; n > 0; n--){
    3032:	83 eb 01             	sub    $0x1,%ebx
    3035:	75 f1                	jne    3028 <forktest+0x48>
      printf(1, "wait stopped early\n");
      exit();
    }
  }

  if(wait() != -1){
    3037:	e8 6e 0c 00 00       	call   3caa <wait>
    303c:	83 f8 ff             	cmp    $0xffffffff,%eax
    303f:	90                   	nop
    3040:	75 50                	jne    3092 <forktest+0xb2>
    printf(1, "wait got too many\n");
    exit();
  }

  printf(1, "fork test OK\n");
    3042:	c7 44 24 04 4a 4f 00 	movl   $0x4f4a,0x4(%esp)
    3049:	00 
    304a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3051:	e8 aa 0d 00 00       	call   3e00 <printf>
}
    3056:	83 c4 14             	add    $0x14,%esp
    3059:	5b                   	pop    %ebx
    305a:	5d                   	pop    %ebp
    305b:	c3                   	ret    
    305c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid == 0)
      exit();
  }

  if(n == 1000){
    printf(1, "fork claimed to work 1000 times!\n");
    3060:	c7 44 24 04 b8 56 00 	movl   $0x56b8,0x4(%esp)
    3067:	00 
    3068:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    306f:	e8 8c 0d 00 00       	call   3e00 <printf>
    exit();
    3074:	e8 29 0c 00 00       	call   3ca2 <exit>
  }

  for(; n > 0; n--){
    if(wait() < 0){
      printf(1, "wait stopped early\n");
    3079:	c7 44 24 04 23 4f 00 	movl   $0x4f23,0x4(%esp)
    3080:	00 
    3081:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3088:	e8 73 0d 00 00       	call   3e00 <printf>
      exit();
    308d:	e8 10 0c 00 00       	call   3ca2 <exit>
    }
  }

  if(wait() != -1){
    printf(1, "wait got too many\n");
    3092:	c7 44 24 04 37 4f 00 	movl   $0x4f37,0x4(%esp)
    3099:	00 
    309a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30a1:	e8 5a 0d 00 00       	call   3e00 <printf>
    exit();
    30a6:	e8 f7 0b 00 00       	call   3ca2 <exit>
    30ab:	90                   	nop
    30ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000030b0 <sbrktest>:
  printf(1, "fork test OK\n");
}

void
sbrktest(void)
{
    30b0:	55                   	push   %ebp
    30b1:	89 e5                	mov    %esp,%ebp
    30b3:	57                   	push   %edi
    30b4:	56                   	push   %esi
  oldbrk = sbrk(0);

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    30b5:	31 f6                	xor    %esi,%esi
  printf(1, "fork test OK\n");
}

void
sbrktest(void)
{
    30b7:	53                   	push   %ebx
    30b8:	83 ec 6c             	sub    $0x6c,%esp
  int fds[2], pid, pids[10], ppid;
  char *a, *b, *c, *lastaddr, *oldbrk, *p, scratch;
  uint amt;

  printf(stdout, "sbrk test\n");
    30bb:	a1 e4 61 00 00       	mov    0x61e4,%eax
    30c0:	c7 44 24 04 58 4f 00 	movl   $0x4f58,0x4(%esp)
    30c7:	00 
    30c8:	89 04 24             	mov    %eax,(%esp)
    30cb:	e8 30 0d 00 00       	call   3e00 <printf>
  oldbrk = sbrk(0);
    30d0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30d7:	e8 4e 0c 00 00       	call   3d2a <sbrk>

  // can one sbrk() less than a page?
  a = sbrk(0);
    30dc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  int fds[2], pid, pids[10], ppid;
  char *a, *b, *c, *lastaddr, *oldbrk, *p, scratch;
  uint amt;

  printf(stdout, "sbrk test\n");
  oldbrk = sbrk(0);
    30e3:	89 45 a4             	mov    %eax,-0x5c(%ebp)

  // can one sbrk() less than a page?
  a = sbrk(0);
    30e6:	e8 3f 0c 00 00       	call   3d2a <sbrk>
    30eb:	89 c3                	mov    %eax,%ebx
    30ed:	8d 76 00             	lea    0x0(%esi),%esi
  int i;
  for(i = 0; i < 5000; i++){
    b = sbrk(1);
    30f0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30f7:	e8 2e 0c 00 00       	call   3d2a <sbrk>
    if(b != a){
    30fc:	39 d8                	cmp    %ebx,%eax

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    b = sbrk(1);
    30fe:	89 c7                	mov    %eax,%edi
    if(b != a){
    3100:	0f 85 78 02 00 00    	jne    337e <sbrktest+0x2ce>
  oldbrk = sbrk(0);

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    3106:	83 c6 01             	add    $0x1,%esi
    if(b != a){
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
      exit();
    }
    *b = 1;
    a = b + 1;
    3109:	83 c3 01             	add    $0x1,%ebx
    b = sbrk(1);
    if(b != a){
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
      exit();
    }
    *b = 1;
    310c:	c6 43 ff 01          	movb   $0x1,-0x1(%ebx)
  oldbrk = sbrk(0);

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    3110:	81 fe 88 13 00 00    	cmp    $0x1388,%esi
    3116:	75 d8                	jne    30f0 <sbrktest+0x40>
      exit();
    }
    *b = 1;
    a = b + 1;
  }
  pid = fork();
    3118:	e8 7d 0b 00 00       	call   3c9a <fork>
  if(pid < 0){
    311d:	85 c0                	test   %eax,%eax
      exit();
    }
    *b = 1;
    a = b + 1;
  }
  pid = fork();
    311f:	89 c3                	mov    %eax,%ebx
  if(pid < 0){
    3121:	0f 88 c5 03 00 00    	js     34ec <sbrktest+0x43c>
    printf(stdout, "sbrk test fork failed\n");
    exit();
  }
  c = sbrk(1);
    3127:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    312e:	e8 f7 0b 00 00       	call   3d2a <sbrk>
  c = sbrk(1);
    3133:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    313a:	e8 eb 0b 00 00       	call   3d2a <sbrk>
  if(c != a + 1){
    313f:	8d 57 02             	lea    0x2(%edi),%edx
    3142:	39 d0                	cmp    %edx,%eax
    3144:	0f 85 88 03 00 00    	jne    34d2 <sbrktest+0x422>
    printf(stdout, "sbrk test failed post-fork\n");
    exit();
  }
  if(pid == 0)
    314a:	85 db                	test   %ebx,%ebx
    314c:	0f 84 7b 03 00 00    	je     34cd <sbrktest+0x41d>
    exit();
  wait();
    3152:	e8 53 0b 00 00       	call   3caa <wait>

  // can one grow address space to something big?
#define BIG (100*1024*1024)
  a = sbrk(0);
    3157:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    315e:	e8 c7 0b 00 00       	call   3d2a <sbrk>
  amt = (BIG) - (uint)a;
    3163:	ba 00 00 40 06       	mov    $0x6400000,%edx
    3168:	29 c2                	sub    %eax,%edx
    exit();
  wait();

  // can one grow address space to something big?
#define BIG (100*1024*1024)
  a = sbrk(0);
    316a:	89 c3                	mov    %eax,%ebx
  amt = (BIG) - (uint)a;
  p = sbrk(amt);
    316c:	89 14 24             	mov    %edx,(%esp)
    316f:	e8 b6 0b 00 00       	call   3d2a <sbrk>
  if (p != a) {
    3174:	39 d8                	cmp    %ebx,%eax
    3176:	0f 85 3c 03 00 00    	jne    34b8 <sbrktest+0x408>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    exit();
  }
  lastaddr = (char*) (BIG-1);
  *lastaddr = 99;
    317c:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff

  // can one de-allocate?
  a = sbrk(0);
    3183:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    318a:	e8 9b 0b 00 00       	call   3d2a <sbrk>
  c = sbrk(-4096);
    318f:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  }
  lastaddr = (char*) (BIG-1);
  *lastaddr = 99;

  // can one de-allocate?
  a = sbrk(0);
    3196:	89 c3                	mov    %eax,%ebx
  c = sbrk(-4096);
    3198:	e8 8d 0b 00 00       	call   3d2a <sbrk>
  if(c == (char*)0xffffffff){
    319d:	83 f8 ff             	cmp    $0xffffffff,%eax
    31a0:	0f 84 f8 02 00 00    	je     349e <sbrktest+0x3ee>
    printf(stdout, "sbrk could not deallocate\n");
    exit();
  }
  c = sbrk(0);
    31a6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31ad:	e8 78 0b 00 00       	call   3d2a <sbrk>
  if(c != a - 4096){
    31b2:	8d 93 00 f0 ff ff    	lea    -0x1000(%ebx),%edx
    31b8:	39 d0                	cmp    %edx,%eax
    31ba:	0f 85 bc 02 00 00    	jne    347c <sbrktest+0x3cc>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    exit();
  }

  // can one re-allocate that page?
  a = sbrk(0);
    31c0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31c7:	e8 5e 0b 00 00       	call   3d2a <sbrk>
  c = sbrk(4096);
    31cc:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    exit();
  }

  // can one re-allocate that page?
  a = sbrk(0);
    31d3:	89 c6                	mov    %eax,%esi
  c = sbrk(4096);
    31d5:	e8 50 0b 00 00       	call   3d2a <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    31da:	39 f0                	cmp    %esi,%eax
    exit();
  }

  // can one re-allocate that page?
  a = sbrk(0);
  c = sbrk(4096);
    31dc:	89 c3                	mov    %eax,%ebx
  if(c != a || sbrk(0) != a + 4096){
    31de:	0f 85 76 02 00 00    	jne    345a <sbrktest+0x3aa>
    31e4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31eb:	e8 3a 0b 00 00       	call   3d2a <sbrk>
    31f0:	8d 93 00 10 00 00    	lea    0x1000(%ebx),%edx
    31f6:	39 d0                	cmp    %edx,%eax
    31f8:	0f 85 5c 02 00 00    	jne    345a <sbrktest+0x3aa>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    exit();
  }
  if(*lastaddr == 99){
    31fe:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    3205:	0f 84 35 02 00 00    	je     3440 <sbrktest+0x390>
    // should be zero
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    exit();
  }

  a = sbrk(0);
    320b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3212:	e8 13 0b 00 00       	call   3d2a <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    3217:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    // should be zero
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    exit();
  }

  a = sbrk(0);
    321e:	89 c3                	mov    %eax,%ebx
  c = sbrk(-(sbrk(0) - oldbrk));
    3220:	e8 05 0b 00 00       	call   3d2a <sbrk>
    3225:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
    3228:	29 c1                	sub    %eax,%ecx
    322a:	89 0c 24             	mov    %ecx,(%esp)
    322d:	e8 f8 0a 00 00       	call   3d2a <sbrk>
  if(c != a){
    3232:	39 d8                	cmp    %ebx,%eax
    3234:	0f 85 e4 01 00 00    	jne    341e <sbrktest+0x36e>
    323a:	bb 00 00 00 80       	mov    $0x80000000,%ebx
    323f:	90                   	nop
    exit();
  }

  // can we read the kernel's memory?
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    ppid = getpid();
    3240:	e8 dd 0a 00 00       	call   3d22 <getpid>
    3245:	89 c6                	mov    %eax,%esi
    pid = fork();
    3247:	e8 4e 0a 00 00       	call   3c9a <fork>
    if(pid < 0){
    324c:	85 c0                	test   %eax,%eax
    324e:	0f 88 b0 01 00 00    	js     3404 <sbrktest+0x354>
      printf(stdout, "fork failed\n");
      exit();
    }
    if(pid == 0){
    3254:	0f 84 7d 01 00 00    	je     33d7 <sbrktest+0x327>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    exit();
  }

  // can we read the kernel's memory?
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    325a:	81 c3 50 c3 00 00    	add    $0xc350,%ebx
    if(pid == 0){
      printf(stdout, "oops could read %x = %x\n", a, *a);
      kill(ppid);
      exit();
    }
    wait();
    3260:	e8 45 0a 00 00       	call   3caa <wait>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    exit();
  }

  // can we read the kernel's memory?
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3265:	81 fb 80 84 1e 80    	cmp    $0x801e8480,%ebx
    326b:	75 d3                	jne    3240 <sbrktest+0x190>
    wait();
  }

  // if we run the system out of memory, does it clean up the last
  // failed allocation?
  if(pipe(fds) != 0){
    326d:	8d 45 b8             	lea    -0x48(%ebp),%eax
    3270:	89 04 24             	mov    %eax,(%esp)
    3273:	e8 3a 0a 00 00       	call   3cb2 <pipe>
    3278:	85 c0                	test   %eax,%eax
    327a:	0f 85 3e 01 00 00    	jne    33be <sbrktest+0x30e>
    3280:	8d 5d e8             	lea    -0x18(%ebp),%ebx
    3283:	8d 75 c0             	lea    -0x40(%ebp),%esi
      write(fds[1], "x", 1);
      // sit around until killed
      for(;;) sleep(1000);
    }
    if(pids[i] != -1)
      read(fds[0], &scratch, 1);
    3286:	8d 7d b7             	lea    -0x49(%ebp),%edi
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    exit();
  }
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    if((pids[i] = fork()) == 0){
    3289:	e8 0c 0a 00 00       	call   3c9a <fork>
    328e:	85 c0                	test   %eax,%eax
    3290:	89 06                	mov    %eax,(%esi)
    3292:	0f 84 9f 00 00 00    	je     3337 <sbrktest+0x287>
      sbrk(BIG - (uint)sbrk(0));
      write(fds[1], "x", 1);
      // sit around until killed
      for(;;) sleep(1000);
    }
    if(pids[i] != -1)
    3298:	83 f8 ff             	cmp    $0xffffffff,%eax
    329b:	74 17                	je     32b4 <sbrktest+0x204>
      read(fds[0], &scratch, 1);
    329d:	8b 45 b8             	mov    -0x48(%ebp),%eax
    32a0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    32a7:	00 
    32a8:	89 7c 24 04          	mov    %edi,0x4(%esp)
    32ac:	89 04 24             	mov    %eax,(%esp)
    32af:	e8 06 0a 00 00       	call   3cba <read>
    32b4:	83 c6 04             	add    $0x4,%esi
  // failed allocation?
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    exit();
  }
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    32b7:	39 de                	cmp    %ebx,%esi
    32b9:	75 ce                	jne    3289 <sbrktest+0x1d9>
    if(pids[i] != -1)
      read(fds[0], &scratch, 1);
  }
  // if those failed allocations freed up the pages they did allocate,
  // we'll be able to allocate here
  c = sbrk(4096);
    32bb:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    32c2:	8d 75 c0             	lea    -0x40(%ebp),%esi
    32c5:	e8 60 0a 00 00       	call   3d2a <sbrk>
    32ca:	89 c7                	mov    %eax,%edi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    if(pids[i] == -1)
    32cc:	8b 06                	mov    (%esi),%eax
    32ce:	83 f8 ff             	cmp    $0xffffffff,%eax
    32d1:	74 0d                	je     32e0 <sbrktest+0x230>
      continue;
    kill(pids[i]);
    32d3:	89 04 24             	mov    %eax,(%esp)
    32d6:	e8 f7 09 00 00       	call   3cd2 <kill>
    wait();
    32db:	e8 ca 09 00 00       	call   3caa <wait>
    32e0:	83 c6 04             	add    $0x4,%esi
      read(fds[0], &scratch, 1);
  }
  // if those failed allocations freed up the pages they did allocate,
  // we'll be able to allocate here
  c = sbrk(4096);
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    32e3:	39 f3                	cmp    %esi,%ebx
    32e5:	75 e5                	jne    32cc <sbrktest+0x21c>
    if(pids[i] == -1)
      continue;
    kill(pids[i]);
    wait();
  }
  if(c == (char*)0xffffffff){
    32e7:	83 ff ff             	cmp    $0xffffffff,%edi
    32ea:	0f 84 b4 00 00 00    	je     33a4 <sbrktest+0x2f4>
    printf(stdout, "failed sbrk leaked memory\n");
    exit();
  }

  if(sbrk(0) > oldbrk)
    32f0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    32f7:	e8 2e 0a 00 00       	call   3d2a <sbrk>
    32fc:	39 45 a4             	cmp    %eax,-0x5c(%ebp)
    32ff:	73 19                	jae    331a <sbrktest+0x26a>
    sbrk(-(sbrk(0) - oldbrk));
    3301:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3308:	e8 1d 0a 00 00       	call   3d2a <sbrk>
    330d:	8b 7d a4             	mov    -0x5c(%ebp),%edi
    3310:	29 c7                	sub    %eax,%edi
    3312:	89 3c 24             	mov    %edi,(%esp)
    3315:	e8 10 0a 00 00       	call   3d2a <sbrk>

  printf(stdout, "sbrk test OK\n");
    331a:	a1 e4 61 00 00       	mov    0x61e4,%eax
    331f:	c7 44 24 04 00 50 00 	movl   $0x5000,0x4(%esp)
    3326:	00 
    3327:	89 04 24             	mov    %eax,(%esp)
    332a:	e8 d1 0a 00 00       	call   3e00 <printf>
}
    332f:	83 c4 6c             	add    $0x6c,%esp
    3332:	5b                   	pop    %ebx
    3333:	5e                   	pop    %esi
    3334:	5f                   	pop    %edi
    3335:	5d                   	pop    %ebp
    3336:	c3                   	ret    
    exit();
  }
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    if((pids[i] = fork()) == 0){
      // allocate a lot of memory
      sbrk(BIG - (uint)sbrk(0));
    3337:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    333e:	e8 e7 09 00 00       	call   3d2a <sbrk>
    3343:	ba 00 00 40 06       	mov    $0x6400000,%edx
    3348:	29 c2                	sub    %eax,%edx
    334a:	89 14 24             	mov    %edx,(%esp)
    334d:	e8 d8 09 00 00       	call   3d2a <sbrk>
      write(fds[1], "x", 1);
    3352:	8b 45 bc             	mov    -0x44(%ebp),%eax
    3355:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    335c:	00 
    335d:	c7 44 24 04 c1 4a 00 	movl   $0x4ac1,0x4(%esp)
    3364:	00 
    3365:	89 04 24             	mov    %eax,(%esp)
    3368:	e8 55 09 00 00       	call   3cc2 <write>
    336d:	8d 76 00             	lea    0x0(%esi),%esi
      // sit around until killed
      for(;;) sleep(1000);
    3370:	c7 04 24 e8 03 00 00 	movl   $0x3e8,(%esp)
    3377:	e8 b6 09 00 00       	call   3d32 <sleep>
    337c:	eb f2                	jmp    3370 <sbrktest+0x2c0>
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    b = sbrk(1);
    if(b != a){
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    337e:	89 44 24 10          	mov    %eax,0x10(%esp)
    3382:	a1 e4 61 00 00       	mov    0x61e4,%eax
    3387:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    338b:	89 74 24 08          	mov    %esi,0x8(%esp)
    338f:	c7 44 24 04 63 4f 00 	movl   $0x4f63,0x4(%esp)
    3396:	00 
    3397:	89 04 24             	mov    %eax,(%esp)
    339a:	e8 61 0a 00 00       	call   3e00 <printf>
      exit();
    339f:	e8 fe 08 00 00       	call   3ca2 <exit>
      continue;
    kill(pids[i]);
    wait();
  }
  if(c == (char*)0xffffffff){
    printf(stdout, "failed sbrk leaked memory\n");
    33a4:	a1 e4 61 00 00       	mov    0x61e4,%eax
    33a9:	c7 44 24 04 e5 4f 00 	movl   $0x4fe5,0x4(%esp)
    33b0:	00 
    33b1:	89 04 24             	mov    %eax,(%esp)
    33b4:	e8 47 0a 00 00       	call   3e00 <printf>
    exit();
    33b9:	e8 e4 08 00 00       	call   3ca2 <exit>
  }

  // if we run the system out of memory, does it clean up the last
  // failed allocation?
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    33be:	c7 44 24 04 a1 44 00 	movl   $0x44a1,0x4(%esp)
    33c5:	00 
    33c6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    33cd:	e8 2e 0a 00 00       	call   3e00 <printf>
    exit();
    33d2:	e8 cb 08 00 00       	call   3ca2 <exit>
    if(pid < 0){
      printf(stdout, "fork failed\n");
      exit();
    }
    if(pid == 0){
      printf(stdout, "oops could read %x = %x\n", a, *a);
    33d7:	0f be 03             	movsbl (%ebx),%eax
    33da:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    33de:	c7 44 24 04 cc 4f 00 	movl   $0x4fcc,0x4(%esp)
    33e5:	00 
    33e6:	89 44 24 0c          	mov    %eax,0xc(%esp)
    33ea:	a1 e4 61 00 00       	mov    0x61e4,%eax
    33ef:	89 04 24             	mov    %eax,(%esp)
    33f2:	e8 09 0a 00 00       	call   3e00 <printf>
      kill(ppid);
    33f7:	89 34 24             	mov    %esi,(%esp)
    33fa:	e8 d3 08 00 00       	call   3cd2 <kill>
      exit();
    33ff:	e8 9e 08 00 00       	call   3ca2 <exit>
  // can we read the kernel's memory?
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    ppid = getpid();
    pid = fork();
    if(pid < 0){
      printf(stdout, "fork failed\n");
    3404:	a1 e4 61 00 00       	mov    0x61e4,%eax
    3409:	c7 44 24 04 a9 50 00 	movl   $0x50a9,0x4(%esp)
    3410:	00 
    3411:	89 04 24             	mov    %eax,(%esp)
    3414:	e8 e7 09 00 00       	call   3e00 <printf>
      exit();
    3419:	e8 84 08 00 00       	call   3ca2 <exit>
  }

  a = sbrk(0);
  c = sbrk(-(sbrk(0) - oldbrk));
  if(c != a){
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    341e:	89 44 24 0c          	mov    %eax,0xc(%esp)
    3422:	a1 e4 61 00 00       	mov    0x61e4,%eax
    3427:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    342b:	c7 44 24 04 ac 57 00 	movl   $0x57ac,0x4(%esp)
    3432:	00 
    3433:	89 04 24             	mov    %eax,(%esp)
    3436:	e8 c5 09 00 00       	call   3e00 <printf>
    exit();
    343b:	e8 62 08 00 00       	call   3ca2 <exit>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    exit();
  }
  if(*lastaddr == 99){
    // should be zero
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    3440:	a1 e4 61 00 00       	mov    0x61e4,%eax
    3445:	c7 44 24 04 7c 57 00 	movl   $0x577c,0x4(%esp)
    344c:	00 
    344d:	89 04 24             	mov    %eax,(%esp)
    3450:	e8 ab 09 00 00       	call   3e00 <printf>
    exit();
    3455:	e8 48 08 00 00       	call   3ca2 <exit>

  // can one re-allocate that page?
  a = sbrk(0);
  c = sbrk(4096);
  if(c != a || sbrk(0) != a + 4096){
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    345a:	a1 e4 61 00 00       	mov    0x61e4,%eax
    345f:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    3463:	89 74 24 08          	mov    %esi,0x8(%esp)
    3467:	c7 44 24 04 54 57 00 	movl   $0x5754,0x4(%esp)
    346e:	00 
    346f:	89 04 24             	mov    %eax,(%esp)
    3472:	e8 89 09 00 00       	call   3e00 <printf>
    exit();
    3477:	e8 26 08 00 00       	call   3ca2 <exit>
    printf(stdout, "sbrk could not deallocate\n");
    exit();
  }
  c = sbrk(0);
  if(c != a - 4096){
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    347c:	89 44 24 0c          	mov    %eax,0xc(%esp)
    3480:	a1 e4 61 00 00       	mov    0x61e4,%eax
    3485:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    3489:	c7 44 24 04 1c 57 00 	movl   $0x571c,0x4(%esp)
    3490:	00 
    3491:	89 04 24             	mov    %eax,(%esp)
    3494:	e8 67 09 00 00       	call   3e00 <printf>
    exit();
    3499:	e8 04 08 00 00       	call   3ca2 <exit>

  // can one de-allocate?
  a = sbrk(0);
  c = sbrk(-4096);
  if(c == (char*)0xffffffff){
    printf(stdout, "sbrk could not deallocate\n");
    349e:	a1 e4 61 00 00       	mov    0x61e4,%eax
    34a3:	c7 44 24 04 b1 4f 00 	movl   $0x4fb1,0x4(%esp)
    34aa:	00 
    34ab:	89 04 24             	mov    %eax,(%esp)
    34ae:	e8 4d 09 00 00       	call   3e00 <printf>
    exit();
    34b3:	e8 ea 07 00 00       	call   3ca2 <exit>
#define BIG (100*1024*1024)
  a = sbrk(0);
  amt = (BIG) - (uint)a;
  p = sbrk(amt);
  if (p != a) {
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    34b8:	a1 e4 61 00 00       	mov    0x61e4,%eax
    34bd:	c7 44 24 04 dc 56 00 	movl   $0x56dc,0x4(%esp)
    34c4:	00 
    34c5:	89 04 24             	mov    %eax,(%esp)
    34c8:	e8 33 09 00 00       	call   3e00 <printf>
    exit();
    34cd:	e8 d0 07 00 00       	call   3ca2 <exit>
    exit();
  }
  c = sbrk(1);
  c = sbrk(1);
  if(c != a + 1){
    printf(stdout, "sbrk test failed post-fork\n");
    34d2:	a1 e4 61 00 00       	mov    0x61e4,%eax
    34d7:	c7 44 24 04 95 4f 00 	movl   $0x4f95,0x4(%esp)
    34de:	00 
    34df:	89 04 24             	mov    %eax,(%esp)
    34e2:	e8 19 09 00 00       	call   3e00 <printf>
    exit();
    34e7:	e8 b6 07 00 00       	call   3ca2 <exit>
    *b = 1;
    a = b + 1;
  }
  pid = fork();
  if(pid < 0){
    printf(stdout, "sbrk test fork failed\n");
    34ec:	a1 e4 61 00 00       	mov    0x61e4,%eax
    34f1:	c7 44 24 04 7e 4f 00 	movl   $0x4f7e,0x4(%esp)
    34f8:	00 
    34f9:	89 04 24             	mov    %eax,(%esp)
    34fc:	e8 ff 08 00 00       	call   3e00 <printf>
    exit();
    3501:	e8 9c 07 00 00       	call   3ca2 <exit>
    3506:	8d 76 00             	lea    0x0(%esi),%esi
    3509:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003510 <validateint>:
  printf(stdout, "sbrk test OK\n");
}

void
validateint(int *p)
{
    3510:	55                   	push   %ebp
    3511:	89 e5                	mov    %esp,%ebp
      "int %2\n\t"
      "mov %%ebx, %%esp" :
      "=a" (res) :
      "a" (SYS_sleep), "n" (T_SYSCALL), "c" (p) :
      "ebx");
}
    3513:	5d                   	pop    %ebp
    3514:	c3                   	ret    
    3515:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3519:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003520 <validatetest>:

void
validatetest(void)
{
    3520:	55                   	push   %ebp
    3521:	89 e5                	mov    %esp,%ebp
    3523:	56                   	push   %esi
    3524:	53                   	push   %ebx
  uint p;

  printf(stdout, "validate test\n");
  hi = 1100*1024;

  for(p = 0; p <= (uint)hi; p += 4096){
    3525:	31 db                	xor    %ebx,%ebx
      "ebx");
}

void
validatetest(void)
{
    3527:	83 ec 10             	sub    $0x10,%esp
  int hi, pid;
  uint p;

  printf(stdout, "validate test\n");
    352a:	a1 e4 61 00 00       	mov    0x61e4,%eax
    352f:	c7 44 24 04 0e 50 00 	movl   $0x500e,0x4(%esp)
    3536:	00 
    3537:	89 04 24             	mov    %eax,(%esp)
    353a:	e8 c1 08 00 00       	call   3e00 <printf>
    353f:	90                   	nop
  hi = 1100*1024;

  for(p = 0; p <= (uint)hi; p += 4096){
    if((pid = fork()) == 0){
    3540:	e8 55 07 00 00       	call   3c9a <fork>
    3545:	85 c0                	test   %eax,%eax
    3547:	89 c6                	mov    %eax,%esi
    3549:	74 79                	je     35c4 <validatetest+0xa4>
      // try to crash the kernel by passing in a badly placed integer
      validateint((int*)p);
      exit();
    }
    sleep(0);
    354b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3552:	e8 db 07 00 00       	call   3d32 <sleep>
    sleep(0);
    3557:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    355e:	e8 cf 07 00 00       	call   3d32 <sleep>
    kill(pid);
    3563:	89 34 24             	mov    %esi,(%esp)
    3566:	e8 67 07 00 00       	call   3cd2 <kill>
    wait();
    356b:	e8 3a 07 00 00       	call   3caa <wait>

    // try to crash the kernel by passing in a bad string pointer
    if(link("nosuchfile", (char*)p) != -1){
    3570:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    3574:	c7 04 24 1d 50 00 00 	movl   $0x501d,(%esp)
    357b:	e8 82 07 00 00       	call   3d02 <link>
    3580:	83 f8 ff             	cmp    $0xffffffff,%eax
    3583:	75 2a                	jne    35af <validatetest+0x8f>
  uint p;

  printf(stdout, "validate test\n");
  hi = 1100*1024;

  for(p = 0; p <= (uint)hi; p += 4096){
    3585:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    358b:	81 fb 00 40 11 00    	cmp    $0x114000,%ebx
    3591:	75 ad                	jne    3540 <validatetest+0x20>
      printf(stdout, "link should not succeed\n");
      exit();
    }
  }

  printf(stdout, "validate ok\n");
    3593:	a1 e4 61 00 00       	mov    0x61e4,%eax
    3598:	c7 44 24 04 41 50 00 	movl   $0x5041,0x4(%esp)
    359f:	00 
    35a0:	89 04 24             	mov    %eax,(%esp)
    35a3:	e8 58 08 00 00       	call   3e00 <printf>
}
    35a8:	83 c4 10             	add    $0x10,%esp
    35ab:	5b                   	pop    %ebx
    35ac:	5e                   	pop    %esi
    35ad:	5d                   	pop    %ebp
    35ae:	c3                   	ret    
    kill(pid);
    wait();

    // try to crash the kernel by passing in a bad string pointer
    if(link("nosuchfile", (char*)p) != -1){
      printf(stdout, "link should not succeed\n");
    35af:	a1 e4 61 00 00       	mov    0x61e4,%eax
    35b4:	c7 44 24 04 28 50 00 	movl   $0x5028,0x4(%esp)
    35bb:	00 
    35bc:	89 04 24             	mov    %eax,(%esp)
    35bf:	e8 3c 08 00 00       	call   3e00 <printf>
      exit();
    35c4:	e8 d9 06 00 00       	call   3ca2 <exit>
    35c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000035d0 <bsstest>:

// does unintialized data start out zero?
char uninit[10000];
void
bsstest(void)
{
    35d0:	55                   	push   %ebp
    35d1:	89 e5                	mov    %esp,%ebp
    35d3:	83 ec 18             	sub    $0x18,%esp
  int i;

  printf(stdout, "bss test\n");
    35d6:	a1 e4 61 00 00       	mov    0x61e4,%eax
    35db:	c7 44 24 04 4e 50 00 	movl   $0x504e,0x4(%esp)
    35e2:	00 
    35e3:	89 04 24             	mov    %eax,(%esp)
    35e6:	e8 15 08 00 00       	call   3e00 <printf>
  for(i = 0; i < sizeof(uninit); i++){
    if(uninit[i] != '\0'){
    35eb:	80 3d a0 62 00 00 00 	cmpb   $0x0,0x62a0
    35f2:	75 36                	jne    362a <bsstest+0x5a>
bsstest(void)
{
  int i;

  printf(stdout, "bss test\n");
  for(i = 0; i < sizeof(uninit); i++){
    35f4:	b8 01 00 00 00       	mov    $0x1,%eax
    35f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(uninit[i] != '\0'){
    3600:	80 b8 a0 62 00 00 00 	cmpb   $0x0,0x62a0(%eax)
    3607:	75 21                	jne    362a <bsstest+0x5a>
bsstest(void)
{
  int i;

  printf(stdout, "bss test\n");
  for(i = 0; i < sizeof(uninit); i++){
    3609:	83 c0 01             	add    $0x1,%eax
    360c:	3d 10 27 00 00       	cmp    $0x2710,%eax
    3611:	75 ed                	jne    3600 <bsstest+0x30>
    if(uninit[i] != '\0'){
      printf(stdout, "bss test failed\n");
      exit();
    }
  }
  printf(stdout, "bss test ok\n");
    3613:	a1 e4 61 00 00       	mov    0x61e4,%eax
    3618:	c7 44 24 04 69 50 00 	movl   $0x5069,0x4(%esp)
    361f:	00 
    3620:	89 04 24             	mov    %eax,(%esp)
    3623:	e8 d8 07 00 00       	call   3e00 <printf>
}
    3628:	c9                   	leave  
    3629:	c3                   	ret    
  int i;

  printf(stdout, "bss test\n");
  for(i = 0; i < sizeof(uninit); i++){
    if(uninit[i] != '\0'){
      printf(stdout, "bss test failed\n");
    362a:	a1 e4 61 00 00       	mov    0x61e4,%eax
    362f:	c7 44 24 04 58 50 00 	movl   $0x5058,0x4(%esp)
    3636:	00 
    3637:	89 04 24             	mov    %eax,(%esp)
    363a:	e8 c1 07 00 00       	call   3e00 <printf>
      exit();
    363f:	e8 5e 06 00 00       	call   3ca2 <exit>
    3644:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    364a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00003650 <bigargtest>:
// does exec return an error if the arguments
// are larger than a page? or does it write
// below the stack and wreck the instructions/data?
void
bigargtest(void)
{
    3650:	55                   	push   %ebp
    3651:	89 e5                	mov    %esp,%ebp
    3653:	83 ec 18             	sub    $0x18,%esp
  int pid, fd;

  unlink("bigarg-ok");
    3656:	c7 04 24 76 50 00 00 	movl   $0x5076,(%esp)
    365d:	e8 90 06 00 00       	call   3cf2 <unlink>
  pid = fork();
    3662:	e8 33 06 00 00       	call   3c9a <fork>
  if(pid == 0){
    3667:	85 c0                	test   %eax,%eax
    3669:	74 45                	je     36b0 <bigargtest+0x60>
    366b:	90                   	nop
    366c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    exec("echo", args);
    printf(stdout, "bigarg test ok\n");
    fd = open("bigarg-ok", O_CREATE);
    close(fd);
    exit();
  } else if(pid < 0){
    3670:	0f 88 d0 00 00 00    	js     3746 <bigargtest+0xf6>
    printf(stdout, "bigargtest: fork failed\n");
    exit();
  }
  wait();
    3676:	e8 2f 06 00 00       	call   3caa <wait>
  fd = open("bigarg-ok", 0);
    367b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3682:	00 
    3683:	c7 04 24 76 50 00 00 	movl   $0x5076,(%esp)
    368a:	e8 53 06 00 00       	call   3ce2 <open>
  if(fd < 0){
    368f:	85 c0                	test   %eax,%eax
    3691:	0f 88 95 00 00 00    	js     372c <bigargtest+0xdc>
    printf(stdout, "bigarg test failed!\n");
    exit();
  }
  close(fd);
    3697:	89 04 24             	mov    %eax,(%esp)
    369a:	e8 2b 06 00 00       	call   3cca <close>
  unlink("bigarg-ok");
    369f:	c7 04 24 76 50 00 00 	movl   $0x5076,(%esp)
    36a6:	e8 47 06 00 00       	call   3cf2 <unlink>
}
    36ab:	c9                   	leave  
    36ac:	c3                   	ret    
    36ad:	8d 76 00             	lea    0x0(%esi),%esi
  pid = fork();
  if(pid == 0){
    static char *args[MAXARG];
    int i;
    for(i = 0; i < MAXARG-1; i++)
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    36b0:	c7 04 85 00 62 00 00 	movl   $0x57d0,0x6200(,%eax,4)
    36b7:	d0 57 00 00 
  unlink("bigarg-ok");
  pid = fork();
  if(pid == 0){
    static char *args[MAXARG];
    int i;
    for(i = 0; i < MAXARG-1; i++)
    36bb:	83 c0 01             	add    $0x1,%eax
    36be:	83 f8 1f             	cmp    $0x1f,%eax
    36c1:	75 ed                	jne    36b0 <bigargtest+0x60>
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    args[MAXARG-1] = 0;
    printf(stdout, "bigarg test\n");
    36c3:	a1 e4 61 00 00       	mov    0x61e4,%eax
    36c8:	c7 44 24 04 80 50 00 	movl   $0x5080,0x4(%esp)
    36cf:	00 
  if(pid == 0){
    static char *args[MAXARG];
    int i;
    for(i = 0; i < MAXARG-1; i++)
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    args[MAXARG-1] = 0;
    36d0:	c7 05 7c 62 00 00 00 	movl   $0x0,0x627c
    36d7:	00 00 00 
    printf(stdout, "bigarg test\n");
    36da:	89 04 24             	mov    %eax,(%esp)
    36dd:	e8 1e 07 00 00       	call   3e00 <printf>
    exec("echo", args);
    36e2:	c7 44 24 04 00 62 00 	movl   $0x6200,0x4(%esp)
    36e9:	00 
    36ea:	c7 04 24 4d 42 00 00 	movl   $0x424d,(%esp)
    36f1:	e8 e4 05 00 00       	call   3cda <exec>
    printf(stdout, "bigarg test ok\n");
    36f6:	a1 e4 61 00 00       	mov    0x61e4,%eax
    36fb:	c7 44 24 04 8d 50 00 	movl   $0x508d,0x4(%esp)
    3702:	00 
    3703:	89 04 24             	mov    %eax,(%esp)
    3706:	e8 f5 06 00 00       	call   3e00 <printf>
    fd = open("bigarg-ok", O_CREATE);
    370b:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    3712:	00 
    3713:	c7 04 24 76 50 00 00 	movl   $0x5076,(%esp)
    371a:	e8 c3 05 00 00       	call   3ce2 <open>
    close(fd);
    371f:	89 04 24             	mov    %eax,(%esp)
    3722:	e8 a3 05 00 00       	call   3cca <close>
    exit();
    3727:	e8 76 05 00 00       	call   3ca2 <exit>
    exit();
  }
  wait();
  fd = open("bigarg-ok", 0);
  if(fd < 0){
    printf(stdout, "bigarg test failed!\n");
    372c:	a1 e4 61 00 00       	mov    0x61e4,%eax
    3731:	c7 44 24 04 b6 50 00 	movl   $0x50b6,0x4(%esp)
    3738:	00 
    3739:	89 04 24             	mov    %eax,(%esp)
    373c:	e8 bf 06 00 00       	call   3e00 <printf>
    exit();
    3741:	e8 5c 05 00 00       	call   3ca2 <exit>
    printf(stdout, "bigarg test ok\n");
    fd = open("bigarg-ok", O_CREATE);
    close(fd);
    exit();
  } else if(pid < 0){
    printf(stdout, "bigargtest: fork failed\n");
    3746:	a1 e4 61 00 00       	mov    0x61e4,%eax
    374b:	c7 44 24 04 9d 50 00 	movl   $0x509d,0x4(%esp)
    3752:	00 
    3753:	89 04 24             	mov    %eax,(%esp)
    3756:	e8 a5 06 00 00       	call   3e00 <printf>
    exit();
    375b:	e8 42 05 00 00       	call   3ca2 <exit>

00003760 <fsfull>:

// what happens when the file system runs out of blocks?
// answer: balloc panics, so this test is not useful.
void
fsfull()
{
    3760:	55                   	push   %ebp
    3761:	89 e5                	mov    %esp,%ebp
    3763:	57                   	push   %edi
    3764:	56                   	push   %esi
    3765:	53                   	push   %ebx
  int nfiles;
  int fsblocks = 0;

  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    3766:	31 db                	xor    %ebx,%ebx

// what happens when the file system runs out of blocks?
// answer: balloc panics, so this test is not useful.
void
fsfull()
{
    3768:	83 ec 5c             	sub    $0x5c,%esp
  int nfiles;
  int fsblocks = 0;

  printf(1, "fsfull test\n");
    376b:	c7 44 24 04 cb 50 00 	movl   $0x50cb,0x4(%esp)
    3772:	00 
    3773:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    377a:	e8 81 06 00 00       	call   3e00 <printf>
    377f:	90                   	nop

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    3780:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    3785:	89 d9                	mov    %ebx,%ecx
    3787:	f7 eb                	imul   %ebx
    name[2] = '0' + (nfiles % 1000) / 100;
    3789:	89 de                	mov    %ebx,%esi
  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    378b:	c1 f9 1f             	sar    $0x1f,%ecx
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    378e:	89 df                	mov    %ebx,%edi
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    3790:	c7 44 24 04 d8 50 00 	movl   $0x50d8,0x4(%esp)
    3797:	00 
    3798:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    379f:	c1 fa 06             	sar    $0x6,%edx
    37a2:	29 ca                	sub    %ecx,%edx
    37a4:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    37a7:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    37ad:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    37b0:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax

  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    37b5:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    37b9:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    37bd:	29 d6                	sub    %edx,%esi
    37bf:	f7 ee                	imul   %esi
    name[3] = '0' + (nfiles % 100) / 10;
    37c1:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    37c6:	c1 fe 1f             	sar    $0x1f,%esi
    37c9:	c1 fa 05             	sar    $0x5,%edx
    37cc:	29 f2                	sub    %esi,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    37ce:	be 67 66 66 66       	mov    $0x66666667,%esi

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    37d3:	83 c2 30             	add    $0x30,%edx
    37d6:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    37d9:	f7 eb                	imul   %ebx
    37db:	c1 fa 05             	sar    $0x5,%edx
    37de:	29 ca                	sub    %ecx,%edx
    37e0:	6b d2 64             	imul   $0x64,%edx,%edx
    37e3:	29 d7                	sub    %edx,%edi
    37e5:	89 f8                	mov    %edi,%eax
    37e7:	f7 ee                	imul   %esi
    name[4] = '0' + (nfiles % 10);
    37e9:	89 d8                	mov    %ebx,%eax
  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    37eb:	c1 ff 1f             	sar    $0x1f,%edi
    37ee:	c1 fa 02             	sar    $0x2,%edx
    37f1:	29 fa                	sub    %edi,%edx
    37f3:	83 c2 30             	add    $0x30,%edx
    37f6:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    37f9:	f7 ee                	imul   %esi
    37fb:	c1 fa 02             	sar    $0x2,%edx
    37fe:	29 ca                	sub    %ecx,%edx
    3800:	89 d9                	mov    %ebx,%ecx
    3802:	8d 04 92             	lea    (%edx,%edx,4),%eax
    3805:	01 c0                	add    %eax,%eax
    3807:	29 c1                	sub    %eax,%ecx
    3809:	89 c8                	mov    %ecx,%eax
    380b:	83 c0 30             	add    $0x30,%eax
    380e:	88 45 ac             	mov    %al,-0x54(%ebp)
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    3811:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3814:	89 44 24 08          	mov    %eax,0x8(%esp)
    3818:	e8 e3 05 00 00       	call   3e00 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    381d:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3820:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    3827:	00 
    3828:	89 04 24             	mov    %eax,(%esp)
    382b:	e8 b2 04 00 00       	call   3ce2 <open>
    if(fd < 0){
    3830:	85 c0                	test   %eax,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    int fd = open(name, O_CREATE|O_RDWR);
    3832:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    3834:	78 57                	js     388d <fsfull+0x12d>
    3836:	31 f6                	xor    %esi,%esi
    3838:	eb 08                	jmp    3842 <fsfull+0xe2>
    383a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    int total = 0;
    while(1){
      int cc = write(fd, buf, 512);
      if(cc < 512)
        break;
      total += cc;
    3840:	01 c6                	add    %eax,%esi
      printf(1, "open %s failed\n", name);
      break;
    }
    int total = 0;
    while(1){
      int cc = write(fd, buf, 512);
    3842:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
    3849:	00 
    384a:	c7 44 24 04 c0 89 00 	movl   $0x89c0,0x4(%esp)
    3851:	00 
    3852:	89 3c 24             	mov    %edi,(%esp)
    3855:	e8 68 04 00 00       	call   3cc2 <write>
      if(cc < 512)
    385a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    385f:	7f df                	jg     3840 <fsfull+0xe0>
        break;
      total += cc;
      fsblocks++;
    }
    printf(1, "wrote %d bytes\n", total);
    3861:	89 74 24 08          	mov    %esi,0x8(%esp)
    3865:	c7 44 24 04 f4 50 00 	movl   $0x50f4,0x4(%esp)
    386c:	00 
    386d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3874:	e8 87 05 00 00       	call   3e00 <printf>
    close(fd);
    3879:	89 3c 24             	mov    %edi,(%esp)
    387c:	e8 49 04 00 00       	call   3cca <close>
    if(total == 0)
    3881:	85 f6                	test   %esi,%esi
    3883:	74 23                	je     38a8 <fsfull+0x148>
  int nfiles;
  int fsblocks = 0;

  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    3885:	83 c3 01             	add    $0x1,%ebx
    }
    printf(1, "wrote %d bytes\n", total);
    close(fd);
    if(total == 0)
      break;
  }
    3888:	e9 f3 fe ff ff       	jmp    3780 <fsfull+0x20>
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    int fd = open(name, O_CREATE|O_RDWR);
    if(fd < 0){
      printf(1, "open %s failed\n", name);
    388d:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3890:	89 44 24 08          	mov    %eax,0x8(%esp)
    3894:	c7 44 24 04 e4 50 00 	movl   $0x50e4,0x4(%esp)
    389b:	00 
    389c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    38a3:	e8 58 05 00 00       	call   3e00 <printf>
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    38a8:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    38ad:	89 d9                	mov    %ebx,%ecx
    38af:	f7 eb                	imul   %ebx
    name[2] = '0' + (nfiles % 1000) / 100;
    38b1:	89 de                	mov    %ebx,%esi
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    38b3:	c1 f9 1f             	sar    $0x1f,%ecx
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    38b6:	89 df                	mov    %ebx,%edi
      break;
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    38b8:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    38bc:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    38c0:	c1 fa 06             	sar    $0x6,%edx
    38c3:	29 ca                	sub    %ecx,%edx
    38c5:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    38c8:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    38ce:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    38d1:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    38d6:	29 d6                	sub    %edx,%esi
    38d8:	f7 ee                	imul   %esi
    name[3] = '0' + (nfiles % 100) / 10;
    38da:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    38df:	c1 fe 1f             	sar    $0x1f,%esi
    38e2:	c1 fa 05             	sar    $0x5,%edx
    38e5:	29 f2                	sub    %esi,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    38e7:	be 67 66 66 66       	mov    $0x66666667,%esi

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    38ec:	83 c2 30             	add    $0x30,%edx
    38ef:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    38f2:	f7 eb                	imul   %ebx
    38f4:	c1 fa 05             	sar    $0x5,%edx
    38f7:	29 ca                	sub    %ecx,%edx
    38f9:	6b d2 64             	imul   $0x64,%edx,%edx
    38fc:	29 d7                	sub    %edx,%edi
    38fe:	89 f8                	mov    %edi,%eax
    3900:	f7 ee                	imul   %esi
    name[4] = '0' + (nfiles % 10);
    3902:	89 d8                	mov    %ebx,%eax
  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    3904:	c1 ff 1f             	sar    $0x1f,%edi
    3907:	c1 fa 02             	sar    $0x2,%edx
    390a:	29 fa                	sub    %edi,%edx
    390c:	83 c2 30             	add    $0x30,%edx
    390f:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    3912:	f7 ee                	imul   %esi
    3914:	c1 fa 02             	sar    $0x2,%edx
    3917:	29 ca                	sub    %ecx,%edx
    3919:	89 d9                	mov    %ebx,%ecx
    391b:	8d 04 92             	lea    (%edx,%edx,4),%eax
    name[5] = '\0';
    unlink(name);
    nfiles--;
    391e:	83 eb 01             	sub    $0x1,%ebx
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    3921:	01 c0                	add    %eax,%eax
    3923:	29 c1                	sub    %eax,%ecx
    3925:	89 c8                	mov    %ecx,%eax
    3927:	83 c0 30             	add    $0x30,%eax
    392a:	88 45 ac             	mov    %al,-0x54(%ebp)
    name[5] = '\0';
    unlink(name);
    392d:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3930:	89 04 24             	mov    %eax,(%esp)
    3933:	e8 ba 03 00 00       	call   3cf2 <unlink>
    close(fd);
    if(total == 0)
      break;
  }

  while(nfiles >= 0){
    3938:	83 fb ff             	cmp    $0xffffffff,%ebx
    393b:	0f 85 67 ff ff ff    	jne    38a8 <fsfull+0x148>
    name[5] = '\0';
    unlink(name);
    nfiles--;
  }

  printf(1, "fsfull test finished\n");
    3941:	c7 44 24 04 04 51 00 	movl   $0x5104,0x4(%esp)
    3948:	00 
    3949:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3950:	e8 ab 04 00 00       	call   3e00 <printf>
}
    3955:	83 c4 5c             	add    $0x5c,%esp
    3958:	5b                   	pop    %ebx
    3959:	5e                   	pop    %esi
    395a:	5f                   	pop    %edi
    395b:	5d                   	pop    %ebp
    395c:	c3                   	ret    
    395d:	8d 76 00             	lea    0x0(%esi),%esi

00003960 <uio>:

void
uio()
{
    3960:	55                   	push   %ebp
    3961:	89 e5                	mov    %esp,%ebp
    3963:	83 ec 18             	sub    $0x18,%esp

  ushort port = 0;
  uchar val = 0;
  int pid;

  printf(1, "uio test\n");
    3966:	c7 44 24 04 1a 51 00 	movl   $0x511a,0x4(%esp)
    396d:	00 
    396e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3975:	e8 86 04 00 00       	call   3e00 <printf>
  pid = fork();
    397a:	e8 1b 03 00 00       	call   3c9a <fork>
  if(pid == 0){
    397f:	85 c0                	test   %eax,%eax
    3981:	74 1d                	je     39a0 <uio+0x40>
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    port = RTC_DATA;
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    printf(1, "uio: uio succeeded; test FAILED\n");
    exit();
  } else if(pid < 0){
    3983:	78 42                	js     39c7 <uio+0x67>
    printf (1, "fork failed\n");
    exit();
  }
  wait();
    3985:	e8 20 03 00 00       	call   3caa <wait>
  printf(1, "uio test done\n");
    398a:	c7 44 24 04 24 51 00 	movl   $0x5124,0x4(%esp)
    3991:	00 
    3992:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3999:	e8 62 04 00 00       	call   3e00 <printf>
}
    399e:	c9                   	leave  
    399f:	c3                   	ret    
  pid = fork();
  if(pid == 0){
    port = RTC_ADDR;
    val = 0x09;  /* year */
    /* http://wiki.osdev.org/Inline_Assembly/Examples */
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    39a0:	ba 70 00 00 00       	mov    $0x70,%edx
    39a5:	b8 09 00 00 00       	mov    $0x9,%eax
    39aa:	ee                   	out    %al,(%dx)
    port = RTC_DATA;
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    39ab:	b2 71                	mov    $0x71,%dl
    39ad:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    39ae:	c7 44 24 04 b0 58 00 	movl   $0x58b0,0x4(%esp)
    39b5:	00 
    39b6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    39bd:	e8 3e 04 00 00       	call   3e00 <printf>
    exit();
    39c2:	e8 db 02 00 00       	call   3ca2 <exit>
  } else if(pid < 0){
    printf (1, "fork failed\n");
    39c7:	c7 44 24 04 a9 50 00 	movl   $0x50a9,0x4(%esp)
    39ce:	00 
    39cf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    39d6:	e8 25 04 00 00       	call   3e00 <printf>
    exit();
    39db:	e8 c2 02 00 00       	call   3ca2 <exit>

000039e0 <argptest>:
  wait();
  printf(1, "uio test done\n");
}

void argptest()
{
    39e0:	55                   	push   %ebp
    39e1:	89 e5                	mov    %esp,%ebp
    39e3:	53                   	push   %ebx
    39e4:	83 ec 14             	sub    $0x14,%esp
  int fd;
  fd = open("init", O_RDONLY);
    39e7:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    39ee:	00 
    39ef:	c7 04 24 33 51 00 00 	movl   $0x5133,(%esp)
    39f6:	e8 e7 02 00 00       	call   3ce2 <open>
  if (fd < 0) {
    39fb:	85 c0                	test   %eax,%eax
}

void argptest()
{
  int fd;
  fd = open("init", O_RDONLY);
    39fd:	89 c3                	mov    %eax,%ebx
  if (fd < 0) {
    39ff:	78 45                	js     3a46 <argptest+0x66>
    printf(2, "open failed\n");
    exit();
  }
  read(fd, sbrk(0) - 1, -1);
    3a01:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3a08:	e8 1d 03 00 00       	call   3d2a <sbrk>
    3a0d:	89 1c 24             	mov    %ebx,(%esp)
    3a10:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
    3a17:	ff 
    3a18:	83 e8 01             	sub    $0x1,%eax
    3a1b:	89 44 24 04          	mov    %eax,0x4(%esp)
    3a1f:	e8 96 02 00 00       	call   3cba <read>
  close(fd);
    3a24:	89 1c 24             	mov    %ebx,(%esp)
    3a27:	e8 9e 02 00 00       	call   3cca <close>
  printf(1, "arg test passed\n");
    3a2c:	c7 44 24 04 45 51 00 	movl   $0x5145,0x4(%esp)
    3a33:	00 
    3a34:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3a3b:	e8 c0 03 00 00       	call   3e00 <printf>
}
    3a40:	83 c4 14             	add    $0x14,%esp
    3a43:	5b                   	pop    %ebx
    3a44:	5d                   	pop    %ebp
    3a45:	c3                   	ret    
void argptest()
{
  int fd;
  fd = open("init", O_RDONLY);
  if (fd < 0) {
    printf(2, "open failed\n");
    3a46:	c7 44 24 04 38 51 00 	movl   $0x5138,0x4(%esp)
    3a4d:	00 
    3a4e:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
    3a55:	e8 a6 03 00 00       	call   3e00 <printf>
    exit();
    3a5a:	e8 43 02 00 00       	call   3ca2 <exit>
    3a5f:	90                   	nop

00003a60 <rand>:

unsigned long randstate = 1;
unsigned int
rand()
{
  randstate = randstate * 1664525 + 1013904223;
    3a60:	69 05 e0 61 00 00 0d 	imul   $0x19660d,0x61e0,%eax
    3a67:	66 19 00 
}

unsigned long randstate = 1;
unsigned int
rand()
{
    3a6a:	55                   	push   %ebp
    3a6b:	89 e5                	mov    %esp,%ebp
  randstate = randstate * 1664525 + 1013904223;
  return randstate;
}
    3a6d:	5d                   	pop    %ebp

unsigned long randstate = 1;
unsigned int
rand()
{
  randstate = randstate * 1664525 + 1013904223;
    3a6e:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    3a73:	a3 e0 61 00 00       	mov    %eax,0x61e0
  return randstate;
}
    3a78:	c3                   	ret    
    3a79:	66 90                	xchg   %ax,%ax
    3a7b:	66 90                	xchg   %ax,%ax
    3a7d:	66 90                	xchg   %ax,%ax
    3a7f:	90                   	nop

00003a80 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    3a80:	55                   	push   %ebp
    3a81:	89 e5                	mov    %esp,%ebp
    3a83:	8b 45 08             	mov    0x8(%ebp),%eax
    3a86:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    3a89:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    3a8a:	89 c2                	mov    %eax,%edx
    3a8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3a90:	83 c1 01             	add    $0x1,%ecx
    3a93:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    3a97:	83 c2 01             	add    $0x1,%edx
    3a9a:	84 db                	test   %bl,%bl
    3a9c:	88 5a ff             	mov    %bl,-0x1(%edx)
    3a9f:	75 ef                	jne    3a90 <strcpy+0x10>
    ;
  return os;
}
    3aa1:	5b                   	pop    %ebx
    3aa2:	5d                   	pop    %ebp
    3aa3:	c3                   	ret    
    3aa4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3aaa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00003ab0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    3ab0:	55                   	push   %ebp
    3ab1:	89 e5                	mov    %esp,%ebp
    3ab3:	8b 55 08             	mov    0x8(%ebp),%edx
    3ab6:	53                   	push   %ebx
    3ab7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    3aba:	0f b6 02             	movzbl (%edx),%eax
    3abd:	84 c0                	test   %al,%al
    3abf:	74 2d                	je     3aee <strcmp+0x3e>
    3ac1:	0f b6 19             	movzbl (%ecx),%ebx
    3ac4:	38 d8                	cmp    %bl,%al
    3ac6:	74 0e                	je     3ad6 <strcmp+0x26>
    3ac8:	eb 2b                	jmp    3af5 <strcmp+0x45>
    3aca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3ad0:	38 c8                	cmp    %cl,%al
    3ad2:	75 15                	jne    3ae9 <strcmp+0x39>
    p++, q++;
    3ad4:	89 d9                	mov    %ebx,%ecx
    3ad6:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    3ad9:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    3adc:	8d 59 01             	lea    0x1(%ecx),%ebx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    3adf:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
    3ae3:	84 c0                	test   %al,%al
    3ae5:	75 e9                	jne    3ad0 <strcmp+0x20>
    3ae7:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
    3ae9:	29 c8                	sub    %ecx,%eax
}
    3aeb:	5b                   	pop    %ebx
    3aec:	5d                   	pop    %ebp
    3aed:	c3                   	ret    
    3aee:	0f b6 09             	movzbl (%ecx),%ecx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    3af1:	31 c0                	xor    %eax,%eax
    3af3:	eb f4                	jmp    3ae9 <strcmp+0x39>
    3af5:	0f b6 cb             	movzbl %bl,%ecx
    3af8:	eb ef                	jmp    3ae9 <strcmp+0x39>
    3afa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003b00 <strlen>:
  return (uchar)*p - (uchar)*q;
}

uint
strlen(char *s)
{
    3b00:	55                   	push   %ebp
    3b01:	89 e5                	mov    %esp,%ebp
    3b03:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    3b06:	80 39 00             	cmpb   $0x0,(%ecx)
    3b09:	74 12                	je     3b1d <strlen+0x1d>
    3b0b:	31 d2                	xor    %edx,%edx
    3b0d:	8d 76 00             	lea    0x0(%esi),%esi
    3b10:	83 c2 01             	add    $0x1,%edx
    3b13:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    3b17:	89 d0                	mov    %edx,%eax
    3b19:	75 f5                	jne    3b10 <strlen+0x10>
    ;
  return n;
}
    3b1b:	5d                   	pop    %ebp
    3b1c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
    3b1d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
    3b1f:	5d                   	pop    %ebp
    3b20:	c3                   	ret    
    3b21:	eb 0d                	jmp    3b30 <memset>
    3b23:	90                   	nop
    3b24:	90                   	nop
    3b25:	90                   	nop
    3b26:	90                   	nop
    3b27:	90                   	nop
    3b28:	90                   	nop
    3b29:	90                   	nop
    3b2a:	90                   	nop
    3b2b:	90                   	nop
    3b2c:	90                   	nop
    3b2d:	90                   	nop
    3b2e:	90                   	nop
    3b2f:	90                   	nop

00003b30 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3b30:	55                   	push   %ebp
    3b31:	89 e5                	mov    %esp,%ebp
    3b33:	8b 55 08             	mov    0x8(%ebp),%edx
    3b36:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3b37:	8b 4d 10             	mov    0x10(%ebp),%ecx
    3b3a:	8b 45 0c             	mov    0xc(%ebp),%eax
    3b3d:	89 d7                	mov    %edx,%edi
    3b3f:	fc                   	cld    
    3b40:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3b42:	89 d0                	mov    %edx,%eax
    3b44:	5f                   	pop    %edi
    3b45:	5d                   	pop    %ebp
    3b46:	c3                   	ret    
    3b47:	89 f6                	mov    %esi,%esi
    3b49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003b50 <strchr>:

char*
strchr(const char *s, char c)
{
    3b50:	55                   	push   %ebp
    3b51:	89 e5                	mov    %esp,%ebp
    3b53:	8b 45 08             	mov    0x8(%ebp),%eax
    3b56:	53                   	push   %ebx
    3b57:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
    3b5a:	0f b6 18             	movzbl (%eax),%ebx
    3b5d:	84 db                	test   %bl,%bl
    3b5f:	74 1d                	je     3b7e <strchr+0x2e>
    if(*s == c)
    3b61:	38 d3                	cmp    %dl,%bl
    3b63:	89 d1                	mov    %edx,%ecx
    3b65:	75 0d                	jne    3b74 <strchr+0x24>
    3b67:	eb 17                	jmp    3b80 <strchr+0x30>
    3b69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3b70:	38 ca                	cmp    %cl,%dl
    3b72:	74 0c                	je     3b80 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
    3b74:	83 c0 01             	add    $0x1,%eax
    3b77:	0f b6 10             	movzbl (%eax),%edx
    3b7a:	84 d2                	test   %dl,%dl
    3b7c:	75 f2                	jne    3b70 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
    3b7e:	31 c0                	xor    %eax,%eax
}
    3b80:	5b                   	pop    %ebx
    3b81:	5d                   	pop    %ebp
    3b82:	c3                   	ret    
    3b83:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3b89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003b90 <gets>:

char*
gets(char *buf, int max)
{
    3b90:	55                   	push   %ebp
    3b91:	89 e5                	mov    %esp,%ebp
    3b93:	57                   	push   %edi
    3b94:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3b95:	31 f6                	xor    %esi,%esi
  return 0;
}

char*
gets(char *buf, int max)
{
    3b97:	53                   	push   %ebx
    3b98:	83 ec 2c             	sub    $0x2c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    3b9b:	8d 7d e7             	lea    -0x19(%ebp),%edi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3b9e:	eb 31                	jmp    3bd1 <gets+0x41>
    cc = read(0, &c, 1);
    3ba0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3ba7:	00 
    3ba8:	89 7c 24 04          	mov    %edi,0x4(%esp)
    3bac:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3bb3:	e8 02 01 00 00       	call   3cba <read>
    if(cc < 1)
    3bb8:	85 c0                	test   %eax,%eax
    3bba:	7e 1d                	jle    3bd9 <gets+0x49>
      break;
    buf[i++] = c;
    3bbc:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3bc0:	89 de                	mov    %ebx,%esi
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
    3bc2:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
    3bc5:	3c 0d                	cmp    $0xd,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
    3bc7:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    3bcb:	74 0c                	je     3bd9 <gets+0x49>
    3bcd:	3c 0a                	cmp    $0xa,%al
    3bcf:	74 08                	je     3bd9 <gets+0x49>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3bd1:	8d 5e 01             	lea    0x1(%esi),%ebx
    3bd4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    3bd7:	7c c7                	jl     3ba0 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    3bd9:	8b 45 08             	mov    0x8(%ebp),%eax
    3bdc:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    3be0:	83 c4 2c             	add    $0x2c,%esp
    3be3:	5b                   	pop    %ebx
    3be4:	5e                   	pop    %esi
    3be5:	5f                   	pop    %edi
    3be6:	5d                   	pop    %ebp
    3be7:	c3                   	ret    
    3be8:	90                   	nop
    3be9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003bf0 <stat>:

int
stat(char *n, struct stat *st)
{
    3bf0:	55                   	push   %ebp
    3bf1:	89 e5                	mov    %esp,%ebp
    3bf3:	56                   	push   %esi
    3bf4:	53                   	push   %ebx
    3bf5:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3bf8:	8b 45 08             	mov    0x8(%ebp),%eax
    3bfb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3c02:	00 
    3c03:	89 04 24             	mov    %eax,(%esp)
    3c06:	e8 d7 00 00 00       	call   3ce2 <open>
  if(fd < 0)
    3c0b:	85 c0                	test   %eax,%eax
stat(char *n, struct stat *st)
{
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3c0d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
    3c0f:	78 27                	js     3c38 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    3c11:	8b 45 0c             	mov    0xc(%ebp),%eax
    3c14:	89 1c 24             	mov    %ebx,(%esp)
    3c17:	89 44 24 04          	mov    %eax,0x4(%esp)
    3c1b:	e8 da 00 00 00       	call   3cfa <fstat>
  close(fd);
    3c20:	89 1c 24             	mov    %ebx,(%esp)
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
    3c23:	89 c6                	mov    %eax,%esi
  close(fd);
    3c25:	e8 a0 00 00 00       	call   3cca <close>
  return r;
    3c2a:	89 f0                	mov    %esi,%eax
}
    3c2c:	83 c4 10             	add    $0x10,%esp
    3c2f:	5b                   	pop    %ebx
    3c30:	5e                   	pop    %esi
    3c31:	5d                   	pop    %ebp
    3c32:	c3                   	ret    
    3c33:	90                   	nop
    3c34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
    3c38:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3c3d:	eb ed                	jmp    3c2c <stat+0x3c>
    3c3f:	90                   	nop

00003c40 <atoi>:
  return r;
}

int
atoi(const char *s)
{
    3c40:	55                   	push   %ebp
    3c41:	89 e5                	mov    %esp,%ebp
    3c43:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3c46:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3c47:	0f be 11             	movsbl (%ecx),%edx
    3c4a:	8d 42 d0             	lea    -0x30(%edx),%eax
    3c4d:	3c 09                	cmp    $0x9,%al
int
atoi(const char *s)
{
  int n;

  n = 0;
    3c4f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    3c54:	77 17                	ja     3c6d <atoi+0x2d>
    3c56:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    3c58:	83 c1 01             	add    $0x1,%ecx
    3c5b:	8d 04 80             	lea    (%eax,%eax,4),%eax
    3c5e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3c62:	0f be 11             	movsbl (%ecx),%edx
    3c65:	8d 5a d0             	lea    -0x30(%edx),%ebx
    3c68:	80 fb 09             	cmp    $0x9,%bl
    3c6b:	76 eb                	jbe    3c58 <atoi+0x18>
    n = n*10 + *s++ - '0';
  return n;
}
    3c6d:	5b                   	pop    %ebx
    3c6e:	5d                   	pop    %ebp
    3c6f:	c3                   	ret    

00003c70 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    3c70:	55                   	push   %ebp
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    3c71:	31 d2                	xor    %edx,%edx
  return n;
}

void*
memmove(void *vdst, void *vsrc, int n)
{
    3c73:	89 e5                	mov    %esp,%ebp
    3c75:	56                   	push   %esi
    3c76:	8b 45 08             	mov    0x8(%ebp),%eax
    3c79:	53                   	push   %ebx
    3c7a:	8b 5d 10             	mov    0x10(%ebp),%ebx
    3c7d:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    3c80:	85 db                	test   %ebx,%ebx
    3c82:	7e 12                	jle    3c96 <memmove+0x26>
    3c84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    3c88:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    3c8c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    3c8f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    3c92:	39 da                	cmp    %ebx,%edx
    3c94:	75 f2                	jne    3c88 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
    3c96:	5b                   	pop    %ebx
    3c97:	5e                   	pop    %esi
    3c98:	5d                   	pop    %ebp
    3c99:	c3                   	ret    

00003c9a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    3c9a:	b8 01 00 00 00       	mov    $0x1,%eax
    3c9f:	cd 40                	int    $0x40
    3ca1:	c3                   	ret    

00003ca2 <exit>:
SYSCALL(exit)
    3ca2:	b8 02 00 00 00       	mov    $0x2,%eax
    3ca7:	cd 40                	int    $0x40
    3ca9:	c3                   	ret    

00003caa <wait>:
SYSCALL(wait)
    3caa:	b8 03 00 00 00       	mov    $0x3,%eax
    3caf:	cd 40                	int    $0x40
    3cb1:	c3                   	ret    

00003cb2 <pipe>:
SYSCALL(pipe)
    3cb2:	b8 04 00 00 00       	mov    $0x4,%eax
    3cb7:	cd 40                	int    $0x40
    3cb9:	c3                   	ret    

00003cba <read>:
SYSCALL(read)
    3cba:	b8 05 00 00 00       	mov    $0x5,%eax
    3cbf:	cd 40                	int    $0x40
    3cc1:	c3                   	ret    

00003cc2 <write>:
SYSCALL(write)
    3cc2:	b8 10 00 00 00       	mov    $0x10,%eax
    3cc7:	cd 40                	int    $0x40
    3cc9:	c3                   	ret    

00003cca <close>:
SYSCALL(close)
    3cca:	b8 15 00 00 00       	mov    $0x15,%eax
    3ccf:	cd 40                	int    $0x40
    3cd1:	c3                   	ret    

00003cd2 <kill>:
SYSCALL(kill)
    3cd2:	b8 06 00 00 00       	mov    $0x6,%eax
    3cd7:	cd 40                	int    $0x40
    3cd9:	c3                   	ret    

00003cda <exec>:
SYSCALL(exec)
    3cda:	b8 07 00 00 00       	mov    $0x7,%eax
    3cdf:	cd 40                	int    $0x40
    3ce1:	c3                   	ret    

00003ce2 <open>:
SYSCALL(open)
    3ce2:	b8 0f 00 00 00       	mov    $0xf,%eax
    3ce7:	cd 40                	int    $0x40
    3ce9:	c3                   	ret    

00003cea <mknod>:
SYSCALL(mknod)
    3cea:	b8 11 00 00 00       	mov    $0x11,%eax
    3cef:	cd 40                	int    $0x40
    3cf1:	c3                   	ret    

00003cf2 <unlink>:
SYSCALL(unlink)
    3cf2:	b8 12 00 00 00       	mov    $0x12,%eax
    3cf7:	cd 40                	int    $0x40
    3cf9:	c3                   	ret    

00003cfa <fstat>:
SYSCALL(fstat)
    3cfa:	b8 08 00 00 00       	mov    $0x8,%eax
    3cff:	cd 40                	int    $0x40
    3d01:	c3                   	ret    

00003d02 <link>:
SYSCALL(link)
    3d02:	b8 13 00 00 00       	mov    $0x13,%eax
    3d07:	cd 40                	int    $0x40
    3d09:	c3                   	ret    

00003d0a <mkdir>:
SYSCALL(mkdir)
    3d0a:	b8 14 00 00 00       	mov    $0x14,%eax
    3d0f:	cd 40                	int    $0x40
    3d11:	c3                   	ret    

00003d12 <chdir>:
SYSCALL(chdir)
    3d12:	b8 09 00 00 00       	mov    $0x9,%eax
    3d17:	cd 40                	int    $0x40
    3d19:	c3                   	ret    

00003d1a <dup>:
SYSCALL(dup)
    3d1a:	b8 0a 00 00 00       	mov    $0xa,%eax
    3d1f:	cd 40                	int    $0x40
    3d21:	c3                   	ret    

00003d22 <getpid>:
SYSCALL(getpid)
    3d22:	b8 0b 00 00 00       	mov    $0xb,%eax
    3d27:	cd 40                	int    $0x40
    3d29:	c3                   	ret    

00003d2a <sbrk>:
SYSCALL(sbrk)
    3d2a:	b8 0c 00 00 00       	mov    $0xc,%eax
    3d2f:	cd 40                	int    $0x40
    3d31:	c3                   	ret    

00003d32 <sleep>:
SYSCALL(sleep)
    3d32:	b8 0d 00 00 00       	mov    $0xd,%eax
    3d37:	cd 40                	int    $0x40
    3d39:	c3                   	ret    

00003d3a <uptime>:
SYSCALL(uptime)
    3d3a:	b8 0e 00 00 00       	mov    $0xe,%eax
    3d3f:	cd 40                	int    $0x40
    3d41:	c3                   	ret    

00003d42 <chpr>:
SYSCALL(chpr)
    3d42:	b8 17 00 00 00       	mov    $0x17,%eax
    3d47:	cd 40                	int    $0x40
    3d49:	c3                   	ret    

00003d4a <cps>:

SYSCALL(cps)
    3d4a:	b8 16 00 00 00       	mov    $0x16,%eax
    3d4f:	cd 40                	int    $0x40
    3d51:	c3                   	ret    
    3d52:	66 90                	xchg   %ax,%ax
    3d54:	66 90                	xchg   %ax,%ax
    3d56:	66 90                	xchg   %ax,%ax
    3d58:	66 90                	xchg   %ax,%ax
    3d5a:	66 90                	xchg   %ax,%ax
    3d5c:	66 90                	xchg   %ax,%ax
    3d5e:	66 90                	xchg   %ax,%ax

00003d60 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    3d60:	55                   	push   %ebp
    3d61:	89 e5                	mov    %esp,%ebp
    3d63:	57                   	push   %edi
    3d64:	56                   	push   %esi
    3d65:	89 c6                	mov    %eax,%esi
    3d67:	53                   	push   %ebx
    3d68:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    3d6b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    3d6e:	85 db                	test   %ebx,%ebx
    3d70:	74 09                	je     3d7b <printint+0x1b>
    3d72:	89 d0                	mov    %edx,%eax
    3d74:	c1 e8 1f             	shr    $0x1f,%eax
    3d77:	84 c0                	test   %al,%al
    3d79:	75 75                	jne    3df0 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    3d7b:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
    3d7d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    3d84:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
    3d87:	31 ff                	xor    %edi,%edi
    3d89:	89 ce                	mov    %ecx,%esi
    3d8b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    3d8e:	eb 02                	jmp    3d92 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
    3d90:	89 cf                	mov    %ecx,%edi
    3d92:	31 d2                	xor    %edx,%edx
    3d94:	f7 f6                	div    %esi
    3d96:	8d 4f 01             	lea    0x1(%edi),%ecx
    3d99:	0f b6 92 07 59 00 00 	movzbl 0x5907(%edx),%edx
  }while((x /= base) != 0);
    3da0:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
    3da2:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    3da5:	75 e9                	jne    3d90 <printint+0x30>
  if(neg)
    3da7:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
    3daa:	89 c8                	mov    %ecx,%eax
    3dac:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
    3daf:	85 d2                	test   %edx,%edx
    3db1:	74 08                	je     3dbb <printint+0x5b>
    buf[i++] = '-';
    3db3:	8d 4f 02             	lea    0x2(%edi),%ecx
    3db6:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
    3dbb:	8d 79 ff             	lea    -0x1(%ecx),%edi
    3dbe:	66 90                	xchg   %ax,%ax
    3dc0:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
    3dc5:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3dc8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3dcf:	00 
    3dd0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    3dd4:	89 34 24             	mov    %esi,(%esp)
    3dd7:	88 45 d7             	mov    %al,-0x29(%ebp)
    3dda:	e8 e3 fe ff ff       	call   3cc2 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
    3ddf:	83 ff ff             	cmp    $0xffffffff,%edi
    3de2:	75 dc                	jne    3dc0 <printint+0x60>
    putc(fd, buf[i]);
}
    3de4:	83 c4 4c             	add    $0x4c,%esp
    3de7:	5b                   	pop    %ebx
    3de8:	5e                   	pop    %esi
    3de9:	5f                   	pop    %edi
    3dea:	5d                   	pop    %ebp
    3deb:	c3                   	ret    
    3dec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    3df0:	89 d0                	mov    %edx,%eax
    3df2:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    3df4:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    3dfb:	eb 87                	jmp    3d84 <printint+0x24>
    3dfd:	8d 76 00             	lea    0x0(%esi),%esi

00003e00 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    3e00:	55                   	push   %ebp
    3e01:	89 e5                	mov    %esp,%ebp
    3e03:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
    3e04:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    3e06:	56                   	push   %esi
    3e07:	53                   	push   %ebx
    3e08:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3e0b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
    3e0e:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    3e11:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
    3e14:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
    3e17:	0f b6 13             	movzbl (%ebx),%edx
    3e1a:	83 c3 01             	add    $0x1,%ebx
    3e1d:	84 d2                	test   %dl,%dl
    3e1f:	75 39                	jne    3e5a <printf+0x5a>
    3e21:	e9 c2 00 00 00       	jmp    3ee8 <printf+0xe8>
    3e26:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    3e28:	83 fa 25             	cmp    $0x25,%edx
    3e2b:	0f 84 bf 00 00 00    	je     3ef0 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3e31:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    3e34:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3e3b:	00 
    3e3c:	89 44 24 04          	mov    %eax,0x4(%esp)
    3e40:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
    3e43:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3e46:	e8 77 fe ff ff       	call   3cc2 <write>
    3e4b:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3e4e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    3e52:	84 d2                	test   %dl,%dl
    3e54:	0f 84 8e 00 00 00    	je     3ee8 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
    3e5a:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    3e5c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
    3e5f:	74 c7                	je     3e28 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    3e61:	83 ff 25             	cmp    $0x25,%edi
    3e64:	75 e5                	jne    3e4b <printf+0x4b>
      if(c == 'd'){
    3e66:	83 fa 64             	cmp    $0x64,%edx
    3e69:	0f 84 31 01 00 00    	je     3fa0 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    3e6f:	25 f7 00 00 00       	and    $0xf7,%eax
    3e74:	83 f8 70             	cmp    $0x70,%eax
    3e77:	0f 84 83 00 00 00    	je     3f00 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    3e7d:	83 fa 73             	cmp    $0x73,%edx
    3e80:	0f 84 a2 00 00 00    	je     3f28 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    3e86:	83 fa 63             	cmp    $0x63,%edx
    3e89:	0f 84 35 01 00 00    	je     3fc4 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    3e8f:	83 fa 25             	cmp    $0x25,%edx
    3e92:	0f 84 e0 00 00 00    	je     3f78 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3e98:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    3e9b:	83 c3 01             	add    $0x1,%ebx
    3e9e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3ea5:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    3ea6:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3ea8:	89 44 24 04          	mov    %eax,0x4(%esp)
    3eac:	89 34 24             	mov    %esi,(%esp)
    3eaf:	89 55 d0             	mov    %edx,-0x30(%ebp)
    3eb2:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
    3eb6:	e8 07 fe ff ff       	call   3cc2 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    3ebb:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3ebe:	8d 45 e7             	lea    -0x19(%ebp),%eax
    3ec1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3ec8:	00 
    3ec9:	89 44 24 04          	mov    %eax,0x4(%esp)
    3ecd:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    3ed0:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3ed3:	e8 ea fd ff ff       	call   3cc2 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3ed8:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    3edc:	84 d2                	test   %dl,%dl
    3ede:	0f 85 76 ff ff ff    	jne    3e5a <printf+0x5a>
    3ee4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    3ee8:	83 c4 3c             	add    $0x3c,%esp
    3eeb:	5b                   	pop    %ebx
    3eec:	5e                   	pop    %esi
    3eed:	5f                   	pop    %edi
    3eee:	5d                   	pop    %ebp
    3eef:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    3ef0:	bf 25 00 00 00       	mov    $0x25,%edi
    3ef5:	e9 51 ff ff ff       	jmp    3e4b <printf+0x4b>
    3efa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    3f00:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    3f03:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    3f08:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    3f0a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3f11:	8b 10                	mov    (%eax),%edx
    3f13:	89 f0                	mov    %esi,%eax
    3f15:	e8 46 fe ff ff       	call   3d60 <printint>
        ap++;
    3f1a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    3f1e:	e9 28 ff ff ff       	jmp    3e4b <printf+0x4b>
    3f23:	90                   	nop
    3f24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
    3f28:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
    3f2b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
    3f2f:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
    3f31:	b8 00 59 00 00       	mov    $0x5900,%eax
    3f36:	85 ff                	test   %edi,%edi
    3f38:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
    3f3b:	0f b6 07             	movzbl (%edi),%eax
    3f3e:	84 c0                	test   %al,%al
    3f40:	74 2a                	je     3f6c <printf+0x16c>
    3f42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3f48:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3f4b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
    3f4e:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3f51:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3f58:	00 
    3f59:	89 44 24 04          	mov    %eax,0x4(%esp)
    3f5d:	89 34 24             	mov    %esi,(%esp)
    3f60:	e8 5d fd ff ff       	call   3cc2 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
    3f65:	0f b6 07             	movzbl (%edi),%eax
    3f68:	84 c0                	test   %al,%al
    3f6a:	75 dc                	jne    3f48 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    3f6c:	31 ff                	xor    %edi,%edi
    3f6e:	e9 d8 fe ff ff       	jmp    3e4b <printf+0x4b>
    3f73:	90                   	nop
    3f74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3f78:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    3f7b:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3f7d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3f84:	00 
    3f85:	89 44 24 04          	mov    %eax,0x4(%esp)
    3f89:	89 34 24             	mov    %esi,(%esp)
    3f8c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
    3f90:	e8 2d fd ff ff       	call   3cc2 <write>
    3f95:	e9 b1 fe ff ff       	jmp    3e4b <printf+0x4b>
    3f9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    3fa0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    3fa3:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    3fa8:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    3fab:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3fb2:	8b 10                	mov    (%eax),%edx
    3fb4:	89 f0                	mov    %esi,%eax
    3fb6:	e8 a5 fd ff ff       	call   3d60 <printint>
        ap++;
    3fbb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    3fbf:	e9 87 fe ff ff       	jmp    3e4b <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    3fc4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    3fc7:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    3fc9:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3fcb:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3fd2:	00 
    3fd3:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    3fd6:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3fd9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    3fdc:	89 44 24 04          	mov    %eax,0x4(%esp)
    3fe0:	e8 dd fc ff ff       	call   3cc2 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
    3fe5:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    3fe9:	e9 5d fe ff ff       	jmp    3e4b <printf+0x4b>
    3fee:	66 90                	xchg   %ax,%ax

00003ff0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    3ff0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3ff1:	a1 80 62 00 00       	mov    0x6280,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
    3ff6:	89 e5                	mov    %esp,%ebp
    3ff8:	57                   	push   %edi
    3ff9:	56                   	push   %esi
    3ffa:	53                   	push   %ebx
    3ffb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3ffe:	8b 08                	mov    (%eax),%ecx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
    4000:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4003:	39 d0                	cmp    %edx,%eax
    4005:	72 11                	jb     4018 <free+0x28>
    4007:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4008:	39 c8                	cmp    %ecx,%eax
    400a:	72 04                	jb     4010 <free+0x20>
    400c:	39 ca                	cmp    %ecx,%edx
    400e:	72 10                	jb     4020 <free+0x30>
    4010:	89 c8                	mov    %ecx,%eax
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4012:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4014:	8b 08                	mov    (%eax),%ecx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4016:	73 f0                	jae    4008 <free+0x18>
    4018:	39 ca                	cmp    %ecx,%edx
    401a:	72 04                	jb     4020 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    401c:	39 c8                	cmp    %ecx,%eax
    401e:	72 f0                	jb     4010 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    4020:	8b 73 fc             	mov    -0x4(%ebx),%esi
    4023:	8d 3c f2             	lea    (%edx,%esi,8),%edi
    4026:	39 cf                	cmp    %ecx,%edi
    4028:	74 1e                	je     4048 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    402a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    402d:	8b 48 04             	mov    0x4(%eax),%ecx
    4030:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    4033:	39 f2                	cmp    %esi,%edx
    4035:	74 28                	je     405f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    4037:	89 10                	mov    %edx,(%eax)
  freep = p;
    4039:	a3 80 62 00 00       	mov    %eax,0x6280
}
    403e:	5b                   	pop    %ebx
    403f:	5e                   	pop    %esi
    4040:	5f                   	pop    %edi
    4041:	5d                   	pop    %ebp
    4042:	c3                   	ret    
    4043:	90                   	nop
    4044:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
    4048:	03 71 04             	add    0x4(%ecx),%esi
    404b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    404e:	8b 08                	mov    (%eax),%ecx
    4050:	8b 09                	mov    (%ecx),%ecx
    4052:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    4055:	8b 48 04             	mov    0x4(%eax),%ecx
    4058:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    405b:	39 f2                	cmp    %esi,%edx
    405d:	75 d8                	jne    4037 <free+0x47>
    p->s.size += bp->s.size;
    405f:	03 4b fc             	add    -0x4(%ebx),%ecx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
    4062:	a3 80 62 00 00       	mov    %eax,0x6280
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
    4067:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    406a:	8b 53 f8             	mov    -0x8(%ebx),%edx
    406d:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
    406f:	5b                   	pop    %ebx
    4070:	5e                   	pop    %esi
    4071:	5f                   	pop    %edi
    4072:	5d                   	pop    %ebp
    4073:	c3                   	ret    
    4074:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    407a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00004080 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    4080:	55                   	push   %ebp
    4081:	89 e5                	mov    %esp,%ebp
    4083:	57                   	push   %edi
    4084:	56                   	push   %esi
    4085:	53                   	push   %ebx
    4086:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4089:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    408c:	8b 1d 80 62 00 00    	mov    0x6280,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4092:	8d 48 07             	lea    0x7(%eax),%ecx
    4095:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
    4098:	85 db                	test   %ebx,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    409a:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
    409d:	0f 84 9b 00 00 00    	je     413e <malloc+0xbe>
    40a3:	8b 13                	mov    (%ebx),%edx
    40a5:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    40a8:	39 fe                	cmp    %edi,%esi
    40aa:	76 64                	jbe    4110 <malloc+0x90>
    40ac:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
    40b3:	bb 00 80 00 00       	mov    $0x8000,%ebx
    40b8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    40bb:	eb 0e                	jmp    40cb <malloc+0x4b>
    40bd:	8d 76 00             	lea    0x0(%esi),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    40c0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    40c2:	8b 78 04             	mov    0x4(%eax),%edi
    40c5:	39 fe                	cmp    %edi,%esi
    40c7:	76 4f                	jbe    4118 <malloc+0x98>
    40c9:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    40cb:	3b 15 80 62 00 00    	cmp    0x6280,%edx
    40d1:	75 ed                	jne    40c0 <malloc+0x40>
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
    40d3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    40d6:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    40dc:	bf 00 10 00 00       	mov    $0x1000,%edi
    40e1:	0f 43 fe             	cmovae %esi,%edi
    40e4:	0f 42 c3             	cmovb  %ebx,%eax
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
    40e7:	89 04 24             	mov    %eax,(%esp)
    40ea:	e8 3b fc ff ff       	call   3d2a <sbrk>
  if(p == (char*)-1)
    40ef:	83 f8 ff             	cmp    $0xffffffff,%eax
    40f2:	74 18                	je     410c <malloc+0x8c>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
    40f4:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
    40f7:	83 c0 08             	add    $0x8,%eax
    40fa:	89 04 24             	mov    %eax,(%esp)
    40fd:	e8 ee fe ff ff       	call   3ff0 <free>
  return freep;
    4102:	8b 15 80 62 00 00    	mov    0x6280,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
    4108:	85 d2                	test   %edx,%edx
    410a:	75 b4                	jne    40c0 <malloc+0x40>
        return 0;
    410c:	31 c0                	xor    %eax,%eax
    410e:	eb 20                	jmp    4130 <malloc+0xb0>
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    4110:	89 d0                	mov    %edx,%eax
    4112:	89 da                	mov    %ebx,%edx
    4114:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    4118:	39 fe                	cmp    %edi,%esi
    411a:	74 1c                	je     4138 <malloc+0xb8>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
    411c:	29 f7                	sub    %esi,%edi
    411e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
    4121:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
    4124:	89 70 04             	mov    %esi,0x4(%eax)
      }
      freep = prevp;
    4127:	89 15 80 62 00 00    	mov    %edx,0x6280
      return (void*)(p + 1);
    412d:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
    4130:	83 c4 1c             	add    $0x1c,%esp
    4133:	5b                   	pop    %ebx
    4134:	5e                   	pop    %esi
    4135:	5f                   	pop    %edi
    4136:	5d                   	pop    %ebp
    4137:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
    4138:	8b 08                	mov    (%eax),%ecx
    413a:	89 0a                	mov    %ecx,(%edx)
    413c:	eb e9                	jmp    4127 <malloc+0xa7>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    413e:	c7 05 80 62 00 00 84 	movl   $0x6284,0x6280
    4145:	62 00 00 
    base.s.size = 0;
    4148:	ba 84 62 00 00       	mov    $0x6284,%edx
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    414d:	c7 05 84 62 00 00 84 	movl   $0x6284,0x6284
    4154:	62 00 00 
    base.s.size = 0;
    4157:	c7 05 88 62 00 00 00 	movl   $0x0,0x6288
    415e:	00 00 00 
    4161:	e9 46 ff ff ff       	jmp    40ac <malloc+0x2c>
