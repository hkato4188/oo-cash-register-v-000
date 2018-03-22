require 'pry'

class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity=1)
# binding.pry
    self.total += price * quantity
  end

  def apply_discount
binding.pry
    self.total = (discount.to_f / 100).to_f *  total
  end

end
