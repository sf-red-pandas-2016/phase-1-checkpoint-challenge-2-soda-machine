require_relative 'soda.rb'
class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args.fetch(:sodas)
    @cash = args.fetch(:cash)
  end

  def current_inventory_count
    sodas.count
  end

  def find_soda(soda_brand)
    sodas.each do |soda_object|
      if soda_object.brand == soda_brand
        return soda_object
      else
        return nil
      end
    end
  end

  def sell(soda_brand)
    sodas.each do |soda_object|
      if soda_object.brand != soda_brand
        return nil
      elsif soda_object.brand == soda_brand
        cash.price += 1
        return sodas.drop(soda_object)
      end
    end
  end
end
