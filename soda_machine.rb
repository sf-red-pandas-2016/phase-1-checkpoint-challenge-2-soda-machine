require_relative 'soda.rb'

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    return @sodas.count

  end

  def find_soda(soda_brand)
    @sodas.each do |soda|
      if soda.brand == soda_brand
        return soda
      else
        return nil
      end
    end

  def sell(soda_brand)
    if @sodas.include(soda_brand) == false
      return nil
    else
      @sodas.each do |drink|
        if drink.brand == soda_brand
          @cash += drink.price
          @sodas.delete(drink)
          @cash
        else
          return nil
        end
      end
    end
    else
      return nil
    end
  end
end

