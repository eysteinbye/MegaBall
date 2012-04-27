Uses Graph,Crt;
Var
  Gd, Gm: Integer;
  X,Y,A,B : Integer;
  P,PP      : pointer;
  Size,S   : Word;
  PX,PY  :Integer;
  OldPattern : FillPatternType;
const
  Gray50 : FillPatternType = ($BA, $45, $AA,
    $85, $AA, $15, $AA, $95);

Begin
  Gd := Detect; InitGraph(Gd, Gm, '\TP\BGI');
  if GraphResult <> grOk then Halt(1);
  X:=1; Y:=1; A:=1; B:=1;PX:=1; PY:=1;
  ClearDevice;
  PieSlice(5, 5, 0, 360, 4);
  S := ImageSize(1,1,13,10);
  GetMem(PP, S); { Get memory from heap }
  GetImage(1,1,13,10,PP^);
  ClearDevice;

GetFillPattern(OldPattern);
SetFillPattern(Gray50, Red);
Bar(0, 0, 30, 30);
SetColor(Magenta);
Line(0,0,30,30);
Line(0,30,30,0);
SetCOlor(LightGreen);
OutTextXY(6,2,'MW');
OutTextXY(2,12,'BYE');

Size := ImageSize(0,0,30,30);
GetMem(P, Size); { Get memory from heap }
GetImage(0,0,30,30,P^);
ClearDevice;
Repeat;
PutImage(PX, PY, P^, NormalPut);
PX:=PX+30;
IF PX>640 Then
          Begin
          PX:=1;
          PY:=PY+30;
          End;
Until PY>460;

  Repeat;
    PutImage(X, Y, PP^, XORput);                 { draw image }
    Delay(10);
    PutImage(X, Y, PP^, XORput);                 { erase image }
  X:=X+A; Y:=Y+B;
  IF X=620 then A:=-1; IF X=1 Then A:=1;
  IF Y=440 then B:=-1; IF Y=1 Then B:=1;
  Until KeyPressed;
 END.

ReadLn;
end.