class BankAccount

  attr_accessor :balance

  @@intrest_rate = 0.01
  @@accounts = [ ]

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

  def self.create
    acc = BankAccount.new
    @@accounts << acc
    return acc
  end

  def total_funds
    @@accounts.each { |a| sum+=a }
  end

  def self.intrest_time
    @@accounts.each { |a| (a.balance = * @@intrest_rate) }
  end

  def self.report
    @@accounts
  end

end
