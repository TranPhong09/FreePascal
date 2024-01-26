uses crt ;
var fi , fo : text ;
   a , b , r : integer ;
begin
  assign(fi,'e:\freepascal\nhap.inp.txt');
  reset(fi);
  read(fi,a,b);
  close(fi);
  assign(fo,'e:\freepascal\nhap.out.txt');
  rewrite(fo);
  r := a * b ;
  while a <> b do
   if a > b then a := a - b else b:= b - a ;
   r := r div a ;
  write(fo,r);
  close(fo);
 readln
 end.