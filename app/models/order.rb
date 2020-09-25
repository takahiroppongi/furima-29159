class Order < ApplicationRecord
  has_one :customer
  belongs_to :item
  belongs_to :user
end
