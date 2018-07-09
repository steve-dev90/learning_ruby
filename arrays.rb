
list = Array.new
list = [4, "late"]
p list
bags = []
bags = %w(green, bown)
p bags
item = "wand"
magic_list =[]
#Use %W for string interpolation
magic_list = %W(#{item} rabbit) 
p magic_list
# << adds items to end of array
magic_list << 5
magic_list.push("box")
# unshift method adds item to beginning of array
magic_list.unshift("staff")
magic_list += ["cards"]
p magic_list
# accessing array items index starts at 0
p magic_list.at(0)
p magic_list[0]
p magic_list.first
p magic_list.last
p magic_list[-1]
# Array methdos
p magic_list.include?(5)
p magic_list.insert(2, 5)
p magic_list.count
p magic_list.length
p magic_list.count(5)
#Removing items from arrays
p magic_list.pop #changes array
p magic_list
p magic_list.shift #changes array
p magic_list
p magic_list.slice(0, 2) #leaves array intact
p magic_list
