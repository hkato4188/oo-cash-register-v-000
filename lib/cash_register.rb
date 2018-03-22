require 'pry'

class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity=1)
    @total = (price * quantity) + @total
  end

  def apply_discount(discount)
    @total = @total * (discount.to_f / 100)
  end

end
