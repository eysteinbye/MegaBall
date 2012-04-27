uses
  Crt, Graph;
var
  Gd, Gm,Endx,Endm,Endn,Endy : Integer;
  EndP      : pointer;
  EndSize   : Word;
begin
  Gd := Detect; InitGraph(Gd, Gm, '\tp\bgi');
  if GraphResult <> grOk then Halt(1);
   Endx:=220;EndM:=0;Endn:=1;Endy:=470;

   SetTextStyle(6 , HorizDir,4);
   OutTextXY(10,5,'A Eystein Bye Production');
   OutTextXY(10,15,' This Game is made in -');
   OutTextXY(10,25,'   Turbo-Pascall 6.0');
   OutTextXY(10,35,'      30-12-1995');
   SetColor(Yellow);
   OutTextXY(10,55,'  (C) Copyright 1995');
   SetTextStyle(1 , HorizDir,4);
   OutTextXY(25,70,'MegaWear');
   SetColor(Magenta);
   OutTextXY(27,72,'MegaWear');
   SetTextStyle(6 , HorizDir,4);
   SetColor(LightGreen);
   OutTextXY(10,130,'  This is a ShareWare');
   OutTextXY(10,140,'    Version 1.02 á');
   OutTextXY(10,160,'Pleace distribute this');
   OutTextXY(10,170,'  version to all your');
   OutTextXY(10,180,' friends and relatives');
   SetColor(LightRed);
   OutTextXY(10,200,'  To order the full');
   OutTextXY(10,210,'   Version, call :');
   OutTextXY(10,220,'578 57 458 or write to');
   OutTextXY(10,230,'   Eystein Bye 6750');
   OutTextXY(10,240,'Stadlandet      Norway');
   SetColor(Yellow);
   OutTextXY(10,250,' For the full version');
   OutTextXY(10,260,'Only 100kr, 14 Dollars');



   setcolor(Magenta);
   Line(190,50,10,50);

   EndSize := ImageSize(5,5,260,370);
   GetMem(EndP, EndSize); { Get memory from heap }
   GetImage(5,5,260,370,EndP^);
     ClearDevice;
   repeat
   if Endn=0 then
         begin
         Endy:=Endy;
         end;
  if Endn=1 then
         begin
         Endy:=Endy-1;
         end;
  if Endy=(getMaxy-75) then Endn:=1;
  if Endy=150 then Endn:=0;

    if Endm=0 then
         begin
         Endx:=Endx;
         end;
  if Endm=1 then
         begin
         Endx:=Endx;
         end;
  if Endx=(getMaxX-250) then Endm:=1;
  if Endx=10 then Endm:=0;

  PutImage(Endx, Endy, EndP^, NormalPut);
  until KeyPressed;

  CloseGraph;
  ReadLn;
end.