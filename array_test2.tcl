#
# The example of the previous lesson revisited - to get a
# more general "database"
#

proc addname {db first last} {
    upvar $db name
    incr name(ID)
    set id $name(ID)
    set name($id,first)    $first
    set name($id,last)     $last
}

proc report {db} {
    upvar $db name
    #loop over last names; make a map from last name to ID
    foreach n [array names name "*,last"] {
        regexp {[^,]+} $n id
        set last        $name($n)
        # store in tmp array in an "inverse" order: last name -> ID
        set tmp($last)  $id
    }
    parray tmp
    parray name
    foreach last  [lsort [array names tmp]] {
        set id $tmp($last)
        puts "  $name($id,first) $name($id,last)"
    }
}
#puts "before init ID: $ID"
set finctional_name(ID) 0
set historical_name(ID) 0

addname fictional_name Mary Poppins
addname fictional_name Uriah Heep
addname fictional_name Frodo Baggins

addname historical_name Rene Descartes
addname historical_name Richard Lionheart
addname historical_name Leonardo "da Vinci"
addname historical_name Charles Baudelaire
addname historical_name Julius Caesar

#puts "after init, ID: $ID"

# some simple reporting
puts "finctional characters"
report fictional_name
puts "historical characters"
report historical_name