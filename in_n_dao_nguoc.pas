uses crt ;
var fi , fo : text ;
   n , d , x  : integer ;
begin
  assign(fi,'e:\freepascal\nhap.inp.txt');
  reset(fi);
  read(fi,n);
  close(fi);
  assign(fo,'e:\freepascal\nhap.out.txt');
  rewrite(fo);
  while n > 0 do
   begin
     x := x * 10 +   n mod 10 ;

     n := n div 10 ;
  end;
   write(fo,x);
   close(fo);
 readln
end.
