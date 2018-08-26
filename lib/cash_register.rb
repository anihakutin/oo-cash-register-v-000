# OO Cash Register
# - Add items of varying quantities and prices
# - Calculate discounts
# - Keep track of what's been added to it
# - Void the last transaction

class CashRegister
  attr_accessor :total, :discount, :items, :last_item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = [ ]
    @last_item = { }
  end
  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    self.items.concat([item] * quantity)
    self.last_item = [item, price, quantity]
  end
  def apply_discount
      if self.discount > 0
        self.total -= self.discount.to_f * 10
        "After the discount, the total comes to $#{self.total.to_i}."
      else
        "There is no discount to apply."
      end
  end
  def void_last_transaction
    self.items.pop
    self.total -= last_item[price] * last_item[quantity]
  end
end
