proc timetest1 {lst} {
    set x [lsearch $lst "5000"]
    return $x
}

proc timetest2 {array} {
    upvar $array a
    return $a(5000)
}

# create and initilaize the array, list
for {set i 0} {$i < 5001} {incr i} {
    set array($i) $i
    lappend list $i
}


puts "Time for list search: [time {timetest1 list} 10]"
puts "Time for array search: [time {timetest2 array} 10]"