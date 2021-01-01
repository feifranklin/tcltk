set fullpath "/usr/home/clif/TCL_STUFF/TclTutor/Lsn.17"
set relativepath "CVS/Entries"
set directorypath "/usr/bin/"

set paths [list $fullpath $relativepath $directorypath]

foreach path $paths {
    set first [string first "/" $path]
    set last [string last "/" $path]

    # report whether the path is absolute or relative
    if {$first != 0} {
        puts "$path is a relative path"
    } else {
        puts "$path is an absolute path"
    }

    # if "/" is not the last character in $path, report the last word.
    # else, remove the last "/" and find the next to last "/", and then 
    # report the last word
    incr last
    puts "incr last, last=$last"
    if {$last != [string length $path]} {
        set name [string range $path $last end]
        puts "the file referenced in $path is $name"
    } else {
        incr last -2
        puts "incr last by -2, last=$last"
        set tmp [string range $path 0 $last]
        set last [string last "/" $tmp]
        incr last
        set name [string range $path $last end]
        puts "the final directory in $path is $name"
    }

    # use patten
    if {[string match "*CVS*" $path]} {
        puts "$path is part of the source code control system."
    }
    
}