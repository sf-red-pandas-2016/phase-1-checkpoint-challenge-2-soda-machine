class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    @sodas.find {|x|x.brand==soda_brand}
  end

  def sell(soda_brand)
    if find_soda(soda_brand)
      a=find_soda(soda_brand)
      @cash +=a.price
      @sodas.delete_if{|x|x.brand==soda_brand}
    else
      return nil
    end
  end

end
