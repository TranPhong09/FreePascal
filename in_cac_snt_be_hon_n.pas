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
     for j :=  1 to i do
        if i mod j = 0 then d := d + 1 ;
        if d = 2 then write(fo,i,' ');
     d := 0 ;
   end;
   close(fo);
readln
end.