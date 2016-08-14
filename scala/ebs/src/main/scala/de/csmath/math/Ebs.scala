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
    @tailrec
    private def ebsaux(f: Int => Int, x:Int, n:Int): Int = n match {
        case 0 => 1
        case 1 => f(x)
        case n if n % 2 == 0 =>
           ebsaux(f, f(x*x), n / 2)
        case _ =>
           f(x * ebsaux(f, f(x*x), n / 2))
    }


}
