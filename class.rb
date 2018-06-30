#Can get a list of the methods available on an object by
p 2.methods.sort 
p "AA".methods.sort

p 2.class

#Numbers
integer = 5
decimal = 5.3

p integer.class
puts decimal.class

#integer division - result is truncated
puts "integer division", 7/5
puts "division with an integer and float", 7.0/5

#Shorhand operation
number = 5
p number += 5
p number /= 2

#Boleen operations - can't compare different class
#This returns false
puts "string and integer compare", "3" == 3