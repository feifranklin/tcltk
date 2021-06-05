set TEMPDIR "c:\users\Frank\Documents\GitHub\tcltk"
set dirs [list TEMPDIR]
puts "[format "%-15s    %-20s" "FILE" "DIRECTORY"]"

foreach dir $dirs {
    catch {cd $dir}
    set c_files [glob -nocomplain *]
    foreach name $c_files {
        puts "[format "%-15s    %-20s" $name [pwd]]"
    }
}