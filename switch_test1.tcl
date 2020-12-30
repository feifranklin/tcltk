set x "ONE"
set y 1 
set z ONE
switch $x {
    $z {
        puts "z"
    }
    #"ONE" {
    #    puts "match first ONE"
    #}
    ONE {
        set y1 [expr {$y+1}]
        puts "match ONE. $y + one is $y1"
    }
    TWO {
        set y1 [expr {$y+2}]
        puts "match TWO. $y + two is $y1"
    }
    default {
        puts "$x is not a match"
    }
}

switch $x "$z" {
        set y1 [expr {$y+1}]
        puts "match \$z. $y+$z is $y1"
    } ONE {
        puts "match ONE"
    } TWO {
        puts "match TWO"
    } default {
        puts "$x does not match an of these choices"
    }

switch $x "ONE" "puts ONE=1" "TWO" "puts TWO=2" "default" "puts no_match"