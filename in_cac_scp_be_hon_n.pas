uses crt ;
var fi , fo : text ;
   d , i , n , j  : integer ;
begin
  assign(fi,'e:\freepascal\nhap.inp.txt');
  reset(fi);
  read(fi,n);
  close(fi);
  assign(fo,'e:\freepascal\nhap.out.txt');
  rewrite(fo);
   for i := 1 to n do
    begin
     j := trunc(sqrt(i));
     if sqr(j) = i then write(fo,i,' ');
   end;
   close(fo);
readln
end.