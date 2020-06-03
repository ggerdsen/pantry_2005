require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'
require 'pry'

class RecipeTest < Minitest::Test

  def setup
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    @recipe1 = Recipe.new("Mac and Cheese")
  end

  def test_it_exists
    assert_instance_of Ingredient, @ingredient1
    assert_instance_of Ingredient, @ingredient2
  end

  def test_it_has_a_name
    assert_equal "Mac and Cheese", @recipe1.name
  end

  def


end
