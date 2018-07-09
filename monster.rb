class Monster
    attr_reader :name, :actions
    
    def initialize(name)
      @name = name
      @actions = {
        screams: 0,
        scares: 0,
        runs: 0,
        hides: 0
      }
    end
    
    def scream(&block)
      actions[:screams] += 1
      print "#{name} screams! "
      yield self if block_given? #Self provides access to object instance in block
    end
  end
  
  monster = Monster.new("Fluffy")
  monster.scream do 
    puts "BOO!" 
    puts monster.actions
  end  