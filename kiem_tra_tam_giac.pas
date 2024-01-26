uses crt ;
var fi , fo : text ;
    a , b, c   : integer ;

begin
  assign(fi,'e:\freepascal\nhap.inp.txt');
  reset(fi);
  read(fi,a,b,c);
  close(fi);
  assign(fo,'e:\freepascal\nhap.out.txt');
  rewrite(fo);
  if ( a + b > c ) and ( a + c > b ) and ( c + b > a ) then
    begin
     write(fo,'3 cach vua nhap la 1 tam giac ');
     if ( a = b ) and ( b = c ) then write(fo,'deu') else
     if ( a = b ) or ( c = b ) or ( a = c ) then write(fo,'can');
     if ( a * a + b * b = c * c ) or ( b * b + c * c = a * a ) or ( a * a + c * c = b * b ) then write(fo,'vuong');
    end
    else
    write(fo,' khong phai la tam giac  ');
     close(fo);
   readln
   end.