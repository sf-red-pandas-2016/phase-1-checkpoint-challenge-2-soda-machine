require_relative 'soda.rb'
class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    return sodas.length
  end

  def find_soda(soda_brand)
    sodas.each {|soda|
      if soda.brand == soda_brand
        return soda
      else
        return nil
      end
    }

  end

  def sell(soda_brand)
    return find_soda(soda_brand)
  end

end


