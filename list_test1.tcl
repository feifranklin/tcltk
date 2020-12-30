set x "a b c"
puts "item at index 2 of the list {$x} is : [lindex $x 2]\n"

set y [split 7/4/1776 "/"]
puts "we are celebrating on the [lindex $y 1]'th day of the [lindex $y 0]'th month\n"

set z [list puts "arg 2 is $y"]
puts "a command resemble : $z\n"

set i 0
foreach j $x {
    puts "$j is the item numbr $i of the list x"
    incr i
}