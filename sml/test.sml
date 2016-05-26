use "ebs.sml";
let
  val res = ebs 2 15;
in
  if res = 32768
     then print "PASSED!\n"
     else print "FAILED!\n"
end;

let
  val res = ebs 2 0;
in
  if res = 1
     then print "PASSED!\n"
     else print "FAILED!\n"
end;

let
  val res = ebs 2 1;
in
  if res = 2
     then print "PASSED!\n"
     else print "FAILED!\n"
end;

let
  val res = ebsmod 61 13 77;
in
  if res = 40
     then print "PASSED!\n"
     else print "FAILED!\n"
end;
