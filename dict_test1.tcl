#create a dictionary
set names [dict create 1 John 2 Mary 3 Paul]
dict append names 4 Fred
puts $names
set isExist [dict exists $names 2]
puts "exists 4? $isExist"
set getVal1 [dict get $names 1]
puts "val1=$getVal1"

# all keys in dict 
set allkeys [dict keys $names]
puts "allkey=$allkeys"

# dict iteration
foreach item [dict keys $names] {
    set value [dict get $names $item]
    puts "$item=$value"
}