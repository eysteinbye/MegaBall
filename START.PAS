{$M $4000,0,0 }   { 16K stack, no heap }
Uses Crt,Dos;
Var
   A : Integer;
Begin
  ClrScr;
  TextColor(Yellow);
  Write('MegaBall BrackOut Game.');
  TextColor(Magenta);
  Writeln('  Made by Kvikk');
  TextColor(Yellow);
  WriteLn('(C) Copyright 1995 Eystein Bye');
  Delay(500);
  GoToXY(1,4);
  Write('þ');
  A:=0;
  Repeat
  A:=A+1;
  Write('þ');
  Delay(240);
  Until A=17;
  Write('þ');  Delay(60);
  Write('þ');  Delay(260);
  Write('þ');  Delay(20);
  Write('þ');  
  Write('þ');  
  Write('þ');
  Write('þ');
  Delay(500);
  SwapVectors;
  Exec('intro.exe' ,'');
  SwapVectors;

  SwapVectors;
  Exec('level1.exe' ,'');
  SwapVectors;

  SwapVectors;
  Exec('level2.exe' ,'');
  SwapVectors;

  SwapVectors;
  Exec('TheEnd.exe' ,'');
  SwapVectors;





end.