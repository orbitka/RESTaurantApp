class Order < ActiveRecord::Base
  belongs_to :bill
  belongs_to :meal
  belongs_to :user, :through => :bill
  belongs_to :tablename, :through => :bill 
end
