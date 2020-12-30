set Z Albany
set Z_LABEL "the capital of New York is: "

puts "$Z_LABEL $Z"
puts {$Z_LABEL $Z}

puts "$Z_LABEL {$Z}"

set x  abc
puts "A simple substituion : $x\n"

set y [set x "def"]
puts "remember that set returns the new value of the variable :x: $x, Y:$y\n"
