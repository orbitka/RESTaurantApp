class Tablename < ActiveRecord::Base
  has_many :bills
  has_many :users, :through => :bills
  has_many :orders, :through => :bills
end
