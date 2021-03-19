set infilename "array_test2.tcl"
set infile [open $infilename r]
set number 0
 
while {[gets $infile line] >= 0}  {
    incr number
}

puts "Number of lines: $number"

close $infile

# use glob for enumerate files in the current directory
set tclfiles [glob *.tcl]
puts "Name -date of last modification"
foreach f $tclfiles {
    puts "$f - [clock format [file mtime $f] -format %x]"
}