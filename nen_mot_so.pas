{Phép nén một số nguyên dương là tính tổng các chữ số của nó, sau một số lần sử dụng phép nén thì số còn lại chỉ có một chữ số, khi đó ta gọi số đó là số nén tối giản.
Ví dụ số 284, sau phép nén thứ nhất ta được 2 + 8 + 4 = 14, sau phép nén thứ hai ta được 1 + 4 = 5. Khi đó phép nén tối giản của 284 là 5. 
Yêu cầu: Cho một số nguyên N (0 < N < 109). Hãy tìm số nén tối giản của N.
Dữ liệu vào Dữ liệu ra trên màn hình
N=284   5
N=121   4

}
uses crt ;
 function sum ( n : integer ): integer ;
    var s ,  x : integer ;
       begin
          s := 0 ;
          while n <> 0 do
            begin
              x := n mod 10 ;
              s := s + x ;
              n := n div 10 ;
           end;
        sum := s ;
    end;
var fi , fo : text ;
     n  : int64 ;
begin
 clrscr ;
   assign(fi,'e:\freepascal\nhap.inp.txt');
   reset(fi);
   read(fi,n);
   close(fi);
   assign(fo,'e:\freepascal\nhap.out.txt');
   rewrite(fo);
    write(fo,sum(sum(n)));
   close(fo);
  readln
  end.

