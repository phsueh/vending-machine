class Coin < ActiveRecord::Base
    belongs_to :customer
    belongs_to :product

    attr_writer :quantity

    def initialize(name, value, quantity)
        @name = name
        @value = value
        @quantity = quantity
    end

    # this method does not work
    def reduce_quantity(amount)
        new_quantity = self.quantity - amount
        puts new_quantity
        self.update_attributes(quantity: new_quantity)
        puts self.quantity
    end

    def show_amount
        coins_arr = Array.new
        self.quantity.times {
            coins_arr.push(self.value)
        }
        coins_arr
    end

end