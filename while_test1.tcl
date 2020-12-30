set x 1
while {$x < 5} {
    puts "x is $x"
    puts {puts x is $x}
    set x [expr {$x+1}]
}

puts "exited first loop with x equal to $x\n"

set x 0
while "$x < 5" {
    set x [expr {$x+1}]
    if {$x>7} break
    #if "$x > 3" continue
    puts "x is $x"
    puts "$x < 5"
}

puts "exited second loop with x equal to $x\n"
