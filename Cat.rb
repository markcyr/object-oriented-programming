class Cat

  attr_accessor  :preferred_food, :meal_time,  :food, :meal, :eats_at, :eats, :catsname

  def initialize(name, preferred_food, meal_time)
    @catsname = name
    @food = preferred_food
    @meal = meal_time
  end

  def eats_at
    if @meal < 12
    eats =  "#{@catsname}'s meal time is #{@meal} AM"

    else
      eats = "#{@catsname}'s meal time is #{@meal - 12} PM"

    end
  end

  def meow
    puts "My name is #{@catsname} and I eat #{@food} at #{eats_at}"

  end
end
