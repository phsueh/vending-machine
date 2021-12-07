class VendingMachine

  def run
    welcome
    show_products
    choose_product
  end

  def welcome
    puts "Welcome to the Seeking Alpha Vending Machine, type which item you wish to buy!"
    sleep(1)
  end

  def show_products
    Product.all.map do |j|
    puts "#{j.name}  Price: $#{"%.2f" % j.price} Quantity: #{j.quantity}"
    end 
  end
  
  def choose_product
    product_name = STDIN.gets.chomp
    chosen_product = Product.find { |j| j.name === product_name}
    if chosen_product.quantity == 0
      puts "There are no more #{chosen_product.name}s please choose another"
      exit
    else
      puts "You have choosen a #{product_name} there are #{chosen_product.quantity} left, the cost for one is $#{"%.2f" % chosen_product.price}"
      coins = Coin.all.map {|j| j.value}
      puts "please insert coins, only coins worth #{coins} are accepted"
    end
    purchase_product(product_name)
  end
  
  def purchase_product(product_name)
    chosen_product = Product.find { |j| j.name === product_name}
    coins_arr = Array.new
    puts coins_arr
    loop do 
      coins = STDIN.gets.chomp.to_f
      coins_arr.push coins
      sum = coins_arr.sum
      remaining = chosen_product.price - sum
      puts "#{coins_arr}"
      puts "Amount inserted $#{"%.2f" % sum}, $#{remaining} remaining"
      break if sum >= chosen_product.price
    end
  
    sum = coins_arr.sum
    if sum == chosen_product.price
      puts "enjoy your #{chosen_product.name}!"
    elsif sum > chosen_product.price
      change = sum - chosen_product.price
      puts "enjoy your #{chosen_product.name}!"
      get_change(change)
    end
  end 

  def get_change(change)
    coins = change.divmod(1)
    coin_change = coins.map {|j| j.round(2)} 
    if coin_change
      puts "your change is $#{"%.2f" % change}, here are your coins $#{coin_change}"
    else 
      puts "sorry we have no change here's your money back #{change}" 
      exit
    end 
    all_coins = Coin.all.map { |j| j.show_amount }
    # all_coins_arr = all_coins.flatten
    # puts "#{all_coins_arr}"
  end 
  
  private
  
end