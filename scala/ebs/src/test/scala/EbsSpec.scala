import org.scalatest._
import de.csmath.math.Ebs._

class EbsSpec extends FlatSpec with Matchers {
  "ebs" should "be correct with non-negative exponent" in {
    ebs(2,16) should === (65536)
    ebs(2,29) should === (536870912)
    ebs(-2,29) should === (-536870912)
    ebs(2,30) should === (1073741824)
    ebs(0,0) should === (1)
    ebs(2,0) should === (1)
    ebs(0,1) should === (0)
    ebs(0,1000) should === (0)
    ebs(1,1000) should === (1)
  }
  
  "ebs" should "fail with negative exponent" in {
    intercept[IllegalArgumentException] {
        ebs(2,-16) should === (65536)
    }
  }
  
  "ebsmod" should "be correct with natural numbers" in {
    ebsmod(61,13,77) should === (40)
  }
  
  "ebsmod" should "fail with negative base" in {
    intercept[IllegalArgumentException] {
        ebsmod(-61,13,77) should === (40)
    }
  }
  
  "ebsmod" should "fail with negative exponent" in {
    intercept[IllegalArgumentException] {
        ebsmod(61,-13,77) should === (40)
    }
  }
  
  "ebsmod" should "fail with negative modulo" in {
    intercept[IllegalArgumentException] {
        ebsmod(61,13,-77) should === (40)
    }
  }
  
}
