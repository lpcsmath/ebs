package de.csmath.math;


object Ebs {

    //
    //  ebs(x,n) => x^n
    //
    def ebs(x: Int, n: Int): Int = ebsaux( {x: Int => x} , 1, x, n)


    //
    //  ebsmod(x,n,m) => x^n (mod m)
    //
    def ebsmod(x: Int, n: Int, m: Int): Int = ebsaux((_ % m), 1, x, n)

    //
    // ebsaux(f,1,x,n) => f(x^n)
    //
    private def ebsaux(f: Int => Int, a: Int, b:Int, n:Int): Int = n match {
        case 0 => f(a)
        case _ =>
           val a1 = if (n % 2 == 1)  f(a*b) else f(a)
           val b1 = if (n > 1) f(b*b) else 1
           val n1 = n / 2
           ebsaux(f, a1, b1, n1)
    }


}
