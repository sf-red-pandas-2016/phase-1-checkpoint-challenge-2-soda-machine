class SodaMachine
  attr_reader :sodas, :cash, :soda_machine


  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @soda_machine = { sodas: ["pepsi", "mountain_dew", "coke_zero", "second_pepsi"], cash: 1.00}
    @pepsi = {brand: 'Pepsi', price: 0.65}
    @mountain_dew = { brand: 'Mountain Dew', price: 0.75 }
    @coke_zero = { brand: 'Coke Zero', price: 1.00 }
    @second_pepsi = {brand: 'Pepsi', price: 0.65}
  end

  def current_inventory_count
    soda_machine[:sodas].count
  end

  def find_soda(soda_brand)
    @sodas.each do |x|
    if @sodas.brand == soda_brand
       return @sodas[:brand]
    else
       return nil
    end
  end

  def sell(soda_brand)
    sodas.each { |k,v| p v }
    soda_brand.price
  end

end
