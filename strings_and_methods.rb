#This is a comment
#puts = outputs entered arguments to the console
# Can enclose puts arguments in brackets
puts "hello string"
puts 1, 2, "a", "b"
sleep 2
#puts skips to the next line of the console
#print stays on the same line
print "cd"
sleep 1
puts "\n"


#METHODS
#Method names use lower case snake_case by convention
def count
    puts 1
    puts 2
end

def add(first, second)
    puts first, second
    #You can leave out return if it is the last statement in the method
    return first + second
end    

count
puts add(100, 50)
#brackets are not required on method calls
puts add 5, 10

#Getting console input
def get_answer(question)
    print question
    answer = gets
    puts answer 
end

get_answer("What is your name? ")

#STRING OPERATIONS
#You cannot concatenate a string and a number (like js)
#You can use string interpolation. Anything in the {} is executed as ruby
#Must use string interpolation with double quotes
puts "helllo #{5+7}"

#STRING and NUMBER methods
puts "AA".length
puts 5.even?