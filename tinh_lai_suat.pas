{Giả sử một người có N triệu đồng đem gửi vào ngân hàng với lãi xuất 1%/tháng. Sau mỗi tháng tiền lãi được nhập vào để tính lãi xuất tháng sau. Viết chương trình để tính xem sau một năm số tiền gửi ngân hàng của người đó được tổng số tiền là bao nhiêu?
Dữ liệu vào Dữ liệu ra trên màn hình
N=10000000  So tien nhan duoc sau 12 thang la: 11268250
N=200000000 So tien nhan duoc sau 12 thang la: 225365006
}
uses crt ;
var fi  , fo : text ;
    n  : int64 ;
    t : real ;
 begin
 assign(fi,'e:\freepascal\nhap.inp.txt');
 reset(fi);
 read(fi,n);
 close(fi);
 assign(fo,'e:\freepascal\nhap.out.txt');
 rewrite(fo);
  t := (n * 0.01 )*12 +n ;
   write(fo,t:10:4);
   close(fo);
 readln
 end.
