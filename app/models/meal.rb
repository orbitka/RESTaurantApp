class Meal < ActiveRecord::Base
  has_many :orders
  has_many :bills, :through => :orders
end
