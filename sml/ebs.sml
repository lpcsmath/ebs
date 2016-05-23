(*
   ebsaux f 1 x n => f x^n
*)
fun ebsaux f a b 0 = f a
 |  ebsaux f a b n =
    let
       val a' = if n mod 2 = 1 then f (a*b) else f a
       val b' = f (b*b)
       val n' = n div 2
    in
       (ebsaux f) a' b' n'
    end;

fun id x = x;

(*
    ebs x n => x^n
*)
fun ebs x = ebsaux id 1 x;

fun flipmod n a = a mod n;

(*
    ebsmod x n m => x^n (mod m)
*)
fun ebsmod x n m = ebsaux (flipmod m) 1 x n;
