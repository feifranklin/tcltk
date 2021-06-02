# dict
set employees {
    0001 {
        firstname   Joe
        surname     Schmoe
        title       Mr
    }
    1234 {
        firstname   Ann
        initial     E 
        surname     Huan
        title       Miss
    }
}
# query by key
puts [dict get [dict get $employees 1234] firstname]
puts [dict get $employees 1234 firstname]


set languages(0) tcl
set languages(1) "C Language"
puts $languages(0)
puts $languages(1)

# array
set employees2(0001,firstname)     Joe
set employees2(0001,surname)       Schmoe
set employees2(0001,title)         Mr
set employees2(1234,firstname)     Ann
set employees2(1234,initial)       E
set employees2(1234,surname)       Huan
set employees2(1234,title)         Miss

set AnnRecords [dict get $employees 1234]
puts $AnnRecords

set AnnRecords2 [array get employees2 1234,*]
puts $AnnRecords2

