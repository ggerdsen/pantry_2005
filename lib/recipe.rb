class Recipe

  attr_reader :name, :add_ingredient, :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
  end

  def add_ingredient(ingredient, amount)
        @ingredients_required[ingredient] += amount
  end



  def total_calories
    total = 0
    @ingredients_required.each do |ingredient|
      total += ingredient[1]*ingredient[0].calories
    end
    total
  end

end
