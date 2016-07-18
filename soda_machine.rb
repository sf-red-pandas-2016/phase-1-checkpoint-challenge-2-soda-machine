require_relative 'soda.rb'
class SodaMachine
  attr_reader :sodas
  attr_accessor :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    return @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.each do |soda|
      if soda.brand == soda_brand
        return soda
      else
        return nil
      end
    end
  end

  def sell(soda_brand)
    @sodas.each do |soda|
      if soda.brand == soda_brand
        return @cash += soda.price
        soda.delete
      end
    end
    if @sodas.none? { |soda| soda.brand == soda_brand}
      return nil
    end
  end

end
