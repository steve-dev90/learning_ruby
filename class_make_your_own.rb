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
class Namev2 #Class naming convection Capital first letter and camel case.
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
    
    #This is a method - it only will have access to the data provided in the instance
    def full_name
        space = " " #This is a local variable - can only be accessed within the method
        @first_name + space + @last_name
    end  
    
    #You may wish to define a to_s method. The command 'puts object instance' will
    #return the name of the object and its memory address. The to_s replace is used
    #to over-ride this with another more useful result e.g.
    # def to_s
        #full_name
    #end   

end

namev2 = Namev2.new('Ste', 'Torrens') #This instantiates the class Name. name is an instance of the class Name.

puts namev2, namev2.first_name, namev2.last_name
namev2.first_name = "Boris"
puts namev2, namev2.first_name, namev2.last_name
puts namev2.full_name
puts namev2.inspect #useful for debugging - gives the 'state' of the object
