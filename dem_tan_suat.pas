uses crt ;
type arint = array[1..100] of integer;
var fi , fo : text ;
   a : arint ;
   n , i , k , j, d   : integer ;
   check : boolean ;
begin
  assign(fi,'e:\freepascal\nhap.inp.txt');
  reset(fi);
  read(fi,n);
  for i := 1 to n do
   readln(fi,a[i]);

  close(fi);
  assign(fo,'e:\freepascal\nhap.out.txt');
  rewrite(fo);

  for i := 1 to n do write(fo,a[i],' ');
 writeln;
 writeln;
  for i := 1 to n do
   begin
     check := true ;
     for j := 1 to i-1 do
       if a[j] = a[i] then check := false  ;
      if check =true then
       begin
        d := 0 ;
         for k := 1 to n do
             if a[i] = a[k] then d := d + 1 ;
         writeln(fo,a[i],' co so lan lap lai la :',d);
       end;
     end;
     close(fo);
readln;
end.
