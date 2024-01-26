uses crt ;
var fi , fo : text ;
   n  : integer ;
   can , chi : string ;
begin
  assign(fi,'e:\freepascal\nhap.inp.txt');
  reset(fi);
  read(fi,n);
  close(fi);
  assign(fo,'e:\freepascal\nhap.out.txt');
  rewrite(fo);
   case n mod 10 of
    0 : can :='canh';
    1 : can :='tan';
    2 : can :='nham';
    3 : can :='quy';
    4 : can :='giap';
    5 : can :='at';
    6 : can :='binh';
    7 : can :='dinh';
    8 : can :='mau';
    9 : can :='ky';
   end;
   case n mod 12 of
    0 : chi :='than';
    1 : chi :='dau';
    2 : chi :='tuat';
    3 : chi :='hoi';
    4 : chi := 'ti';
    5 : chi :='suu';
    6 : chi :='dan';
    7 : chi :='mao';
    8 : chi :='thin';
    9 : chi :='ty';
   10 : chi :='ngo';
   11 : chi :='mui';
   end;
   write(fo,can,' ',chi);
  close(fo);
 readln
 end.
