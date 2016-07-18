require_relative 'soda'

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
   sodas.find {|soda| soda.brand == soda_brand ? soda :nil}
  end

  def sell(soda_brand)
      if sodas.include?(soda_brand)
        cash << soda.price
      end
  end
end


