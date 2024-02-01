{Một khu du lịch có N (2 < N <=50) điểm tham quan được đánh số từ 1 đến N. Trong ngày 8/3 năm nay, có hai đoàn khách mỗi đoàn khách đăng ký tham gia k (k <=N) điểm tham quan trong khu du lịch đó. Ban quản lý khu du lịch muốn biết được những địa điểm nào mà cả hai đoàn khách đều đến đó để tăng cường nhân viên phục vụ.
Hãy lập trình giúp ban quản lý biết được các điểm tham quan của khu du lịch mà cả hai đoàn sẽ cùng ghé thăm.
Ví dụ:
Dữ liệu vào Dữ liệu ra trên màn hình
N= 5
k = 3
1 2 3
2 3 4   Cac dia diem chung: 2 3
N= 8
k = 5
1 3 4 5 6
2 4 5 6 7 Cac dia diem chung: 4 5 6
}
uses crt ;
type arrint = array[1..50] of integer ;
var fi , fo : text ;
    a, b : arrint ;
    n , k  , i , j : integer ;
    begin
      assign(fi,'e:\freepascal\nhap.inp.txt');
      reset(fi);
    repeat
 read(fi,n,k);
       if ( n > 50 ) then writeln('du lieu sai ');
      until ( 2 <= n ) and ( n <= 50) and ( k <= n ) ;
       for i := 1 to k do readln(fi,a[i]);
       for j := 1 to k do readln(fi,b[j]);
      close(fi);
      assign(fo,'e:\freepascal\nhap.out.txt');
      rewrite(fo);
        for i := 1 to k do
         for j := 1 to k do
         if a[i] = b[j] then write(fo,a[i],' ');
       close(fo);
    readln
    end.

