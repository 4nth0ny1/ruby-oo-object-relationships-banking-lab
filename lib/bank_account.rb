class BankAccount

    attr_reader :name 
    attr_accessor :balance, :status


    def initialize(name, balance = 1000, status = "open")
        @name = name 
        @balance = balance
        @status = status
    end 

    # #can deposit money into its account
    def deposit(deposit_amount)
        @balance += deposit_amount             
    end 

    # #display balance
    def display_balance          
        "Your balance is $#{self.balance}."
    end 

    # #is valid if "open" and balance > 0
    def valid?                   
        if @status == "open" && @balance > 0    
             return true 
         else 
             return false 
         end 
     end 

    def close_account 
        @status = "closed"
    end 
end
