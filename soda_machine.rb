require_relative 'soda.rb'
class SodaMachine
  attr_reader :sodas, :cash, :soda_machine

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash] # total amt of money in machine
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    @sodas.each do |soda|
      if soda.brand == soda_brand
       return soda
      end
   end
   return nil
 end

  def sell(soda_brand)
    @sodas.each_with_index do |soda, i|
      if soda.brand == soda_brand
       @cash =  @cash + soda.price     # add price to cash
       @sodas.delete_at(i)   # remove coke zero from array
      end
   end
   return nil
 end

end
