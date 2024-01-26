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
   r := a mod b ;
    while r <> 0 do
     begin
       a := b ;
       b := r ;
       r := a mod b;
     end;
  write(fo,b);
 close(fo);
readln
end.