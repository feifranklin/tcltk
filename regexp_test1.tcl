set sample "Where there is a will, There is a way."

# match the first substring with lowercase letters only
set result [regexp {[a-z]+} $sample match]
puts "Result: $result\t Match: $match"

# match the first two words, the first one allows uppercase
set result [regexp {([A-Za-z]+) +([a-z]+)} $sample match sub1 sub2 ]
puts "Result: $result\t Match: $match\t Sub1: $sub1\t Sub2: $sub2"

# match the first two words, the the first letter in first one needs in uppercase.
set sample "where there is a will, There is a way."
set result [regexp {([A-Z][A-Za-z]+) ([a-z]+)} $sample match sub1 sub2 ]
puts "Result: $result\t Match: $match\t Sub1: $sub1\t Sub2: $sub2"

# replacement
regsub "way" $sample "lawsuit" sample2
puts "New: $sample2"

# If the first character after the [ is a caret (^), then the regular expression parser will match any character not in the set of characters between the square brackets.
# uses -all to count the number of words
puts "Words count: [regexp -all {[^ ]+} $sample]"