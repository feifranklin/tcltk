proc safeIncr {val {amount 1}} {
    upvar $val v
    if {[info exists v]} {
        incr v $amount
    } else {
        set v $amount
    }
}

if {[info procs safeIncr] eq "safeIncr"} {
    safeIncr a
}

puts "After calling safeIncr with a non-existent variable: $a"

set a 100
safeIncr amount
puts "After calling safeIncr with a existent variable with a value of 100: $a"

safeIncr b -3
puts "After calling safeIncr with a non-existent variable by -3: $b"

safeIncr b 100
puts "After calling safeIncr with a variable witha a value of 100 by -3: $b"

puts "\nThese variables have been defined: [lsort [info vars]]"
puts "\nThese globals have been defined: [lsort [info globals]]"

set exist [info procs localproc]
if {$exist == ""} {
    puts "\nlocalproc does not exist at point 1"
}

proc localproc {} {
    global argv
    set loc1 1
    set loc2 2
    puts "\nLocal variables accessible in this proc are :[lsort [info locals]]"
    puts "\nVariables accessible in this proc are :[lsort [info vars]]"
    puts "\nGlobal variables accessible in this proc are :[lsort [info globals]]"
}

set exists [info procs localproc]
if {$exist != ""} {
    puts "\nlocalproc does exist at point 2"
}

localproc
