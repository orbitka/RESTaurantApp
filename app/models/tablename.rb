class Tablename < ActiveRecord::Base
  has_many :bills
  has_many :usernames, :through => :bills
  has_many :orders, :through => :bills
end
