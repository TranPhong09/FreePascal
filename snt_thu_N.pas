{ viet chuong trinh nhap vao 1 so nguyen duong N, voi 2 <= n <= 100. in ra man hinh N so nguyen to dau tien
   n = 4
    snt 1 : 2
    .....
    snt 4 : 7 }
 uses crt ;
function snt( n : integer ): boolean;
 var i , d : integer ;
   begin
      d :=0 ;
      for i := 1 to n do
        if n mod i = 0 then d :=  d + 1 ;
        if d = 2 then snt := true else snt := false ;
  end;
var fi , fo : text ;
   n  , i, d : integer ;
begin
  assign(fi,'e:\freepascal\nhap.inp.txt');
  reset(fi);
  read(fi,n);
  close(fi);
  assign(fo,'e:\freepascal\nhap.out.txt');
  rewrite(fo);
  while n > d do
   begin
      if snt(i) = true then
        begin
           writeln(fo,'so nguyen to thu ',d+1,' la ',i,' ');
           d := d + 1 ;
       end;
   i := i + 1 ;
 end;
close(fo);
readln
end.
