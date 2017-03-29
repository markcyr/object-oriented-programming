class Player

  attr_writer :damage
  attr_reader :health_points, :gold_coins

  def initialize
    @lives =  5
    @gold_coins=  0
    @health_points =  10
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins  += 1
    if @gold_coins % 10 == 0
    level_up
    end
  end

  def do_battle(damage)
    @health_points = @health_points - damage
#      puts "#{health_points} #{@lives}"
    if @health_points < 1
#        puts "#{@health_points} #{@lives}"
      @lives = @lives - 1
      if @lives < 1
          reset
#          puts "hi"
      else
        @health_points = 10
      end
    end
  end


  def reset
   @lives = 5
   @gold_coins= 0
   @health_points = 10
  end


end
