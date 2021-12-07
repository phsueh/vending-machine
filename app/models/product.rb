class Product < ActiveRecord::Base
  has_many :coins
  attr_writer :quantity


end
