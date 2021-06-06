puts "There are $argc arguments to this script"
puts "the name of this script is $argv0"
if {$argc > 0} {
    puts "the other arguments are $argv"
}
puts "you have these environment variables set:"
foreach index [array names env] {
    puts "$index: $env($index)"
}