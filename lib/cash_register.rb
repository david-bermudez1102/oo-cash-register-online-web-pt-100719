class CashRegister
  attr_accessor :total, :discount
  attr_reader :items

  @items_array = []

  def initialize(discount=0)
    @discount = discount
    @total = 0
  end

  def add_item(title,price,quantity=1)
    @total += price*quantity

      @items_array << title

  end

end
