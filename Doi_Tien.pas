uses crt ;
var fi , fo : text ;
   k200 , k500 , n , k100  : integer ;
begin
  assign(fi,'e:\freepascal\nhap.inp.txt');
  reset(fi);
  read(fi,n);
  close(fi);
  assign(fo,'e:\freepascal\nhap.out.txt');
  rewrite(fo);
     k500 := n div 500 ;
     n := n - k500*500;
    if n <> 0 then
         begin
           k200 := n div 200 ;
           n := n - k200*200;
         end;
    if n <> 0 then
         begin
            k100 := n div 100;
            n := n - k100*100 ;
        end;
     write(fo,k500,k200,k100);

   close(fo);
readln
end.