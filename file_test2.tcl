 set dirs [glob -nocomplain -type d *]
 if { [llength $dirs] > 0 } {
     puts "Directory: "
     foreach d [lsort $dirs] {
         puts " $d"
     }
 } else {
     puts "(no directories)"
 }

 set files [glob -nocomplain -type f *]
 if { [llength $files] > 0} {
     puts "Files: "
     foreach f [lsort $files] {
         puts "    [file size $f] bytes - $f"
     }
 } else {
     puts "(no files)"
 }