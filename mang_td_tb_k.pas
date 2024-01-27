{nhap mang
 a : tang dan
 b : tinh trung binh cong
 c : nhap k , k tra co tang dan khong }
 uses crt;
type arint = array[1..100] of integer;
var fi , fo : text ;
   a : arint ;
   n , i , k , j, d  , tam , vi_Tri , sum : integer ;
    x : real ;
   check   : boolean;
begin
clrscr;
  assign(fi,'e:\freepascal\nhap.inp.txt');
  reset(fi);
  read(fi,n);
  for i := 1 to n do
   readln(fi,a[i]);
 read(fi,k,vi_tri);
  close(fi);
  assign(fo,'e:\freepascal\nhap.out.txt');
  rewrite(fo);

 for i := 1 to n-1 do
  for j := i+1 to n do
   if a[i] > a[j] then
    begin
      tam := a[i];
      a[i] := a[j];
      a[j] := tam;
   end;
  for i := 1 to n do write(fo,a[i],' ');
   for i := 1 to n do sum := sum + a[i] ;
   writeln(fo,sum/n:4:0);
  writeln;
  repeat
  for i := n+1 downto vi_tri+1 do
     a[i] := a[i-1];
     a[vi_tri] := k ;
     n := n + 1 ;
  for i :=1 to n do  write(fo,a[i],' ') ;
  writeln ;
  check := true ;
  for i := 1 to n-1 do
   for j := i+1 to n do
     if a[i] > a[j] then check := false ;
    if check = true then writeln(fo,'tang  ' ) else writeln(fo,'giam ');
   if check = false then
     begin
      for i := vi_tri to n-1 do
         a[i] := a[i+1];
         n := n-1 ;
    end;
  if check = false then break;
 until check = true ;
 close(fo);
readln
end.
