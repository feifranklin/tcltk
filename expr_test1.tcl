proc findpow {num} {
    set pow 1
    while { $pow < $num} {
        set pow [expr $pow*2]
        puts "pow:$pow"
    }
    return $pow
}

set result [findpow 10]
puts "result:$result"

