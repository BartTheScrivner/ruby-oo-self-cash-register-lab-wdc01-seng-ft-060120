
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  attr_reader 
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity = quantity
    self.last_transaction = price * quantity 
    self.total += last_transaction
    quantity.times {@items << title}
  end

  def apply_discount
      self.total -= total * discount / 100.00
      self.discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total.to_i}."
  end

  def void_last_transaction
    self.total -= last_transaction
    @items.length == 0 ? @total = 0 : total = total
  end

end
