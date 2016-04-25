class Bill < ActiveRecord::Base
  belongs_to :user
  belongs_to :tablename
  has_many :orders, dependent: :destroy
  has_many :meals, :through => :orders
end
