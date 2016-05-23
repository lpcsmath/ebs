use "ebs.sml";
let
  val res = ebs 2 15;
in
  if res = 32768
     then print "PASSED!\n"
     else print "FAILED!\n"
end;
(*
ebs 2 16;
ebs 4 13;
*)
let
  val res = ebsmod 61 13 77;
in
  if res = 40
     then print "PASSED!\n"
     else print "FAILED!\n"
end;
