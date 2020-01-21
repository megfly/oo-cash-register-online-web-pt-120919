class CashRegister
  
  attr_accessor :discount, :total, :last_transaction
  
  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item (title, price, quantity = 1)
    #price * quantity = total 
    @total += price * quantity
    quantity.times do 
      items << title 
    end 
  end 
  
  def apply_discount 
    if discount == 0 
      "There is no discount to apply."
    else 
      x = (@total * (@discount.to_f / 100)).to_i
      @total -= x
      "After the discount, the total comes to $#{@total}."
    end 
  end 
  
  def items
    @items
  end 
  
  def void_last_transaction
    @total = @total -= @last_transaction
  end 
  
end 
