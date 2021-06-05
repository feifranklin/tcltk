#register the package
package provide tutstack 1.0
package require Tcl 8.5

#create the namespace
namespace eval ::tutstack {
    #exports command
    namespace export create destroy push pop peek empty

    #setup state
    variable stack
    variable id 0
}

#create a new stack
proc ::tutstack::create {} {
    variable stack
    variable id

    # token will be "stack1", "stack2", etc to identify the instance
    set token "stack[incr id]"
    set stack($token) [list]
    puts "create:$token, stack:$stack($token)"
    
    return $token
}

#destroy a stack
proc ::tutstack::destroy {token} {
    variable stack
    unset stack($token)
}

#push element to stack
proc ::tutstack::push {token elem} {
    variable stack
    lappend stack($token) $elem
}

#check if a stack is empty
proc ::tutstack::empty {token} {
    variable stack
    set num [llength $stack($token)]
    return [expr {$num == 0}]
}

#peek
proc ::tutstack::peek {token} {
    variable stack
    if {[empty $token]} {
        error "stack empty"
    }
    return [lindex $stack($token) end]
}

#pop element from stack
proc ::tutstack::pop {token} {
    variable stack
    set ret [peek $token]
    set stack($token) [lrange $stack($token) 0 end-1]
    return $ret
}

