class Paperboy

  attr_writer :name, :experience, :earnings
  attr_accessor :name , :start_address, :end_address, :total_paper_deliver


  def initialize(name)
    @name =  name
    @experience = 50
    @earnings =  0.00
    @total_paper_deliver = 0
  end

  def quota
    if @experience > 49
      @experience = @experience + (@experience * 0.5)
    else
      @experience = 50
    end
  end

  def deliver(start_address, end_address)
    @total_paper_deliver = end_address - start_address
    puts "#{@total_paper_deliver}"
      if end_address <= start_address
        puts "What are you doing"
      end
  end

  def earning
    if @total_paper_deliver < @experience
      @earnings = @earnings - 2.00 + (@total_paper_deliver * 0.25)
      puts "#{@earnings} under"
    else
      over_quota = (@total_paper_deliver - @experience) * 0.25
      @earnings = @earnings + over_quota + (@total_paper_deliver * 0.25)
      puts "#{@earnings} over"
    end
  end

  def report
    puts "I'm #{@name}, I've delivered #{@total_paper_deliver} papers today and I've earned $#{@earnings} so far!"
  end

end
