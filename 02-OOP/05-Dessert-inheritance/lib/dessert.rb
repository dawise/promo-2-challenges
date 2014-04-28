class Dessert

attr_reader :name, :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    @calories < 200
  end

  def delicious?
    true
  end
end

  class JellyBean < Dessert

    attr_accessor :flavor

    def initialize(name, calories, flavor)
      super (name, calories)
      @flavor = falvor
    end

    end

    def delicious?
      @flavor !+ "black licorice"
    end

  end

jelly = JellyBean.new("grandma", 500, "apple")