class Pantry

  attr_reader :stock
  def initialize
    @stock = {}
  end

  def stock_check(ingredient)
    @stock.select do |x|
      ingredient
    end.size
  end

end
