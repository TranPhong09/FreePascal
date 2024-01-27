uses crt ;
const  nmax = 100;
type arrboolean = array[2..nmax] of boolean ;
   function snt (  n : integer ):boolean   ;
    var i , j : integer ;
        prime : arrboolean;
 begin
  for i := 2 to n do
    prime[i] := true ;
    for i := 2 to trunc(sqrt(n)) do
     begin
      if prime[i] then
         begin
          j := i*i;
          while j <= n do
           begin
             prime[j] := false ;
             j := j + i ;
            end;
          end;
        end;
      snt := prime[n] ;
 end;
var fi , fo : text ;
     n , i : integer ;
     prime : array[1..nmax] of boolean   ;
begin
 assign(fi,'e:\freepascal\nhap.inp.txt');
 reset(fi);
 read(fi,n);
 close(fi);
 assign(fo,'e:\freepascal\nhap.out.txt');
 rewrite(fo);
 for i := 2 to n do
 if snt(i) then write(fo,i,' ');
 close(fo);
readln
end.
