require 'pry'

class CashRegister

  attr_reader :total

  def self.total(total)
    @total = total

  def initialize(input)
    @total = 0
  end
end
