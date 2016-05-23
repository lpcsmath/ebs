(*
   ebsaux 1 x n => x^n
*)
fun ebsaux a b 0 = a
 |  ebsaux a b n =
    let
       val a' = if n mod 2 = 1 then a*b else a
       val b' = b*b
       val n' = n div 2
    in
       ebsaux a' b' n'
    end;

(*
    ebs x n => x^n
*)
fun ebs x = ebsaux 1 x;
