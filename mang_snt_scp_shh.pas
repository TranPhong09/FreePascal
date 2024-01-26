uses crt ;
 function snt( n : integer ): boolean ;
   var i , d : integer ;
     begin
      d := 0;
      for i := 1 to n do
        if n mod i = 0 then d := d + 1 ;
        if d = 2 then snt := true else snt := false ;
   end;
function scp(n : integer): boolean ; 
 var x : integer ;
  begin 
    x:= trunc(sqrt(x)); 
    if sqr(x) = n then scp := true else scp := false ; 
  end; 
 function shh ( n : integer ): boolean ; 
   var i , d : integer ; 
     begin 
       d := 0; 
       for i := 1 to n-1 do 
         if ( n mod i = 0 ) then d :=d + i ; 
         if d = n then shh := true else shh := false ; 
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
    begin 
    if snt(a[i]) = true then write(fo,'cac so nguyen to co trong mang la :',a[i],' ');
    if scp(a[i]) = true then write(fo,' cac so chinh phuong co trong mang la :',a[i],' ');  
    if chh(a[i] = true then write(fo,' cac so hoan hao co trong mang la :',a[i],' '); 
end; 
 close(fo);

 readln
 end.
