uses crt ;
var fi , fo : text ;
a   : integer ;
    t : real;

begin
  assign(fi,'e:\freepascal\nhap.inp.txt');
  reset(fi);
  read(fi,a);
  close(fi);
  assign(fo,'e:\freepascal\nhap.out.txt');
  rewrite(fo);
  if a <= 100 then t := 550*a
  else
  if a <= 150 then  t := 550*100 + 1100*(a-100)
  else
  if a <= 200 then t := 500*100 + 1100 * 50 + 1470*(a-150)
  else
   t := 550*100+1100*50+1470*50+1600*(a-200);
   write(fo,' so tien dien phai tra la :',t+0.1*t:9:0);
   close(fo);
 readln
 end.