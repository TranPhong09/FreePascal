uses crt ;
var fi , fo : text ;
   d , i , n   : integer ;
   check : boolean ;
begin
  assign(fi,'e:\freepascal\nhap.inp.txt');
  reset(fi);
  read(fi,n);
  close(fi);
  assign(fo,'e:\freepascal\nhap.out.txt');
  rewrite(fo);
  check := false  ;
  for i := 1 to n do
    if n mod i = 0 then d := d + 1 ;
    if d =  2 then check := true ;
    if check = true then write(fo,n,'la snt ') else write(fo,n,'khong phai la snt');
   close(fo);
 readln
 end.
