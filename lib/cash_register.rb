class CashRegister
  attr_accessor :total, :discount, :items


  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
    @transactions = []
  end

  def add_item(title,price,quantity=1)
    @total += (price*quantity)
    quantity.times do
      @items << title
    end

    @transactions << price*quantity

  end

  def apply_discount
    if(@discount!=0)
      @total = @total-(@total*@discount/100)
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @transactions[-1]
  end
end
