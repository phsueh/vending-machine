# CLI Vending Machine

### Initialization
The entry point is vending_machine.rb

Initialized with the below products:
Product Name | Price | Quantity
------------ | ----- | --------
Coca Cola | 2.00 | 2
Sprite | 2.50 | 2
Fanta | 2.70 | 3
Orange Juice | 3.00 | 1
Water | 3.25 | 0

Initialized with the these coins:
Value | Quantity
----- | --------
5.00 | 5
3.00 | 5
2.00 | 5
1.00 | 5
0.50 | 5
0.25 | 5

--- 
### Features

- Once the product is selected and the appropriate amount of coins inserted - it should return the product.
- It should return change (coins) if inserted too much.
- Change should be returned with the minimum amount of coins possible.
- It should notify the customer when the selected product is out of stock.
- It should return inserted coins in case it does not have enough change.

### Setup
0. Fork and clone the repo, `cd` to the folder
1. Run `bundle`
2. Migrate: run `rake db:migrate`
3. Seed data: run `rake db:seed`
4. Run addp: run `rake start` 
---

### Notes
- App assumes user inputs are case sensitive
- If user inputs non-matching cases for product select app will need to be re-ran with `rake start`

## Future Improvements
- Create new classes for better OOP approach
- Write test to ensure products are intialized with quantities
