uses crt ;
var fi , fo : text ;
    n , i : integer ;
begin
 assign(fi,'e:\freepascal\nhap.inp.txt');
 reset(fi);
 read(fi,n);
 close(fi);
 assign(fo,'e:\freepascal\nhap.out.txt');
 rewrite(fo);
  i := 2 ;
  while n > 1 do
    if n mod i = 0 then begin
                         write(fo,i,'.');
                         n := n div i ;
                       end
 else i := i + 1 ;

 close(fo);
 readln
 end.