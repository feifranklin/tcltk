proc SetPositive { variable value } {
    upvar $variable myVar
    if {$value<0} {
        set myVar [expr {-$value}]
    } else {
        set myVar $value
    }
    #return myVar ;# optional return
}

SetPositive x 5
SetPositive y -5

puts "X:$x, Y:$y\n"

proc two {y} {
    upvar 1 $y z ;# z call by reference y=5
    upvar 2 x a ;# a call by rerfence x=5
    puts "two: Z: $z, A: $a\n"
    set z 1
    set a 2
}

proc one {y} {
    upvar $y z ;# z call by reference 5
    puts "one: Z: $z"
    two z
}

one y
puts "\nX:$x, Y:$y" ;# x is 2, y is 1

proc existence {variable} {
    upvar $variable testVar
    if { [info exists testVar] } {
        puts "$variable exists"
    } else {
        puts "$variable does not exist"
    }    
}

set x 1
set y 2
for {set i 0} { $i < 5} { incr i} {
    set a($i) $i
}

puts "\ntesting unsetting a simple variable"
existence x
unset x
existence x
