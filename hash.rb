cart = Hash.new
p cart
cart = {"name" => "bread", "quantity" => 1}
#To access a value, use the key 
p cart["name"] #prints bread

#Adding key-value pairs
cart["brand"] = "Steve's bread"
cart[:type] ="brown bread"
cart.store(:serial_number, 22311)
p cart

#KEYS#
#To get an array of the hash keys
p cart.keys
#To check if there a hash has a key
p cart.key?("name")
#Can also use .has_key? and .member

#VALUES#
#To get an array of the value keys
p cart.values
#To check if there a hash has a value
p cart.value?(1)
#Can also use .value_key?

#Methods
p cart.length #No. of key-value pairs

p cart.shift #Changes hash, deletes first k-v pair
p cart

p cart.merge({"name" => "bread"}) #Keeps cart unchanges, creates new hash
#NB merged k-v pair has precedence