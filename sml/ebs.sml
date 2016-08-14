(*
   ebsaux f 1 x n => f x^n
*)
fun ebsaux f x 0 = 1
 |  ebsaux f x 1 = f x
 |  ebsaux f x n =
        if n mod 2 = 0
        then ebsaux f (f x*x) (n div 2)
        else f (x * ebsaux f (f x*x) (n div 2))

fun id x = x;

(*
    ebs x n => x^n
*)
fun ebs x = ebsaux id x;

fun flipmod n a = a mod n;

(*
    ebsmod x n m => x^n (mod m)
*)
fun ebsmod x n m = ebsaux (flipmod m) x n;
