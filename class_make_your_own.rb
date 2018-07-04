#Define a class
class Name 
    #This is a method
    def first
        "Steve"
    end
    
    def last
        "Torrens"
    end
end

name = Name.new #This instantiates the class Name. name is an instance of the class Name.

puts name, name.first, name.last

#With class attributes
class Namev2 
    #In ruby you can replace the getter methods with:
    #attr_reader :first_name, :last_name
    #You can also replace the setter methods with:
    #attr_writer :first_name
    #If your attribute has both a setter and a getter then
    #attr_accessor :first_name

    #Initilises class attributes
    def initialize(first_name, last_name)
        @first_name = first_name
        @last_name = last_name
    end    

    #This is a getter method - use attr_reader instead
    def first_name
        @first_name
    end
    
    def last_name
        @last_name
    end

    #This is a setter method - use attr_writer instead
    def first_name=(new_first_name)
        @first_name = new_first_name
    end    
end

namev2 = Namev2.new('Ste', 'Torrens') #This instantiates the class Name. name is an instance of the class Name.

puts namev2, namev2.first_name, namev2.last_name
namev2.first_name = "Boris"
puts namev2, namev2.first_name, namev2.last_name

