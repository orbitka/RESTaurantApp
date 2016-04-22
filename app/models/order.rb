class Order < ActiveRecord::Base
  belongs_to :bill
  belongs_to :meal
end
