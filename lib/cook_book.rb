class CookBook

  attr_reader :recipes, :ingredients

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    binding.pry
    @ingredients_required.keys
  end

end
