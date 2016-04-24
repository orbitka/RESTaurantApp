class Order < ActiveRecord::Base
  belongs_to :bill
  has_one :meal
end
