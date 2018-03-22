require 'pry'

class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
    self.total = (total * (1 - (discount.to_f / 100))).to_i
    return "After the discount, the total comes to $#{self.total}."
  end
  end



end
