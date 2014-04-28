class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  #initialize methode
  #def methode d'instance height , #if + 10 ans =10m
  attr_reader :height :age :fruits

  def initialize(age, height, fruits)
    @age = 0
    @heiht = 0
    @fruits = 0
    @dead = false
  end

   def one_year_passes
    @ge += 1
    grow_up
    grow_fruits
    may_die
  end

  def pick_a_fruit
    if @fruits > 0
      @fruits -= 1
    end
  end

  def dead?
    @dead
  end

  Private
  def grow_up
    if @age.between?(1, 10)
      @height += 1
    end
  end

  def grow_fruits
    if age.between?(6, 10)
      @fruits  = 100
    elsif age.between?(11, 15)
      @fruits = 200
    else
      @fruits = 0
  end

  def may_die
    if @age == 100
      @dead = true
    elsif @age >= 50
      if rand(6)+1 == 6
        @dead = true
      end
    end

  end

end

############
oranger = OrangeTree.new
puts oranger.height
end



