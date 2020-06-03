require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'
require 'pry'

class IngredientTest < Minitest::Test

  def setup
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    @pantry = Pantry.new
  end

  def test_it_exists
    assert_instance_of Ingredient, @ingredient1
  end

  def test_it_has_a_name
    assert_equal "Cheese", @ingredient1.name
  end

  def test_it_has_a_unit
    assert_equal "oz", @ingredient1.unit
  end

  def test_it_has_calories
    assert_equal 50, @ingredient1.calories
  end

  def test_it_creates_pantry
    assert_instance_of Pantry, @pantry
  end

  def test_pantry_gets_ingredients
    assert_equal 0, @pantry.stock_check(@ingredient1)
  end

  def test_it_can_restock_ingredients
    @pantry.restock(@ingredient1, 5)
    @pantry.restock(@ingredient1, 10)
    assert_equal 15, @pantry.stock_check(@ingredient1)
    @pantry.restock(@ingredient2, 7)
    assert_equal 7, @pantry.stock_check(@ingredient2)
  end

end
