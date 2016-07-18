class Soda
  attr_reader :price
  attr_accessor :brand

  def initialize(args = {})
    @brand = args[:brand]
    @price = args[:price]
  end
end
