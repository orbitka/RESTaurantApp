class Bill < ActiveRecord::Base
  belongs_to :username
  belongs_to :tablename
  has_many :orders
  has_many :meals, :through => :orders
end
