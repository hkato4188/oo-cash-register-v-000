require 'pry'

class CashRegister

  attr_reader :total

  def self.total(total)
    @total = total
  end
  
  def initialize(input)
    @total = 0
  end
end
