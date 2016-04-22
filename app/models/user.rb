class User < ActiveRecord::Base
  has_secure_password
  has_many :bills
  has_many :orders, :through => :bills
  has_many :tablenames, :through => :bills
end
