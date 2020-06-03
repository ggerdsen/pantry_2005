class Cookbook

  attr_reader :name, :add_ingredient, :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
  end
