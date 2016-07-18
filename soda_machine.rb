require_relative 'soda'

class SodaMachine

  attr_accessor :cash, :sodas

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

#return the current inventory count
  def current_inventory_count
    @sodas.count
  end

#find a single soda with a given brand
  def find_soda(soda_brand)
    @sodas.each do |soda|
      if soda.brand == soda_brand
        return soda
      else
        return nil
      end
    end
  end

#sell a soda with a given brand, and remove soda from the soda machine
#should also add price of soda to soda machine's cash amount
  def sell(soda_brand)
    @sodas.each do |soda|
      if soda.brand == soda_brand
        @cash += soda.price
        @sodas.delete(soda)
      end
    end
    return nil
  end


##### ATTEMPT AT REFACTORING ####### NOT WORKING

  # def sell(soda_brand)
  #   if find_soda(soda_brand)
  #     @cash += soda.price
  #     @sodas.delete(soda)
  #   end

    # return nil if find_soda(soda_brand) == nil
    # sold_soda = find_soda(soda_brand)
    #   @cash += soda.price
    #   @sodas.delete(soda)
  # end


end

