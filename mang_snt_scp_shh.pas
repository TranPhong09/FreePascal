uses crt ;
 function snt( n : integer ): boolean ;
   var i , d : integer ;
     begin
      d := 0;
      for i := 1 to n do
        if n mod i = 0 then d := d + 1 ;
        if d = 2 then snt := true else snt := false ;
   end;

type arint = array[1..100] of integer;
var fi , fo : text ;
   a : arint ;
   n , i , k , j, d   : integer ;
begin
  assign(fi,'e:\freepascal\nhap.inp.txt');
  reset(fi);
  read(fi,n);
  for i := 1 to n do
   readln(fi,a[i]);
  close(fi);
  assign(fo,'e:\freepascal\nhap.out.txt');
  rewrite(fo);
  for i := 1 to n do
    if snt(a[i]) = true then write(fo,'cac so nguyen to co trong mang la :',a[i],' ');
 close(fo);

 readln
 end.