Product.destroy_all
Coin.destroy_all
Customer.destroy_all

puts "creating users"
user1 = Customer.create(name: "Zach")
user2 = Customer.create(name: "Thomas")

puts "creating coins"
coin5 = Coin.create(name: "Five Dollars", value: 5, quantity: 5)
coin3 = Coin.create(name: "Three Dollars", value: 3, quantity: 5)
coin2 = Coin.create(name: "Two Dollars", value: 2, quantity: 5)
coin1 = Coin.create(name: "One Dollar", value: 1, quantity: 5)
coin05 = Coin.create(name: "Fifty Cents", value: 0.5, quantity: 5)
coin25 = Coin.create(name: "Twenty-five Cents", value: 0.25, quantity: 5)

puts "creating inventory"
product1 = Product.create(name: "Coca Cola", price: 2,quantity: 2)
product2 = Product.create(name: "Sprite", price: 2.5,quantity: 2)
product3 = Product.create(name: "Fanta", price: 2.7,quantity: 3)
product4 = Product.create(name: "Orange Juice", price: 3 ,quantity: 1)
product5 = Product.create(name: "Water", price: 3.25, quantity: 0)

puts "🔥 🔥 🔥 🔥 "