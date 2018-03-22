require 'pry'

class CashRegister

  @@items = []
  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def self.add_item(title, price, quantity=1)
binding.pry
    self.total += price * quantity
    @@items << title
  end

  def self.apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
      self.total = (total * (1 - (discount.to_f / 100))).to_i
      return "After the discount, the total comes to $#{self.total}."
    end
  end

  def self.items
    @items
  end

end
