class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

#returns the number of sodas it contains
  def current_inventory_count
    @sodas.length
  end

#can find a single soda with a given brand
  def find_soda(soda_brand)
    @sodas.find do |soda|
      soda.brand == soda_brand
    end
  end

#sell a soda with a given brand
# once soda is sold, sodamachine cash should increase
# by sold soda's price
  def sell(soda_brand)
    if find_soda(soda_brand)
    sold_soda = find_soda(soda_brand)
    @cash += sold_soda.price
    @sodas.delete(sold_soda)
  end
  end

end
