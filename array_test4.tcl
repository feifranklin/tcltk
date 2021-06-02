array set days {
    1   Monday
    2   Tuesday
    3   Wednesday
    4   Thursday
    5   Friday
    6   Saturday
    7   Sunday
}

foreach {n day} [array get days] {
    puts "$n --> $day"
}

# global namespace
# demo: arrays are collections of variables
upvar #0 days(1) mon 
upvar #0 days(2) tue 
upvar #0 days(3) wed 

puts "mon=$mon"
puts "tues=$tue"
puts "wed=$wed"