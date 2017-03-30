class BankAccount

  attr_accessor :balance

  @@intrest_rate = 0.01
  @@accounts = []

  def initialize
    @balance = 0
  end

  def put_balance
    puts "#{@balance}"
  end

  def deposit(new_amount)
    @balance = @balance + new_amount
  end

  def withdraw(new_amount)
    @balance = @balance - new_amount
  end

#  def gain_interest
#    intrest = 0.025 * @balance
#    @balance = intrest + @balance
#  end

  def create
    acc = BankAccount.new()
    @@accounts = (acc)
  end

  def total_funds
    @@accounts.each { |a| sum+=a }
  end

  def intrest_time
    @@accounts.each { |a| (a * @@intrest_rate) }

  end

end
