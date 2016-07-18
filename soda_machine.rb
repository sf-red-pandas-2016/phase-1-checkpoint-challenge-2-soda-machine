class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    sodas.count
  end

  def find_soda(soda_brand)
    @sodas.find { |soda| soda_brand == soda.brand }
  end

  def sell(soda_brand)
    @sodas.each do |soda|
      if soda_brand == soda.brand
        @cash += soda.price
        @sodas.delete(soda)
      end
    end
    return nil
  end

end
