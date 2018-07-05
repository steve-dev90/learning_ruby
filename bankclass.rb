class BankAccount
    attr_reader :name
  
    def initialize(name)
      @name = name
      @transactions = []
      add_transaction("Beginning Balance", 0)
    end
    
    def debit(description, amount)
      add_transaction(description, -amount)
    end
    
    def credit(description, amount)
      add_transaction(description, amount)
    end
    
    def add_transaction(description, amount)
      @transactions.push(description: description, amount: amount)
    end
  
    def balance
      balance = 0
      @transactions.each do |transaction|
        balance += transaction[:amount]
      end
      balance
    end  

    def to_s
        "name: #{@name} balance: #{balance}"
    end    
      
  end

  bankaccount = BankAccount.new("Steve")
  bankaccount.credit('pay',40)
  bankaccount.debit('magazines',20)
  puts bankaccount