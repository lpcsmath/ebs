use "ebs.sml";
let
  val res = ebs 2 15;
in
  if res = 32768
     then print "PASSED!\n"
     else print "FAILED!\n"
end;
ebs 2 16;
ebs 4 13;