#Here is a block - it the code between the do and end keywords
3.times do
    puts "hello"
end

#Here is a block using curly braces
3.times { puts "hello" }

#By convention use curly braces where the block has only one line of code

#BLOCK METHODS
def block_method
    puts "hello"
    yield #This directs the code to line 15
end

block_method do
    puts "there"
end    

#With a variable call
def get_info
    print "Do you like electric cars ? (y/n) "
    answer = gets.chomp.downcase
    if answer == "y" 
        yield answer 
    end
end

get_info do |answer|
    puts answer.upcase + "es" + " you like electric cars"
end    

def get_info (question, &block)
    print question
    answer = gets.chomp.downcase
    if answer == "y" 
        block.call(answer) 
    end
end

get_info("Do you like putt putt cars ? (y/n) ") do |answer|
    puts answer.upcase + "es" + " you like putt putt cars"
end   
