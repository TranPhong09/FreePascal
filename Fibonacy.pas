uses crt ;
var fi , fo : text ;
   n , f , f1 , f2 , i : integer ;
begin
  assign(fi,'e:\freepascal\nhap.inp.txt');
  reset(fi);
  read(fi,n);
  close(fi);
  assign(fo,'e:\freepascal\nhap.out.txt');
  rewrite(fo);
  f1 := 1 ;
  f2 := 0 ;
  f := f1 + f2 ;
  while n > i do
    begin
     write(fo,f,' ');
      f1:= f2 ;
     f2 := f  ;
     f := f1 + f2 ;
     i := i + 1 ;
    end;
    close(fo);
readln
end.
