string = "Treehouse"
string.each_char{|c| print "#{c}-"} 

haiku = <<-EOF
A string with three lines
Is considered multi line
Ruby code haiku
EOF

haiku.each_line{ |line| puts "* #{line}" }

#Ruby filter method
arr = [1,2,3,4,5,6,7]
puts arr.select { |number| number > 3}

s = arr.select do |number|
    number > 6
end    
puts s
#And its inverse
puts arr.reject { |number| number > 3}

#Select also works on a hash

hash = { 'name' => 'Jason', 'location' => 'Treehouse' }
puts hash.keep_if { |key, val| key == "name" }