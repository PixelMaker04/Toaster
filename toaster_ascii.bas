1 rem flying toaster
2 rem screensaver
3 poke53280,0:poke53281,0:print chr$(69)
5 print chr$(147)
10 v=53248
11 print"select speed (1-8)"
12 inputs%
13 ifs%<1ors%>8then12
14 print chr$(147):poke v+16,15
15 forn=0to62:reads0:poke832+n,s0:next
16 forn=0to62:reads1:poke896+n,s1:next
17 forn=0to62:reads2:poke960+n,s2:next
18 pokev+21,127
19 gosub8000
20 gosub6000:poke2040,n:pokev+39,c
21 gosub6000:poke2041,n:pokev+40,c
22 gosub6000:poke2042,n:pokev+41,c
23 gosub6000:poke2043,n:pokev+42,c
24 gosub6000:poke2044,n:pokev+43,c
25 gosub6000:poke2045,n:pokev+44,c
26 gosub6000:poke2046,n:pokev+45,c
27 gosub6000:poke2047,n:pokev+46,c
28 pokev+21,255:rem enable sprite(s)0-6
30 x0=68:y0=int(180*rnd(1)):c0=1
31 x1=68:y1=int(180*rnd(1)):c1=1
32 x2=68:y2=int(180*rnd(1)):c2=1
33 x3=68:y3=int(180*rnd(1)):c3=1
34 x4=int(255*rnd(1)):y4=0:c4=0
35 x5=int(255*rnd(1)):y5=0:c5=0
36 x6=int(255*rnd(1)):y6=0:c6=0
37 x7=int(255*rnd(1)):y7=0:c7=0
39 fora=0to10000
40 pokev+0,x0:pokev+1,y0:pokev+2,x1:pokev+3,y1
41 pokev+4,x2:pokev+5,y2:pokev+6,x3:pokev+7,y3
42 rem pokev+8,x4:pokev+9,y4:pokev+10,x5:pokev+11,y5
43 pokev+12,x6:pokev+13,y6:pokev+14,x7:pokev+15,y7
50 x0=x0-s%:y0=y0+s%/2:x1=x1-s%:y1=y1+s%/2:x2=x2-s%:y2=y2+s%/2
51 :x3=x3-s%:y3=y3+s%/2:x4=x4-s%:y4=y4+s%/2:x5=x5-s%:y5=y5+s%/2
52 x6=x6-s%:y6=y6+s%/2:x7=x7-s%:y7=y7+s%/2
55 gosub5000
56 gosub8500
60 nexta
65 gosub8000
70 goto39
1000 rem toasterv1 s0
1001 data0,0,0,0,0,0,0,7,0
1002 data7,56,192,9,199,48,30,63,28
1003 data49,248,228,44,199,4,35,56,4
1004 data32,192,196,44,71,52,47,72,76
1005 data39,70,50,36,65,130,36,64,98
1006 data48,64,252,12,71,0,3,120,0
1007 data0,192,0,0,0,0,0,0,0
1100 rem toasterv2 s1
1101 data0,0,0,0,127,0,31,128,192
1102 data44,60,48,47,243,204,35,143,2
1103 data70,120,254,112,199,2,76,24,2
1104 data67,33,194,92,206,50,83,80,74
1105 data89,76,62,79,67,130,71,64,98
1106 data70,64,28,50,64,224,12,71,0
1107 data3,120,0,0,192,0,0,0,0
1200 rem toastv1 s2
1201 data0,0,0,0,0,0,0,0,0
1202 data0,0,0,0,0,0,0,14,0
1203 data56,241,192,103,10,48,96,85,78
1204 data114,170,134,121,84,126,62,35,254
1205 data31,143,240,7,255,128,1,252,0
1206 data0,120,0,0,0,0,0,0,0
1207 data0,0,0,0,0,0,0,0,0
1500 rem 8x8 sprites
1501 data56,68,254,130,131,130,254,68
1502 data254,129,129,129,129,129,129,254
1503 data254,129,129,130,130,129,129,254


5000 ifx0<=0andc0=1thengosub7000
5001 ifx0<=0ory0>=255andc0=0thengosub7010
5002 ifx1<=0andc1=1thengosub7050
5003 ifx1<=0ory1>=255andc1=0thengosub7060
5004 ifx2<=0andc2=1thengosub7100
5005 ifx2<=0ory2>=255andc2=0thengosub7110
5006 ifx3<=0andc3=1thengosub7150
5007 ifx3<=0ory3>=255andc3=0thengosub7160

5008 ifx4<=0ory4>=255thengosub7200
5010 ifx5<=0ory5>=255thengosub7250
5012 ifx6<=0ory6>=255thengosub7300
5014 ifx7<=0ory7>=255thengosub7350


5050 return
6000 n=int(3*rnd(1)+13)
6001 ifn=13thenc=12
6002 ifn=14thenc=1
6003 ifn=15thenc=9
6010 return


7000 x0=255:y0=y0-1:c0=0:poke v+16,peek(v+16) - 1
7005 return

7010 x0=64:y0=int(180*rnd(1))+30:c0=1
7011 gosub6000
7012 poke v+16,peek(v+16) + 1:poke2040,n:pokev+39,c
7015 return


7050 x1=255:y1=y1-1:c1=0: poke v+16,peek(v+16) - 2
7055 return

7060 x1=64:y1=int(180*rnd(1))+30:c1=1
7061 gosub6000
7062 poke v+16,peek(v+16) + 2:poke2041,n:pokev+40,c
7065 return


7100 x2=255:y2=y2-1:c2=0:poke v+16,peek(v+16) - 4
7105 return


7110 x2=64:y2=int(180*rnd(1))+30:c2=1
7111 gosub6000
7112 poke v+16,peek(v+16) + 4:poke2042,n:pokev+41,c
7115 return



7150 x3=255:y3=y3-1:c3=0:poke v+16,peek(v+16) - 8 
7155 return

7160 x3=64:y3=int(180*rnd(1))+30:c3=1
7161 gosub6000
7162 poke v+16,peek(v+16) + 8:poke2043,n:pokev+42,c
7165 return



7200 x4=int(255*rnd(1)):y4=0
7201 gosub6000
7202 poke2044,n:pokev+43,c
7205 return
7250 x5=int(255*rnd(1)):y5=0
7251 gosub6000
7252 poke2045,n:pokev+44,c
7255 return
7300 x6=int(255*rnd(1)):y6=0
7301 gosub6000
7302 poke2046,n:pokev+45,c
7305 return
7350 x7=int(255*rnd(1)):y7=0
7351 gosub6000
7352 poke2047,n:pokev+46,c
7355 return
8000 print chr$(147):forn=1to100
8001 r=54272
8005 gosub8100
8015 pokei,t
8020 pokei+r,c+1
8025 nextn
8030 return
8100 c=int(rnd(1)*15)
8105 i=1024+int(rnd(1)*1000)
8110 t=42+int(rnd(1)*5)
8115 return
8500 i=1024+int(rnd(1)*1000)
8510 c=int(rnd(1)*15)
8520 pokei+r,c+1
8525 return
