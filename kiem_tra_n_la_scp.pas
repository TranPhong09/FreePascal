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
  d := trunc(sqrt(n));
  if sqr(d) = n then write(fo,n,'la so chinh phuong ') else write(fo,n,' khong phai so chinh phuong ');
  close(fo);
 readln
 end.
