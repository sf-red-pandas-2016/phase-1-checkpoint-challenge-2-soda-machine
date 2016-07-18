class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def self.current_inventory_count
    return @sodas.count

  end

  def find_soda(soda_brand)
    @sodas.each do |soda|
      it soda.brand == soda.bring
        return soda
      else
        return nil
      end
    end

  end

  def sell(soda_brand)
    #
  end

end


d.find_soda(pepsi)
