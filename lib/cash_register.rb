# OO Cash Register
# - Add items of varying quantities and prices
# - Calculate discounts
# - Keep track of what's been added to it
# - Void the last transaction

class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = [ ]
  end
  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    self.items.concat([item] * quantity)
  end
  def apply_discount
      if self.discount > 0
        self.total -= self.discount.to_f * 10
        "After the discount, the total comes to $#{self.total.to_i}."
      else
        "There is no discount to apply."
      end
  end

end
