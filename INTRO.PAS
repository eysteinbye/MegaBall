uses
  Crt, Graph;
var
  Gd, Gm,x,xx,m,n,y,s,z,Teller : Integer;
  Ch : Char;
  P,PBYE      : pointer;
  Bak : Integer;
  Size,SizeBYE   : Word;
Label Smell,Der,Bye,Se,Exit;
Procedure Ball;
Begin
   BAK:=Black;
   SetBkColor(Bak);
   SetCOlor(White);
   Line(4,2,8,2);   Line(3,3,9,3);   Line(3,4,9,4);
   Line(2,5,10,5);   Line(2,6,10,6);   Line(3,7,9,7);
   Line(3,8,9,8);   Line(4,9,8,9);
   PutPixel(7,2,7);   PutPixel(7,3,7);   PutPixel(8,2,7);
   PutPixel(8,3,7);   PutPixel(8,4,7);   PutPixel(9,3,7);
   PutPixel(9,4,7);   PutPixel(6,2,7);   PutPixel(10,5,7);
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

begin
  s:=1;
  z:=1;
  xx:=450;

  Gd := Detect; InitGraph(Gd, Gm, '\tp\bgi');
  if GraphResult <> grOk then Halt(1);
   x:=30;M:=0;n:=1;y:=350;

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
    SetTextStyle(TriplexFont, HorizDir, 4);
    SetColor(Yellow);
    OutTextXY(250,232,'MegaWear');
    SetColor(5);
    OutTextXY(252,235,'MegaWear');


Repeat
  
           PutImage(xx,400, PBYE^, NormalPut);
           if xx>(GetMaxX-75) then xx:=(GetMaxX-75);
           if xx<10 then xx:=10;

    PutImage(x, y, P^, NormalPut);
    Bye:
    Delay(5);
    
  if n=0 then
         begin
         y:=y+Z;
         end;
  if n=1 then
         begin
         y:=y-Z;
         end;
  if y=(392) then Begin
  n:=1;
  Sound(300);
  Delay(30);
  NoSound;
  End;
  If Y=11 Then
  Begin
  N:=0;
  Sound(300);
  Delay(30);
  NoSound;
  End;
  if X<250 then goto der;
  if X>350 then goto der
  Else goto Se;

  Der:
    if m=0 then
         begin
         x:=x+s;
         end;
  if m=1 then
         begin
         
         x:=x-s;
         end;
  if x > (getMaxX-25) then
  Begin
  m:=1;
  Sound(300);
  Delay(30);
  NoSound;
  End;
  if x < 11 then
  Begin
  m:=0;
  Sound(300);
  Delay(30);
  NoSound;
  End;
Until N=2;
goto exit;
Se:
If Y > 250 then goto smell
Else goto der;

Smell:
Sound(300);
Delay(30);
NoSound;
Teller:=1;
Randomize;
repeat
Teller:=Teller+1;
  PutPixel(Random(GetMaxX),Random(GetMAxY),Yellow);
Until Teller=32000;

Readln;
Exit:
CloseGraph;
end.