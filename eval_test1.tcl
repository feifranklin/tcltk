if {[string match [info procs newProcB] ""]} {
    puts "\nDefining newProcB for this invocation"
    set cmd "proc newProcB "
    lappend cmd {}
    lappend cmd {
        global num;
        incr num; 
        return $num}
    
    eval $cmd
}

puts "\nThe body of newProcB is:\n[info body newProcB]\n"
puts "newProcB returns: [newProcB]"
