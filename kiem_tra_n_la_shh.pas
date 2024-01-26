uses crt ;
var fi , fo : text ;
   d , i , n   : integer ;
begin
  assign(fi,'e:\freepascal\nhap.inp.txt');
  reset(fi);
  read(fi,n);
  close(fi);
  assign(fo,'e:\freepascal\nhap.out.txt');
  rewrite(fo);
   for i := 1  to  n-1 do
     if n mod i = 0  then d := d +i ;
     if d = n then write(fo,n,'la so hoan hao ') else write(fo,n,'khong phai la so hoan hao ');
     close(fo);
     readln
 end.