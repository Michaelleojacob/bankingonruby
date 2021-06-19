class Account
    attr_reader :name
    attr_reader :balance
    def initialize(name, balance=100)
        @name = name
        @balance = balance
    end

    public
    def display_balance(pin_number)
        pin_number == pin ? (puts "Balance: $#{balance}.") : (puts pin_error)
    end
    
    def withdraw(pin_number, amount)
        if amount > balance
        return "the amount (#{amount}) you are attempting to withdrawl is more than your current balance (#{balance})"
    end

    if pin_number == pin
        @balance = @balance - amount
        puts "Withdrew #{amount}. New balance: $#{balance}"
    else
        puts pin_error
    end
    end

    def deposit(pin_number, amount)
        if pin_number == pin
            @balance = @balance + amount
            puts "Deposited #{amount}. New balance: $#{balance}"
        else 
            puts pin_error
        end 
    end

    private
    def pin
        @pin = 1234
    end

    private
    def pin_error
        return "Access denied: incorrect PIN."
    end
end

class SavingsAccount < Account
end

checking_account = Account.new("chase", 1000)

p my_account = Account.new("Michael", 3000)
p my_account.display_balance(1234)
p my_account.withdraw(1234, 1500)
# p my_account.display_balance(1234)
# p savings = SavingsAccount.new("savings", 10000)
# p savings.deposit(1234, 5)
# p savings.display_balance(1234)
