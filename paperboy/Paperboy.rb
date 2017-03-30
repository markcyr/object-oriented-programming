class Paperboy

  attr_writer :name, :experience, :earnings
  attr_accessor :name , :start_address, :end_address, :deliver


  def initialize(name)
    @name =  name
    @experience =  50
    @earnings =  0.00
  end

  def quota
    @experience = @experience + (@experience * 0.5)
  end

  def deliver(start_address, end_address)
    total_paper_deliver = end_address - start_address
      if end_address >= start_address
        puts "What are you doing"
      end
end

  def earnings
    if total_paper_deliver > @experience
      @earnings = @earnings - 2.00 + (total_paper_deliver * 0.25)
    else
      over_quota = (total_paper_deliver - @experience) * 0.50
      @earnings = @earnings + over_quota + (total_paper_deliver * 0.25)
  end

  def report
    puts "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
  end

end
