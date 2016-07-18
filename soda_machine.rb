class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.find {|i| i.brand == soda_brand }
  end

  def sell(soda_brand)
    if sold_soda = @sodas.find {|i| i.brand == soda_brand }
      @sodas.delete(sold_soda)
      @cash << sold_soda.price
      @cash.reduce(:+)
    else
      nil
    end
  end

end
