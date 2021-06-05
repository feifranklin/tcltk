set cmd "OK"
eval puts $cmd

set cmd "puts"; lappend cmd {Also OK}; eval $cmd

# set cmd "Not OK"
# eval puts $cmd

eval [format {%s "%s"} puts "Even this works"]
set cmd "And even this can be made to work"
eval [format {%s "%s"} puts $cmd]

set tmpFileNum 0
set cmd {proc tempFileName}
lappend cmd {}
lappend cmd { global num;incr num;return $num }
eval $cmd

puts "\nThis is the body of the proc definition"
puts "[info body tempFileName]\n"

set cmd {puts "This is cool!"}
if {[info complete $cmd]} {
    eval $cmd
} else {
    puts "Imcomplete command: $cmd"
}