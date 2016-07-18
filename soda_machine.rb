class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

#return the current inventory count
  def current_inventory_count
    @sodas.count
  end

#find a single soda with a given brand
  def find_soda(soda_brand)
    @sodas.each do |soda|
  end

#sell a soda with a given brand, and remove soda from the soda machine
#should also add price of soda to soda machine's cash amount
  def sell(soda_brand)
  end

end
