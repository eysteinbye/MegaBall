uses
  Crt, Graph;
var
  PX,YX,Gd, Gm,x,CC,xx,m,n,y,s,z,Sum,Jumper,Ta,tB,Tc,Td,Te,Tf,Tg,Th : Integer;
  Ch : Char;
  pBak,VPP,Xp,BP,P,PBYE,PP,PPP,PPPP,PPPPP      : pointer;
  Bak : Integer;
  SizeBak,VSS,XSize,SS,SSSSSize,SSSSize,SSSize,SSize,Size,SizeBYE   : Word;
  YYY,Liv,TAA,TAB,TAC,TAD,TAE,TAF,TAG,TAH,TAI,TAJ,TAK : Integer;
  OldPattern : FillPatternType;
Label Left,Right,bye,Exit,MW,Treff,Blok,TreffA,NTreff,Der,TreffB,TreffC;
Label TreffD,TreffE,TreffF,TreffG,TreffH,TreffI,TreffJ,TreffK,HSkro,VSkro;
Label LivEs,Rep,Jump,Fast,NFast,Fastere,NNFast,SSEE,NNTreff,BlokB,BTreff,BTreffA;
lABEL BTreffB,BTreffC,BTreffD,BTreffE,BTreffF,BTreffG,BTreffH,BFast;
Const
  Gray50 : FillPatternType = ($AA, $0, $AA,
    $0, $AA, $0, $AA, $0);

Procedure Ball;
Begin
   SetCOlor(White);
   Line(4,2,8,2);   Line(3,3,9,3);   Line(3,4,9,4);
   Line(2,5,10,5);   Line(2,6,10,6);   Line(3,7,9,7);
   Line(3,8,9,8);   Line(4,9,8,9);
   PutPixel(7,2,7);   PutPixel(7,3,7);   PutPixel(8,2,7);
   PutPixel(8,3,7);   PutPixel(8,4,7);   PutPixel(9,3,7);
   PutPixel(9,4,7);   PutPixel(6,2,7);   PutPixel(10,5,7);
End;
Procedure VBlock;
Begin
  SetColor(Blue);
  Rectangle(0,0,50,20);
  Rectangle(1,1,49,19);
  Rectangle(2,2,48,18);
  SetColor(11);
  Rectangle(3,3,47,17);
  Rectangle(4,4,46,16);
  SetColor(9);
  Rectangle(5,5,45,15);
  Rectangle(6,6,44,14);
  Rectangle(7,7,43,13);
  Rectangle(8,8,42,12);
  Rectangle(9,9,41,11);
  SetColor(1);
  Line(10,10,40,10);
End;

Procedure kBlock;
Begin
SetColor(Green);
Rectangle(2,2,49,19);
Rectangle(3,3,48,18);
Rectangle(4,4,47,17);
Rectangle(5,5,46,16);
Rectangle(6,6,45,15);
Rectangle(7,7,44,14);
Rectangle(8,8,43,13);
Rectangle(9,9,42,12);
Rectangle(10,10,41,11);
SetCOlor(8);
Line(2,2,5,5);
Line(49,2,46,5);
Line(2,19,5,16);
Line(49,19,46,16);
Line(5,5,46,5);
Line(5,16,46,16);
Line(5,5,5,16);
Line(46,5,46,16);
End;


Procedure XBlock;
Begin
SetColor(White);
Rectangle(2,2,49,19);
Rectangle(3,3,48,18);
Rectangle(4,4,47,17);
Rectangle(5,5,46,16);
Rectangle(6,6,45,15);
Rectangle(7,7,44,14);
Rectangle(8,8,43,13);
Rectangle(9,9,42,12);
Rectangle(10,10,41,11);
SetColor(green);
Line(1,1,50,20);
Line(1,20,50,1);
SetColor(8);
Rectangle(1,1,50,20);
End;

Procedure Pin;
Begin
   SetColor(8);
   Line(3,3,63,3);
   SetColor(7);
   Line(2,4,64,4);
   Line(2,5,64,5);

   Line(1,6,65,6);
   SetColor(White);
   Line(1,7,65,7);
   SetColor(7);

   Line(2,8,64,8);
   Line(2,9,64,9);
   SetColor(8);
   Line(3,10,63,10);
   SetColor(6);
   Line(5,3,5,10);
   Line(6,3,6,10);
   Line(60,3,60,10);
   Line(61,3,61,10);
   PutPixel(60,7,Yellow);
   PutPixel(61,7,Yellow);
   PutPixel(60,6,Yellow);
   PutPixel(61,6,Yellow);
   PutPixel(5,7,Yellow);
   PutPixel(6,7,Yellow);
   PutPixel(5,6,Yellow);
   PutPixel(6,6,Yellow);
End;

Begin
  Gd := Detect; InitGraph(Gd, Gm, '\tp\bgi');
  if GraphResult <> grOk then Halt(1);
  SetBkColor(Bak);

  SetColor(8);
  Line(6,3,7,3);  Line(15,3,16,3);
  Line(5,4,7,4);  Line(15,4,17,4);
             SetColor(7);
             Line(4,5,17,5);
             Line(3,6,18,6);
             SetColor(White);
             Line(2,7,19,7);
             SetColor(7);
             Line(3,8,18,8);
             Line(4,9,17,9);
             SetColor(8);
  Line(5,10,7,10);  Line(15,10,17,10);
  Line(6,11,7,11);  Line(15,11,16,11);
  SetColor(magenta);
  Line(8,5,8,9);
  Line(9,5,9,9);
  Line(14,5,14,9);
  Line(13,5,13,9);
SSSSize := ImageSize(1,1,20,14);
GetMem(PPPP, SSSSize);
GetImage(1,1,20,14,PPPP^);
   ClearDevice;
GetFillPattern(OldPattern);
SetFillStyle(6, Red);
Bar(0, 0, 48, 18);
XSize := ImageSize(0,0,50,20);
GetMem(XP, XSize); 
GetImage(0,0,50,20,XP^);

ClearDevice;
  SetTextStyle(1,0,3);
  SetBKColor(LightBlue);
  setcolor(Magenta);
  OutTextXY(10,1,'MegaWear');
  TextColor(Yellow);
  Rectangle(1,1,((getMaxX-1)),(GetMaxY-1));
  TextColor(LightBlue);
  SetTextStyle(0,0,1);
  setcolor(LightGreen);

setcolor(Yellow);
OutTextXY(3,21,'                    Help');
setcolor(Magenta);
OutTextXY(3,31,'-------------------------------------------------------------------------------');
setcolor(LightGreen);
OutTextXY(3,41,'        MegaBO Helper');
PutImage(3,71, PPPP^, NormalPut);
OutTextXY(28,71,'This is a Jumper Used by "SPACE"');
OutTextXY(28,91,'Use "TAB" for Big jumps');
Readln;

  Liv:=3;  S:=1;   Z:=1;    TAA:=0;  TAB:=0;  TAC:=0;  TAD:=0;
  TAE:=0;  TAF:=0; TAG:=0;  TAH:=0;  TAI:=0;  TAJ:=0;  TAK:=0;
  M:=0;   N:=1;    Y:=400;  Sum:=0;  Jumper:=5;
  BAK:=Black;
  YYY:=1; PX:=50;  YX:=60;
  TA:=0;TB:=0;TC:=0;TD:=0;TE:=0;Tf:=0;Tg:=0;Th:=0;
   ClearDevice;

   SetColor(8);
   SetBKColor(BAK);
   Line(3,10,63,10);
   SetColor(7);
   Line(2,11,64,11);
   Line(2,12,64,12);
   Line(1,13,65,13);
   SetColor(White);
   Line(1,14,65,14);
   SetColor(7);
   Line(2,15,64,15);
   Line(2,16,64,16);
   SetColor(8);
   Line(3,17,63,17);
   SetColor(6);
   Line(5,10,5,16);
   Line(6,10,6,16);
   Line(60,10,60,16);
   Line(61,10,61,16);
   PutPixel(60,14,Yellow);
   PutPixel(61,14,Yellow);
   PutPixel(60,13,Yellow);
   PutPixel(61,13,Yellow);
   PutPixel(5,14,Yellow);
   PutPixel(6,14,Yellow);
   PutPixel(5,13,Yellow);
   PutPixel(6,13,Yellow);
   SetCOlor(White);
   Line(34,2,38,2);   Line(33,3,39,3);   Line(33,4,39,4);
   Line(32,5,40,5);   Line(32,6,40,6);   Line(33,7,39,7);
   Line(33,8,39,8);   Line(34,9,38,9);
   PutPixel(37,2,7);   PutPixel(37,3,7);   PutPixel(38,2,7);
   PutPixel(38,3,7);   PutPixel(38,4,7);   PutPixel(39,3,7);
   PutPixel(39,4,7);   PutPixel(36,2,7);   PutPixel(40,5,7);
  SSize := ImageSize(1,1,65,18);
  GetMem(PP, SSize);
  GetImage(1,1,65,18,PP^);
  ClearDevice;
VBlock;
  VSS := ImageSize(0,0,50,20);
  GetMem(VPP, VSS);
  GetImage(0,0,50,20,VPP^);
  ClearDevice;

XBlock;
  SS := ImageSize(1,1,50,20);
  GetMem(BP, SS);
  GetImage(1,1,50,20,BP^);
  ClearDevice;

  SetColor(BAK);
  Rectangle(0,0,49,20);
  Rectangle(1,1,48,19);
  Rectangle(2,2,47,18);
  Rectangle(3,3,46,17);
  Rectangle(4,4,45,16);
  Rectangle(5,5,44,15);
  Rectangle(6,6,43,14);
  Rectangle(7,7,42,13);
  Rectangle(8,8,41,12);
  Rectangle(9,9,40,11);
  Line(10,10,40,10);
  SizeBak := ImageSize(0,0,50,20);
  GetMem(PBak, SizeBak);
  GetImage(0,0,50,20,PBak^);

Pin;
  SizeBYE := ImageSize(1,1,65,10);
  GetMem(PBYE, SizeBYE);
  GetImage(1,1,65,10,PBYE^);
  ClearDevice;

  Ball;
   Size := ImageSize(0,0,12,12);
   GetMem(P, Size);
   GetImage(0,0,12,12,P^);
  ClearDevice;

  SetColor(Bak);
  Line(6,3,7,3);  Line(15,3,16,3);
  Line(5,4,7,4);  Line(15,4,17,4);
             Line(4,5,17,5);
             Line(3,6,18,6);
             Line(2,7,19,7);
             Line(3,8,18,8);
             Line(4,9,17,9);
  Line(5,10,7,10);  Line(15,10,17,10);
  Line(6,11,7,11);  Line(15,11,16,11);
  Line(8,5,8,9);
  Line(9,5,9,9);
SSSSSize := ImageSize(1,1,20,14);
GetMem(PPPPP, SSSSSize);
GetImage(1,1,20,14,PPPPP^);
   ClearDevice;

Line(2,2,28,2);
Line(3,3,29,3);
Line(4,4,30,4);
Line(4,5,30,5);
Line(3,6,29,6);
Line(2,7,28,7);
SSSize := ImageSize(1,1,31,8);
GetMem(PPP, SSSize);
GetImage(1,1,31,8,PPP^);
SetColor(Green);
ClearDevice;
XX:=200;
Repeat;
PutImage(PX, YX, XP^, NormalPut);
XX:=XX+CC;
IF XX=600 Then CC:=-10;
IF XX=30 Then CC:=10;
PX:=PX+50;
IF PX>700 Then
          Begin
          PX:=50;
          YX:=YX+20;
          End;
Until YX>350;


    SetColor(8);
    Rectangle(0, 0, GetMaxX, 9);
    Rectangle(1, 1, GetMaxX-1, 8);
    SetColor(7);
    Rectangle(2, 2, GetMaxX-2, 7);
    Rectangle(3, 3, GetMaxX-3, 6);
    SetColor(White);
    Rectangle(4, 4, GetMaxX-4, 5);
    SetColor(8);
    Rectangle(0, 0, 9, GetMaxY);
    Rectangle(1, 2, 8, GetMaxY-1);
    SetColor(7);
    Rectangle(2, 2, 7, GetMaxY-2);
    Rectangle(3, 3, 6, GetMaxY-3);
    SetColor(White);
    Rectangle(4, 4, 5, GetMaxY-4);
    SetColor(8);
    Rectangle(GetMaxX-9, 0,GetMaxX ,GetMaxY);
    Rectangle(GetMaxX-8, 1,GetMaxX-1 ,GetMaxY-1);
    SetColor(7);
    Rectangle(GetMaxX-7, 2,GetMaxX-2 ,GetMaxY-2);
    Rectangle(GetMaxX-6, 3,GetMaxX-3 ,GetMaxY-3);
    SetColor(White);
    Rectangle(GetMaxX-5, 4,GetMaxX-4 ,GetMaxY-4);
    PutPixel(8,2,7);
    PutPixel(8,3,7);
    PutPixel(9,2,7);
    PutPixel(9,3,7);
    PutPixel(6,4,White);
    PutPixel(6,5,White);
    PutPixel(7,4,White);
    PutPixel(7,5,White);
    PutPixel(8,4,White);
    PutPixel(8,5,White);
    PutPixel(9,4,White);
    PutPixel(9,5,White);
    PutPixel(8,6,7);
    PutPixel(8,7,7);
    PutPixel(9,6,7);
    PutPixel(9,7,7);

    PutPixel(GetMaxX-8,2,7);
    PutPixel(GetMaxX-8,3,7);
    PutPixel(GetMaxX-9,2,7);
    PutPixel(GetMaxX-9,3,7);
    PutPixel(GetMaxX-6,4,White);
    PutPixel(GetMaxX-6,5,White);
    PutPixel(GetMaxX-7,4,White);
    PutPixel(GetMaxX-7,5,White);
    PutPixel(GetMaxX-8,4,White);
    PutPixel(GetMaxX-8,5,White);
    PutPixel(GetMaxX-9,4,White);
    PutPixel(GetMaxX-9,5,White);
    PutPixel(GetMaxX-8,6,7);
    PutPixel(GetMaxX-8,7,7);
    PutPixel(GetMaxX-9,6,7);
    PutPixel(GetMaxX-9,7,7);

  SetColor(8);
  Line(82,460,98,460);
  Line(52,460,68,460);
  Line(22,460,38,460);
  SetColor(7);
  Line(81,461,99,461);
  Line(51,461,69,461);
  Line(21,461,39,461);
  SetColor(White);
  Line(20,462,40,462);
  Line(80,462,100,462);
  Line(80,463,100,463);
  Line(50,462,70,462);
  Line(50,463,70,463);
  Line(20,463,40,463);
  SetColor(7);
  Line(51,464,69,464);
  Line(81,464,99,464);
  Line(21,464,39,464);
  SetColor(8);
  Line(52,465,68,465);
  Line(82,465,98,465);
  Line(22,465,38,465);

  SetColor(LightRed);
  Line(23,460,23,465);
  Line(24,460,24,465);
  Line(37,460,37,465);
  Line(36,460,36,465);

  Line(53,460,53,465);
  Line(54,460,54,465);
  Line(67,460,67,465);
  Line(66,460,66,465);

  Line(83,460,83,465);
  Line(84,460,84,465);
  Line(97,460,97,465);
  Line(96,460,96,465);
PutImage(50,50, VPP^, NormalPut);
PutImage(100,50, VPP^, NormalPut);
PutImage(150,50, VPP^, NormalPut);
PutImage(200,50, VPP^, NormalPut);
PutImage(250,50, VPP^, NormalPut);
PutImage(300,50, VPP^, NormalPut);
PutImage(350,50, VPP^, NormalPut);
PutImage(400,50, VPP^, NormalPut);
PutImage(450,50, VPP^, NormalPut);
PutImage(500,50, VPP^, NormalPut);
PutImage(550,50, VPP^, NormalPut);

PutImage(125,130, BP^, NormalPut);
PutImage(475,130, BP^, NormalPut);
PutImage(301,30, BP^, NormalPut);

PutImage(500,460, PPPP^, NormalPut);
PutImage(525,460, PPPP^, NormalPut);
PutImage(550,460, PPPP^, NormalPut);
PutImage(575,460, PPPP^, NormalPut);
PutImage(600,460, PPPP^, NormalPut);
PutImage(50,70, BP^, NormalPut);
PutImage(100,70, VPP^, NormalPut);
PutImage(150,70, VPP^, NormalPut);
PutImage(200,70, VPP^, NormalPut);
PutImage(250,70, VPP^, NormalPut);
PutImage(300,70, VPP^, NormalPut);
PutImage(350,70, BP^, NormalPut);
PutImage(400,70, VPP^, NormalPut);
PutImage(450,70, VPP^, NormalPut);
PutImage(500,70, BP^, NormalPut);
PutImage(550,70, VPP^, NormalPut);


Rep:
M:=0;   N:=1;
Repeat

           PutImage(xx,393, PP^, 0);
           if xx>(GetMaxX-75) then xx:=(GetMaxX-75);
           if xx<10 then xx:=10;

Until KeyPressed;
Ch := ReadKey;
if Ch = (Chr(13)) then
                  Begin
                  X:=XX+20;
                  GoTo Bye;
                  End;
if Ch = (Chr(75)) then
                  Begin
                  XX:=XX-22;
                  X:=XX+20;
                  SetColor(BAK);
                  Line(10,396,GetMaxX-10,396);
                  Line(10,397,GetMaxX-10,397);
                  Line(10,398,GetMaxX-10,398);
                  Line(10,399,GetMaxX-10,399);
                  Line(10,400,GetMaxX-10,400);
                  Line(10,401,GetMaxX-10,401);
                  Line(10,402,GetMaxX-10,402);
                  Line(10,403,GetMaxX-10,403);
                  Line(10,404,GetMaxX-10,404);
                  Line(10,405,GetMaxX-10,405);
                  Line(10,406,GetMaxX-10,406);
                  Line(10,407,GetMaxX-10,407);
                  Line(10,408,GetMaxX-10,408);
                  Line(10,409,GetMaxX-10,409);
                  GoTo Rep;
                  End;
if Ch = (Chr(77)) then
                  Begin
                  XX:=XX+22;
                  X:=XX+20;
                  SetColor(BAK);
                  Line(10,396,GetMaxX-10,396);
                  Line(10,397,GetMaxX-10,397);
                  Line(10,398,GetMaxX-10,398);
                  Line(10,399,GetMaxX-10,399);
                  Line(10,400,GetMaxX-10,400);
                  Line(10,401,GetMaxX-10,401);
                  Line(10,402,GetMaxX-10,402);
                  Line(10,403,GetMaxX-10,403);
                  Line(10,404,GetMaxX-10,404);
                  Line(10,405,GetMaxX-10,405);
                  Line(10,406,GetMaxX-10,406);
                  Line(10,407,GetMaxX-10,407);
                  Line(10,408,GetMaxX-10,408);
                  Line(10,409,GetMaxX-10,409);
                  GoTo Rep;
                  End
Else goto Rep;




BYE:

Repeat

           PutImage(xx,400, PBYE^, NormalPut);
           if xx>(GetMaxX-75) then xx:=(GetMaxX-75);
           if xx<10 then xx:=10;

    Sum:=TAA+TAB+TAC+TAD+TAE+TAF+TAG+TAH+TAI+TAJ+TAK+Ta+Tb+Tc+td+TE+TF+TG+TH;
    if Sum=19 Then GoTo Exit;
    PutImage(x, y, P^, XorPut);
    Delay(7);
    PutImage(x, y, P^, XorPut);
   if n=0 then
         begin
         y:=y+Z;
         end;
  if n=1 then
         begin
         y:=y-Z;
         end;
  if y=(400) then goto MW;
  IF Y = 61 Then GoTo BLOK;
  IF Y = 81 Then GoTo BLOKB;
  IF Y = 21 Then GoTo Fast;
  IF Y = 121 Then Goto Fastere;
  IF Y = 141 Then Goto Fastere;
{  IF y < 40 Then GoTo Der;
   IF y > 80 Then GoTo Der;
   Else goto Blok;}
IF YYY>=70 Then
           Begin
           PutImage(200,YYY,PPP^, NormalPut);
           YYY:=YYY+2;
           GoTo Der;
           End
Else goto Der;

Der:
  if y < 11 then n:=0;

    if m=0 then
         begin
         x:=x+s;
         end;
  if m=1 then
         begin
         x:=x-s;
         end;
  if x > (getMaxX-25) then m:=1;
  if x < 11 then m:=0;

Until KeyPressed;
Ch := ReadKey;
if Ch = (Chr(13)) then goto exit;
if Ch = (Chr(9)) then
                 Begin
                 IF X > XX Then
                           Begin
                           XX:=XX+45;
                           End;
                 If X < XX Then
                           Begin
                           XX:=XX-45;
                           End;
                  SetColor(BAK);
                  Line(10,394,GetMaxX-10,394);
                  Line(10,395,GetMaxX-10,395);
                  Line(10,396,GetMaxX-10,396);
                  Line(10,397,GetMaxX-10,397);
                  Line(10,398,GetMaxX-10,398);
                  Line(10,399,GetMaxX-10,399);
                  Line(10,400,GetMaxX-10,400);
                  Line(10,401,GetMaxX-10,401);
                  Line(10,402,GetMaxX-10,402);
                  Line(10,403,GetMaxX-10,403);
                  Line(10,404,GetMaxX-10,404);
                  Line(10,405,GetMaxX-10,405);
                  Line(10,406,GetMaxX-10,406);
                  Line(10,407,GetMaxX-10,407);
                  Line(10,408,GetMaxX-10,408);
                  Line(10,409,GetMaxX-10,409);
                 End;
if Ch = (Chr(32)) then GoTo Jump;
if Ch = (Chr(104)) then Liv:=8;
if Ch = (Chr(75)) then goto LEFT;
if Ch = (Chr(77)) then goto Right
Else goto BYE;

Fast:
if x < 300 THEN GOTO der;
if x > 350 THEN GOTO der
Else goto NFast;

Fastere:
IF X < 125 Then GoTo der;
IF X > 525 Then GoTo der
Else goto ssee;

SSEE:
IF x < 175 then goto NNfast;
IF X > 475 then goto NNfast
Else goto Der;

BlokB:
if x < 50 THEN GOTO der;
if x > 590 THEN GOTO der
Else goto BTreff;

BTreff:
If X < 100 Then GoTo BFast;
If X < 150 Then GoTo BTreffA;
If X < 200 Then GoTo BTreffB;
If X < 250 Then GoTo BTreffC;
If X < 300 Then GoTo BTreffD;
If X < 350 Then GoTo BTreffE;
If X < 400 Then GoTo BFast;
If X < 450 Then GoTo BTreffF;
If X < 500 Then GoTo BTreffG;
If X < 550 Then GoTo BFast;
If X < 590 Then GoTo BTreffH;


Blok:
if x < 50 THEN GOTO der;
if x > 590 THEN GOTO der
Else goto Ntreff;

NTreff:
If X < 100 Then GoTo TreffA;
If X < 150 Then GoTo TreffB;
If X < 200 Then GoTo TreffC;
If X < 250 Then GoTo TreffD;
If X < 300 Then GoTo TreffE;
If X < 350 Then GoTo TreffF;
If X < 400 Then GoTo TreffG;
If X < 450 Then GoTo TreffH;
If X < 500 Then GoTo TreffI;
If X < 550 Then GoTo TreffJ;
If X < 590 Then GoTo TreffK;

BTreffA:
IF TA=1 then goto Der;
IF TA=0 then
            Begin
TA:=1;
Sound(300);
Delay(20);
NoSound;
If Y < 61 Then
            Begin
            N:=0;
            GoTo Der;
            End;

If Y > 100 Then
            Begin
            N:=0;
            GoTo Der;
            End

Else
    Begin
PutImage(100,70, PBak^, NormalPut);
If N=0 Then N:=1
Else N:=0;
goto Der;
End;

End;

BTreffb:
IF TB=1 then goto Der;
IF TB=0 then
Begin
TB:=1;
Sound(300);
Delay(20);
NoSound;
If Y < 61 Then
            Begin
            N:=0;
            GoTo Der;
            End;

If Y > 100 Then
            Begin
            N:=0;
            GoTo Der;
            End

Else
    Begin
PutImage(150,70, PBak^, NormalPut);
If N=0 Then N:=1
Else N:=0;
goto Der;
End;
End;
BTreffC:
IF TC=1 then goto Der;
IF TC=0 then
TC:=1;
Sound(300);
Delay(20);
NoSound;
If Y < 61 Then
           Begin
            N:=0;
            GoTo Der;
            End;

If Y > 100 Then
            Begin
            N:=0;
            GoTo Der;
            End

Else
    Begin
PutImage(200,70, PBak^, NormalPut);
    Begin
If N=0 Then N:=1
Else N:=0;
goto Der;
End;
End;
BTreffD:
IF TD=1 then goto Der;
IF TD=0 then
Begin
TD:=1;
Sound(300);
Delay(20);
NoSound;
If Y < 61 Then
            Begin
            N:=0;
           GoTo Der;
            End;

If Y > 100 Then
            Begin
            N:=0;
            GoTo Der;
            End

Else
    Begin
PutImage(250,70, PBak^, NormalPut);
If N=0 Then N:=1
Else N:=0;
goto Der;
End;
End;

BTreffE:
IF TE=1 then goto Der;
IF TE=0 then
Begin
TE:=1;
Sound(300);
Delay(20);
NoSound;
If Y < 61 Then
            Begin
            N:=0;
            GoTo Der;
            End;

If Y > 100 Then
            Begin
            N:=0;
            GoTo Der;
            End

Else
    Begin
PutImage(300,70, PBak^, NormalPut);
If N=0 Then N:=1
Else N:=0;
goto Der;
End;
End;

BTreffF:
IF Tf=1 then goto Der;
IF Tf=0 then
Begin
Tf:=1;
Sound(300);
Delay(20);
NoSound;
If Y < 61 Then
            Begin
            N:=0;
           GoTo Der;
            End;

If Y > 100 Then
            Begin
            N:=0;
            GoTo Der;
            End

Else
    Begin
PutImage(400,70, PBak^, NormalPut);
    Begin
If N=0 Then N:=1
Else N:=0;
    End;
goto Der;
End;
End;

BTreffg:
IF Tg=1 then goto Der;
IF Tg=0 then
Begin
Tg:=1;
Sound(300);
Delay(20);
NoSound;
If Y < 61 Then
            Begin
            N:=0;
           GoTo Der;
            End;

If Y > 100 Then
            Begin
            N:=0;
            GoTo Der;
            End

Else
    Begin
PutImage(350,70, PBak^, NormalPut);
    Begin
If N=0 Then N:=1
Else N:=0;
    End;
goto Der;
End;
End;

BTreffH:
IF TH=1 then goto Der;
IF TH=0 then
Begin
TH:=1;
Sound(300);
Delay(20);
NoSound;
If Y < 61 Then
            Begin
            N:=0;
           GoTo Der;
            End;

If Y > 100 Then
            Begin
            N:=0;
            GoTo Der;
            End

Else
    Begin
PutImage(450,70, PBak^, NormalPut);
If N=0 Then N:=1
Else N:=0;
    End;
goto Der;
End;


NFast:
Sound(200);
Delay(30);
NoSound;
If Y < 21 Then
           Begin
            N:=0;
            GoTo Der;
            End;

If Y > 60 Then
            Begin
            N:=0;
            GoTo Der;
            End

Else
    Begin
If N=0 Then N:=1
Else N:=0;
goto Der;
    End;
BFast:
Sound(200);
Delay(30);
NoSound;
If Y < 61 Then
           Begin
            N:=1;
            GoTo Der;
            End;

If Y > 100 Then
           Begin
            N:=1;
            GoTo Der;
            End

Else
    Begin
If N=0 Then N:=1
Else N:=0;
goto Der;
    End;

NNFast:
Sound(200);
Delay(30);
NoSound;
If Y < 121 Then
           Begin
            N:=1;
            GoTo Der;
            End;

If Y > 160 Then
           Begin
            N:=1;
            GoTo Der;
            End

Else
    Begin
If N=0 Then N:=1
Else N:=0;
goto Der;
    End;

TreffA:
IF TAA=1 then goto Der;
IF TAA=0 then
Begin
TAA:=1;
Sound(300);
Delay(20);
NoSound;
If Y < 41 Then
            Begin
            N:=0;
            GoTo Der;
            End;

If Y > 80 Then
            Begin
            N:=0;
            GoTo Der;
            End

Else
    Begin
If N=0 Then N:=1
Else N:=0;
    End;
  SetColor(BAK);
  Rectangle(50,50,100,70);
  Rectangle(51,51,99,69);
  Rectangle(52,52,98,68);
  Rectangle(53,53,97,67);
  Rectangle(54,54,96,66);
  Rectangle(55,55,95,65);
  Rectangle(56,56,94,64);
  Rectangle(57,57,93,63);
  Rectangle(58,58,92,62);
  Rectangle(59,59,91,61);
  Line(60,60,90,60);
goto Der;
End;


TreffB:
IF TAB=1 then goto Der;
IF TAB=0 then
Begin
TAB:=1;
Sound(300);
Delay(20);
NoSound;
If Y < 41 Then
            Begin
            N:=0;
            GoTo Der;
            End;

If Y > 80 Then
            Begin
            N:=0;
            GoTo Der;
            End

Else
    Begin
If N=0 Then N:=1
Else N:=0;
    End;
  SetColor(BAK);
  Rectangle(100,50,149,70);
  Rectangle(101,51,148,69);
  Rectangle(102,52,147,68);
  Rectangle(103,53,146,67);
  Rectangle(104,54,145,66);
  Rectangle(105,55,144,65);
  Rectangle(106,56,143,64);
  Rectangle(107,57,142,63);
  Rectangle(108,58,141,62);
  Rectangle(109,59,140,61);
  Line(110,60,140,60);
goto Der;
End;

TreffC:
IF TAC=1 then goto Der;
IF TAC=0 then
Begin
TAC:=1;
Sound(300);
Delay(20);
NoSound;
If Y < 41 Then
            Begin
            N:=0;
            GoTo Der;
            End;

If Y > 80 Then
            Begin
            N:=0;
            GoTo Der;
            End

Else
    Begin
If N=0 Then N:=1
Else N:=0;
    End;
  SetColor(BAK);
  Rectangle(150,50,199,70);
  Rectangle(151,51,198,69);
  Rectangle(152,52,197,68);
  Rectangle(153,53,196,67);
  Rectangle(154,54,195,66);
  Rectangle(155,55,194,65);
  Rectangle(156,56,193,64);
  Rectangle(157,57,192,63);
  Rectangle(158,58,191,62);
  Rectangle(159,59,190,61);
  Line(160,60,190,60);
goto Der;
end;

TreffD:
IF TAD=1 then goto Der;
IF TAD=0 then
Begin
TAD:=1;
Sound(300);
Delay(20);
NoSound;
If Y < 41 Then
            Begin
            N:=0;
            GoTo Der;
            End;

If Y > 80 Then
            Begin
            N:=0;
            GoTo Der;
            End

Else
    Begin
If N=0 Then N:=1
Else N:=0;
    End;
  SetColor(BAK);
  Rectangle(200,50,249,70);
  Rectangle(201,51,248,69);
  Rectangle(202,52,247,68);
  Rectangle(203,53,246,67);
  Rectangle(204,54,245,66);
  Rectangle(205,55,244,65);
  Rectangle(206,56,243,64);
  Rectangle(207,57,242,63);
  Rectangle(208,58,241,62);
  Rectangle(209,59,240,61);
  Line(210,60,240,60);
goto Der;
end;

TreffE:
IF TAE=1 then goto Der;
IF TAE=0 then
Begin
TAE:=1;
Sound(300);
Delay(20);
NoSound;
If Y < 41 Then
            Begin
            N:=0;
            GoTo Der;
            End;

If Y > 80 Then
            Begin
            N:=0;
            GoTo Der;
            End

Else
    Begin
If N=0 Then N:=1
Else N:=0;
    End;
  SetColor(BAK);
  Rectangle(250,50,299,70);
  Rectangle(251,51,298,69);
  Rectangle(252,52,297,68);
  Rectangle(253,53,296,67);
  Rectangle(254,54,295,66);
  Rectangle(255,55,294,65);
  Rectangle(256,56,293,64);
  Rectangle(257,57,292,63);
  Rectangle(258,58,291,62);
  Rectangle(259,59,290,61);
  Line(260,60,290,60);
goto Der;
end;

TreffF:
IF TAF=1 then goto Der;
IF TAF=0 then
Begin
TAF:=1;
Sound(300);
Delay(20);
NoSound;
If Y < 41 Then
            Begin
            N:=0;
            GoTo Der;
            End;

If Y > 80 Then
            Begin
            N:=0;
            GoTo Der;
            End

Else
    Begin
If N=0 Then N:=1
Else N:=0;
    End;
  SetColor(BAK);
  Rectangle(300,50,349,70);
  Rectangle(301,51,348,69);
  Rectangle(302,52,347,68);
  Rectangle(303,53,346,67);
  Rectangle(304,54,345,66);
  Rectangle(305,55,344,65);
  Rectangle(306,56,343,64);
  Rectangle(307,57,342,63);
  Rectangle(308,58,341,62);
  Rectangle(309,59,340,61);
  Line(310,60,340,60);
goto Der;
end;

TreffG:
IF TAG=1 then goto Der;
IF TAG=0 then
Begin
TAG:=1;
Sound(300);
Delay(20);
NoSound;
If Y < 41 Then
            Begin
            N:=0;
            GoTo Der;
            End;

If Y > 80 Then
            Begin
            N:=0;
            GoTo Der;
            End

Else
    Begin
If N=0 Then N:=1
Else N:=0;
    End;
  SetColor(BAK);
  Rectangle(350,50,399,70);
  Rectangle(351,51,398,69);
  Rectangle(352,52,397,68);
  Rectangle(353,53,396,67);
  Rectangle(354,54,395,66);
  Rectangle(355,55,394,65);
  Rectangle(356,56,393,64);
  Rectangle(357,57,392,63);
  Rectangle(358,58,391,62);
  Rectangle(359,59,390,61);
  Line(360,60,390,60);
goto Der;
end;

TreffH:
IF TAH=1 then goto Der;
IF TAH=0 then
Begin
TAH:=1;
Sound(300);
Delay(20);
NoSound;
If Y < 41 Then
            Begin
            N:=0;
            GoTo Der;
            End;

If Y > 80 Then
            Begin
            N:=0;
            GoTo Der;
            End

Else
    Begin
If N=0 Then N:=1
Else N:=0;
    End;
  SetColor(BAK);
  Rectangle(400,50,449,70);
  Rectangle(401,51,448,69);
  Rectangle(402,52,447,68);
  Rectangle(403,53,446,67);
  Rectangle(404,54,445,66);
  Rectangle(405,55,444,65);
  Rectangle(406,56,443,64);
  Rectangle(407,57,442,63);
  Rectangle(408,58,441,62);
  Rectangle(409,59,440,61);
  Line(410,60,440,60);

goto Der;
end;

TreffI:
IF TAI=1 then goto Der;
IF TAI=0 then
YYY:=71;
Begin
TAI:=1;
Sound(300);
Delay(20);
NoSound;
If Y < 41 Then
            Begin
            N:=0;
            GoTo Der;
            End;

If Y > 80 Then
            Begin
            N:=0;
            GoTo Der;
            End

Else
    Begin
If N=0 Then N:=1
Else N:=0;
    End;
  SetColor(BAK);
  Rectangle(450,50,499,70);
  Rectangle(451,51,498,69);
  Rectangle(452,52,497,68);
  Rectangle(453,53,496,67);
  Rectangle(454,54,495,66);
  Rectangle(455,55,494,65);
  Rectangle(456,56,493,64);
  Rectangle(457,57,492,63);
  Rectangle(458,58,491,62);
  Rectangle(459,59,490,61);
  Line(460,60,490,60);




goto Der;
end;

TreffJ:
IF TAJ=1 then goto Der;
IF TAJ=0 then
Begin
TAJ:=1;
Sound(300);
Delay(20);
NoSound;
If Y < 41 Then
            Begin
            N:=0;
            GoTo Der;
            End;

If Y > 80 Then
            Begin
            N:=0;
            GoTo Der;
            End

Else
    Begin
If N=0 Then N:=1
Else N:=0;
    End;
  SetColor(BAK);
  Rectangle(500,50,549,70);
  Rectangle(501,51,548,69);
  Rectangle(502,52,547,68);
  Rectangle(503,53,546,67);
  Rectangle(504,54,545,66);
  Rectangle(505,55,544,65);
  Rectangle(506,56,543,64);
  Rectangle(507,57,542,63);
  Rectangle(508,58,541,62);
  Rectangle(509,59,540,61);
  Line(510,60,540,60);
goto Der;
end;


TreffK:
IF TAK=1 then goto Der;
IF TAK=0 then
Begin
TAK:=1;
Sound(300);
Delay(20);
NoSound;
If Y < 41 Then
            Begin
            N:=0;
            GoTo Der;
            End;

If Y > 80 Then
            Begin
            N:=0;
            GoTo Der;
            End

Else
    Begin
If N=0 Then N:=1
Else N:=0;
    End;
  SetColor(BAK);
  Rectangle(550,50,600,70);
  Rectangle(551,51,599,69);
  Rectangle(552,52,598,68);
  Rectangle(553,53,597,67);
  Rectangle(554,54,596,66);
  Rectangle(555,55,595,65);
  Rectangle(556,56,594,64);
  Rectangle(557,57,593,63);
  Rectangle(558,58,592,62);
  Rectangle(559,59,591,61);
  Line(560,60,590,60);
goto Der;

end;

MW:
IF X = XX-19 Then GoTo vSkro;
IF X = XX-18 Then GoTo vSkro;
IF X = XX-17 Then GoTo vSkro;
IF X = XX-16 Then GoTo vSkro;
IF X = XX-15 Then GoTo vSkro;
IF X = XX-14 Then GoTo vSkro;
IF X = XX-13 Then GoTo vSkro;
IF X = XX-12 Then GoTo vSkro;
IF X = XX-11 Then GoTo vSkro;
IF X = XX-10 Then GoTo vSkro;
IF X = XX-9 Then GoTo vSkro;
IF X = XX-8 Then GoTo vSkro;
IF X = XX-7 Then GoTo vSkro;
IF X = XX-6 Then GoTo vSkro;
IF X = XX-5 Then GoTo vSkro;
IF X = XX-4 Then GoTo vSkro;
IF X = XX-3 Then GoTo vSkro;
IF X = XX-2 Then GoTo vSkro;
IF X = XX-1 Then GoTo vSkro;
IF X = XX+68 Then GoTo hSkro;
IF X = XX+67 Then GoTo hSkro;
IF X = XX+66 Then GoTo hSkro;
IF X = XX+65 Then GoTo hSkro;
IF X = XX+64 Then GoTo hSkro;
IF X = XX+63 Then GoTo hSkro;
IF X = XX+62 Then GoTo hSkro;
IF X = XX+61 Then GoTo hSkro;
IF X = XX+60 Then GoTo hSkro;
IF X < XX then goto LivEs;
If X > XX+65 Then goto LivEs
Else goto Treff;

Treff:
Sound(400);
Delay(20);
NoSound;
N:=1;
S:=1;
goto Bye;

HSkro:
Sound(500);
Delay(30);
NoSound;
M:=0;
N:=1;
if s=1 tHEN s:=2;
GoTo BYE;

VSkro:
Sound(500);
Delay(30);
NoSound;
M:=1;
N:=1;
if s=1 tHEN s:=2;
GoTo BYE;

Right:
SetColor(BAK);
                  Line(10,394,GetMaxX-10,394);
                  Line(10,395,GetMaxX-10,395);
                  Line(10,396,GetMaxX-10,396);
                  Line(10,397,GetMaxX-10,397);
                  Line(10,398,GetMaxX-10,398);
                  Line(10,399,GetMaxX-10,399);
   Line(10,400,GetMaxX-10,400);
   Line(10,401,GetMaxX-10,401);
   Line(10,402,GetMaxX-10,402);
   Line(10,403,GetMaxX-10,403);
   Line(10,404,GetMaxX-10,404);
   Line(10,405,GetMaxX-10,405);
   Line(10,406,GetMaxX-10,406);
   Line(10,407,GetMaxX-10,407);
   Line(10,408,GetMaxX-10,408);
   Line(10,409,GetMaxX-10,409);
XX:=XX+21;
goto BYE;

Left:
SetColor(BAK);
                  Line(10,394,GetMaxX-10,394);
                  Line(10,395,GetMaxX-10,395);
                  Line(10,396,GetMaxX-10,396);
                  Line(10,397,GetMaxX-10,397);
                  Line(10,398,GetMaxX-10,398);
                  Line(10,399,GetMaxX-10,399);
   Line(10,400,GetMaxX-10,400);
   Line(10,401,GetMaxX-10,401);
   Line(10,402,GetMaxX-10,402);
   Line(10,403,GetMaxX-10,403);
   Line(10,404,GetMaxX-10,404);
   Line(10,405,GetMaxX-10,405);
   Line(10,406,GetMaxX-10,406);
   Line(10,407,GetMaxX-10,407);
   Line(10,408,GetMaxX-10,408);
   Line(10,409,GetMaxX-10,409);
XX:=XX-21;
goto BYE;

LivEs:
S:=1;
Jumper:=5;
PutImage(500,460, PPPP^, NormalPut);
PutImage(525,460, PPPP^, NormalPut);
PutImage(550,460, PPPP^, NormalPut);
PutImage(575,460, PPPP^, NormalPut);
PutImage(600,460, PPPP^, NormalPut);
Sound(200);
Delay(50);
NoSound;
Delay(500);
Liv:=Liv-1;
If Liv>3 Then GoTo Rep;
If Liv=-1 then goto Exit;
If Liv=2 Then
         Begin
SetColor(BAK);
Line(10,400,GetMaxX-10,400);
Line(10,401,GetMaxX-10,401);
Line(10,402,GetMaxX-10,402);
Line(10,403,GetMaxX-10,403);
Line(10,404,GetMaxX-10,404);
Line(10,405,GetMaxX-10,405);
Line(10,406,GetMaxX-10,406);
Line(10,407,GetMaxX-10,407);
Line(10,408,GetMaxX-10,408);
Line(10,409,GetMaxX-10,409);

  Line(81,461,99,461);
  Line(81,464,99,464);
  Line(82,465,98,465);
  Line(80,463,100,463);
  Line(80,462,100,462);
  Line(82,460,98,460);
  GoTo Rep;
  End;
If Liv=1 Then
         Begin
  SetColor(BAk);
Line(10,400,GetMaxX-10,400);
Line(10,401,GetMaxX-10,401);
Line(10,402,GetMaxX-10,402);
Line(10,403,GetMaxX-10,403);
Line(10,404,GetMaxX-10,404);
Line(10,405,GetMaxX-10,405);
Line(10,406,GetMaxX-10,406);
Line(10,407,GetMaxX-10,407);
Line(10,408,GetMaxX-10,408);
Line(10,409,GetMaxX-10,409);
  Line(52,460,68,460);
  Line(51,461,69,461);
  Line(50,462,70,462);
  Line(50,463,70,463);
  Line(51,464,69,464);
  Line(52,465,68,465);
  GoTo Rep;
  End;

If Liv=0 Then
         Begin
  SetColor(Bak);
  Line(22,460,38,460);
  Line(21,461,39,461);
  Line(20,462,40,462);
  Line(20,463,40,463);
  Line(21,464,39,464);
  Line(22,465,38,465);
Line(10,400,GetMaxX-10,400);
Line(10,401,GetMaxX-10,401);
Line(10,402,GetMaxX-10,402);
Line(10,403,GetMaxX-10,403);
Line(10,404,GetMaxX-10,404);
Line(10,405,GetMaxX-10,405);
Line(10,406,GetMaxX-10,406);
Line(10,407,GetMaxX-10,407);
Line(10,408,GetMaxX-10,408);
Line(10,409,GetMaxX-10,409);
  GoTo Rep;
  End;

Jump:
If Jumper<0 Then GoTo Bye;
XX:=X;
JUMPER:=JUMPER-1;
SetColor(Bak);
Line(10,400,GetMaxX-10,400);
Line(10,401,GetMaxX-10,401);
Line(10,402,GetMaxX-10,402);
Line(10,403,GetMaxX-10,403);
Line(10,404,GetMaxX-10,404);
Line(10,405,GetMaxX-10,405);
Line(10,406,GetMaxX-10,406);
Line(10,407,GetMaxX-10,407);
Line(10,408,GetMaxX-10,408);
Line(10,409,GetMaxX-10,409);
IF JUMPER = 4 Then
              Begin
              PutImage(500,460, PPPPP^, NormalPut);
              End;
IF JUMPER = 3 Then
              Begin
              PutImage(525,460, PPPPP^, NormalPut);
              End;
IF JUMPER = 2 Then
              Begin
              PutImage(550,460, PPPPP^, NormalPut);
              End;
IF JUMPER = 1 Then
              Begin
              PutImage(575,460, PPPPP^, NormalPut);
              End;
IF JUMPER = 0 Then
              Begin
              PutImage(600,460, PPPPP^, NormalPut);
              End;
goto bye;

Exit:
Readln;
CloseGraph;
end.