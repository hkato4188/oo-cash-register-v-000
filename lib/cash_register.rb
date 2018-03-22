require 'pry'

class CashRegister

  attr_accessor :total

  def initialize(discount=20)
    @total = 0
  end
end
