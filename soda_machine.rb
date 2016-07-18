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
    @sodas.find { |soda| soda.brand == soda_brand}
  end

  def sell(soda_brand)
    soda = @sodas.find { |soda| soda.brand == soda_brand}
    if @sodas.include?(soda)
      @cash += soda.price
      @sodas.delete(soda)
    else
      nil
    end
    # @sodas.delete.soda
  end

end
