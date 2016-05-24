import org.scalatest._
import de.csmath.math.Ebs._

class EbsSpec extends FlatSpec with Matchers {
  "ebs" should "be correct" in {
    ebs(2,16) should === (65536)
    ebs(2,29) should === (536870912)
    ebs(2,30) should === (1073741824)
  }
  
  "ebsmod" should "be correct" in {
    ebsmod(61,13,77) should === (40)
  }
}
