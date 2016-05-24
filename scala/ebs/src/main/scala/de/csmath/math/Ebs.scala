package de.csmath.math;


object Ebs {

    //
    //  ebs(x,n) => x^n
    //
    def ebs(x: Int, n: Int): Int = ebsaux( {x: Int => x} , 1, x, n)


    //
    //  ebsmod(x,n,m) => x^n (mod m)
    //
    def ebsmod(x: Int, n: Int, m: Int): Int = {
        require(x >= 0)
        require(n >= 0)
        require(m >= 0)
        
        ebsaux((_ % m), 1, x, n)
    }

    //
    // ebsaux(f,1,x,n) => f(x^n)
    //
    private def ebsaux(f: Int => Int, a: Int, b:Int, n:Int): Int = n match {
        
        case 0 => f(a)
        case x if x >= 0 =>
           val a1 = if (n % 2 == 1)  f(a*b) else f(a)
           val b1 = if (n > 1) f(b*b) else 1
           val n1 = n / 2
           ebsaux(f, a1, b1, n1)
        case _ => throw new IllegalArgumentException("n is negative: " + n)
    }


}
