uses crt ;
var fi , fo : text ;
    n  : integer ;
    t : real ;
begin
  assign(fi,'e:\freepascal\nhap.inp.txt');
  reset(fi);
  read(fi,n);
  close(fi);
  assign(fo,'e:\freepascal\nhap.out.txt');
  rewrite(fo);
  if ( n >= 1 ) and ( n <= 100000 ) then
     begin
       if ( n >= 1 ) and ( n <= 5 ) then t := n*8500 ;
       if ( n >= 6 ) and ( n <= 15 ) then t := (n - 5)*9800 + 5*8500 ;
       if ( n >= 16 ) and ( n <= 25 ) then t := (n-15)*11200 + 10*9800 + 5 *8500 ;
       if ( n >= 26) then t := (n - 25)*14500+10*11200+10*9800+5*8500;
    end;
   writeln(fo,t:6:2);
   writeln;
   write(fo,t*0.15:6:2);
   writeln;
   writeln(fo,t+t*0.15:6:2);
   close(fo);
readln
end.