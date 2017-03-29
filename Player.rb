class Player

lives =  5
gold_coins=  0
health_points =  10

  def level_up
    lives = lives + 1
  end

  def collect_treasure
    if gold_coins % 10
    level_up
  end

  def do_battle(damage)
    health_points = health_points - damage
    if health_points < 1
      lives = lives - 1
      if lives < 1
        reset.call
      else
        health_points = 10
    end
    def reset
      lives =  5
      gold_coins=  0
      health_points =  10      
    end


end
