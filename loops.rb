# loops can be enlosed by a do .... end or { }. 
# Use { } when the loop only contains one line of code (by convention)

loop do
    print "How tall are you (cm) ?" 
    height = gets.to_i
    if height > 150
        break
    end
    # OR break if height > 150   
end   

#while loops
ruby = 0

while ruby < 15 # you can add a do
    print "How many rubies have you found ? "
    rubies_found = gets.chomp.to_i
    ruby += rubies_found
end 
puts "Number of ribies found #{ruby}"   

#also can have until loops ... same as while loops except condition is
# logically inverted.

#Iterating over an array
arr = [1,2,4,'eggs']
arr.each do |item|
    puts item
end    

#Iterating over a hash
dogs = { 'name' => 'sparky', 'tail' => 'fluffy', 'legs' => 4 }

dogs.each do |prop, value|
    puts "key : #{prop}"
    puts "value : #{value}"
end

dogs.each_key do |prop|
    puts "just key : #{prop}"
end

dogs.each_value do |value|
    puts "just value : #{value}"
end

#Iterate using times

5.times do |index|
    puts "heloooo #{index}"
end    

#Using a for loop - generally not preferred

for item in 1..10 do
    puts item
end  

for item in arr do
    puts item
end    
