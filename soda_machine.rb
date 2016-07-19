
class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas] #=> Soda[]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length #Even without the READER it will use the instance variable
    # sodas.length #Using a method to access the variable, if you don't READ it, it can't find it.

    # @sodas.count
    # sodas.count

    # self.sodas.count
    # self.sodas.length
  end

  def find_soda(soda_brand)

    # From breakout session
    # @soda.select { |soda| soda.brand == soda_brand } # selects iterates over the whole array and returns all matches

    # @soda.find { |soda| soda.brand == soda_brand } # this works because it returns nil; it is looking for the first one, if at all, if it finds one, it returns in.

    @sodas.each do |soda|
      if soda.brand == soda_brand
        return soda
      end
      return nil
    end

  end


  def sell(soda_brand)

    # found_soda = find_soda(soda_brand) # find_soda(soda_brand) is going to return nil or an object
    # if found_soda
    #   @cash += found_soda.price
    #   @sodas.delete(found_soda)
    # end
    # found_soda


    @sodas.each do |soda|
      if soda.brand == soda_brand

        @cash += soda.price
        @sodas.delete(soda)
        @cash
      end

    end
    return nil
  end
end

