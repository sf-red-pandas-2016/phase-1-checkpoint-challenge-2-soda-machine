class SodaMachine
  attr_reader :sodas, :cash, :price

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    @sodas.each { |soda| return soda if soda.brand == soda_brand }
    nil # returns nil if soda machine can't find a soda
  end

  def sell(soda_brand)
    if find_soda(soda_brand) 
      soda = find_soda(soda_brand)
      @cash += soda.price
      @sodas.delete(soda)
    end
  end
end

