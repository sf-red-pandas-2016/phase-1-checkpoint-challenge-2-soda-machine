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
    @sodas.each { |soda| return soda if soda.brand == soda_brand }
    return nil
  end

  def sell(soda_brand)
    soda_sold = []

    @sodas.select do |soda|
      if soda.brand == soda_brand
        soda_sold << soda
        @cash += soda_sold[0].price
        @sodas.delete(soda_sold[0])
        return soda_sold[0]
      end
    end

    return nil
  end

end
