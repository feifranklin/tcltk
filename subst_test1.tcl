set a "alpha"
set b a

puts {a and b with no substitution: $a $$b}
puts "a and b with one pass of substitution: $a $$b"
puts "a and b with subst in braces: [subst {$a $$b}]"
puts "a and b with subst in quotes: [subst "$a $$b"]\n"

puts "format with no subst [format {$%s} $b]"
puts "format with subst: [subst [format {$%s} $b]]"
eval "puts \"eval after format: [format {$%s} $b]\""

