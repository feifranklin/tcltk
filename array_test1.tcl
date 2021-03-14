proc addname {first last} {
    global names
    incr names(ID)
    set id $names(ID)
    set names($id,first) $first
    set names($id,last) $last
}

global names
set names(ID) 0

addname Marry Poppins
addname Uriah Heep
addname Rene Descartes
addname Leonardo "da Vinci"

# print content of names
parray names

array set array1 [list {123} {Abigail Aardvark} \
                       {234} {Bob Baboon} \
                       {345} {Cathy Coyote} \
                       {456} {Daniel Dog} ]

puts "Array1 has [array size array1] elements"
puts "Array1 has the following elements:\n[array names array1]\n"
puts "ID number 123 belongs to $array1(123)\n"
if {[array exists array1]} {
    puts "Array1 is an array variable"
} else {
    puts "Array1 is not an array variable"
}

# if the variable "exists", print out the correspoding message
proc existence { variable} {
    upvar $variable testVar
    if { [info exists testVar]} {
        puts "$variable exists"        
    } else {
        puts "$variable does not exist"
    }
}

# create an array
for {set i 0} {$i < 5} {incr i} { set a($i) test$i}
parray a

# test to "unset" a member of an array
existence a(0)
puts "a0 has been unset"
unset a(0)
existence a(0)
parray a

puts "\ntesting unsetting several members of an array, with an error"
existence a(3)
existence a(4)
catch {unset a(3) a(0) a(4)} ;# otherwise script exits with error "can't unset "a(0)": no such element in array"
puts "\nAfter attempting to delete a(3), a(0) and a(4)"
existence a(3)
existence a(4)

puts "\nUnset all the array's elements"
existence a
array unset a *
parray a

puts "\ntesting unsetting an array"
existence a
puts "a has been unset"
unset a
existence a
