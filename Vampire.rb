Class Vampire


    @@coven = []

  def initialize(name,age)
    @name = name
    @age = age
    @in_coffin = true
    @drink_blood = true
  end

  def self.create(name,age)
    vamp = self.new
    @@coven.push(vamp)
    end
  end





 end
