uses crt ;
var fi , fo : text ;
   n , d  : integer ;
begin
  assign(fi,'e:\freepascal\nhap.inp.txt');
  reset(fi);
  read(fi,n);
  close(fi);
  assign(fo,'e:\freepascal\nhap.out.txt');
  rewrite(fo);
  while n <> 0 do
   begin
     n := n div 10 ;
     d := d + 1 ;
  end;
   write(fo,d);
   close(fo);

 readln
end.