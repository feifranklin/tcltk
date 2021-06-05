package require tutstack 1
set stack [tutstack::create]
set stack2 [tutstack::create]
set stack3 [tutstack::create]
foreach num {1 2 3 4 5} {
    tutstack::push $stack $num
}

while {![tutstack::empty $stack]} {
    puts "[tutstack::pop $stack]"
}

tutstack::destroy $stack
tutstack::destroy $stack2
tutstack::destroy $stack3