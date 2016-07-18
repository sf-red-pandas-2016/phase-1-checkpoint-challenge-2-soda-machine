class SodaMachine < Soda
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

# find the soda which matches the soda brand passed to the method
# return the value associated with the key @brand

  def find_soda(soda_brand)
    @sodas.each do |soda|
       return soda if soda.brand == soda_brand
    end
    return nil
  end

  def sell(soda_brand)
    p @cash
    @sodas.each do |soda|
      if soda.brand == soda_brand
        @sodas.delete(soda)
        @cash += soda.price
      end
    end
    return nil
  end

end

# Driver Code


