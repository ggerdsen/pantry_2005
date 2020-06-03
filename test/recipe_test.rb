require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'
require './lib/cook_book'
require 'pry'

class RecipeTest < Minitest::Test

  def setup
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    @recipe1 = Recipe.new("Mac and Cheese")
    @cookbook = CookBook.new
  end

  def test_it_exists
    assert_instance_of Ingredient, @ingredient1
    assert_instance_of Ingredient, @ingredient2
  end

  def test_it_has_a_name
    assert_equal "Mac and Cheese", @recipe1.name
  end

  def test_it_returns_ingredients_required
    @recipe1.add_ingredient(@ingredient1, 2)
    @recipe1.add_ingredient(@ingredient1, 4)
    @recipe1.add_ingredient(@ingredient2, 8)
    # assert_equal {@ingredient1 => 6, @ingredient2 => 8}, @recipe1.ingredients_required
  end

  def test_it_returns_ingredients
    @recipe1.add_ingredient(@ingredient1, 2)
    @recipe1.add_ingredient(@ingredient1, 4)
    @recipe1.add_ingredient(@ingredient2, 8)
    assert_equal [@ingredient1, @ingredient2], @recipe1.ingredients
  end

  def test_it_exists
    assert_instance_of CookBook, @cookbook
  end

end
