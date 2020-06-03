class Ingredient

  attr_reader :name
  def initialize(info)
    @name = info[:name]
    @unit = info[:unit]
    @calories = info[:calories]
  end

end
