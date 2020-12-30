proc sum {arg1 arg2} {
    return [expr {$arg1+$arg2}]
}

puts "the sum of 2 + 3 is [sum 2 3]\n"

proc for {a b c} {
    puts "the for command has been replaced by a puts\n"
    puts "the arguments are $a\n$b\n$c\n"
}

for {set i 1} {$i < 10} {incr i}