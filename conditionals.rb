#Boleen operations - can't compare different class
#This returns false
puts "string and integer compare", "3" == 3

p "Enter number"
number = gets.to_i

if number > 5
    p "#{number} > 5"
end

unless number > 5
    p "#{number} < 5"
end

ginnyspeed = 3.24 + 2.28 + 3.78

puts "Ginny has spent ", ginnyspeed

if number > 5
    p "#{number} > 5"
elsif number > 3    
    p "#{number} > 3"
end

p "#{number} > 5"

speed = number


def check_speed(speed)
    if speed < 45
      puts "too slow"
    elsif speed <= 60
      puts "speed OK"
    else speed > 60
      puts "too fast"
    end
end

check_speed(speed)