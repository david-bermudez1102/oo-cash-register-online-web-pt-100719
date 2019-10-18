class CashRegister
  attr_accessor :total, :discount
  attr_reader :items

  @items = []

  def initialize(discount=0)
    @discount = discount
    @total = 0
  end

  def add_item(title,price,quantity=1)
    @total += price*quantity
    quantity.times do
      @items << title
    end
  end

end
