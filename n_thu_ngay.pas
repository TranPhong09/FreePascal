uses crt ;
var fi , fo : text ;
   n  : integer ;
begin
  assign(fi,'e:\freepascal\nhap.inp.txt');
  reset(fi);
  read(fi,n);
  close(fi);
  assign(fo,'e:\freepascal\nhap.out.txt');
  rewrite(fo);
  case n  of
   2 : write(fo,'thu 2 ');
   3 : write(fo,'thu 3 ');
   4 : write(fo,'thu 4 ');
   5 : write(fo,'thu 5 ');
   6 : write(fo,'thu 6 ');
   7 : write(fo,'thu 7 ');
   8 : write(fo,'thu 8 ');
 else write(fo,'khong co truong hop nao ');
end;
close(fo);
readln
end.