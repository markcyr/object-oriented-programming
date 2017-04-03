require 'pry'
class Zombie


  @@horde = [ ]
#Will change
  @@plague_level = 10
  @@max_speed = 5
  @@max_strength = 8
  @@default_speed = 1
  @@default_strength = 3
  attr_accessor :zombie_speed , :zombie_strength, :speed , :plague_level , :max_speed , :max_strength, :zombie

  def initialize(speed , strength)
      if  @@max_speed < speed
        @zombie_speed = 5
      else
        @zombie_speed = speed
      end
      if @@max_strength < strength
          @zombie_strength = 8
      else
        @zombie_strength = strength
      end
  end

  def encounter
    zombie = rand(1..3)
     if zombie == 1
      return "You've escaping unscathe"
        elsif zombie == 2
      return "The Zombie killed you"
    else
        return "YOUR A ZOMBIE :("
    end
  end

  def outrun_zombie?
    your_speed = rand(@zombie_speed) + 2
    if @zombie_speed < your_speed
      return "You out ran the zombie"
    else
      return "The zombie got you"
    end
  end

  def survive_attack
    your_strength = rand(@zombie_strength) + 2
    if @zombie_strength < your_strength
      return "You stomped the zombie"
    else
      return "You got zombie stomped"
    end
  end

  def self.all
    @@horde.length

  end

  def self.new_day
  self.spawn
  self.some_die_off
  self.increase_plague_level
  binding.pry
  end

  def self.some_die_off
    dead_zombies =  rand(@@horde.length)
    dead_zombies.times do |a|
      @@horde.pop
    end
  end


  def self.spawn
    zom_num =  rand(@@plague_level)
     zom_num.times do |a|
      new_zombie = Zombie.new(rand(@@max_speed),rand(@@max_strength))
      @@horde << new_zombie
      end
  end
    # def self.create_ramdom(@max_speed.rand,@max_strength.rand)
    #   new_zombie = new(speed,strength)
    #   @@horde << new_zombie
    # end

  def self.increase_plague_level
    @@plague_level += rand(2)
  end
end
