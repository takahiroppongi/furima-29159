class Customer < ApplicationRecord
  belongs_to :order

  with_options presence: true do
    validates :purchase
    validates :post_code,      format: { with: /\A\d{3}[-]\d{4}\z/ }
    validates :prefectures_id 
    validates :municipality
    validates :address
    validates :building
    validates :phone_number,    format: { /\A\d{11}\z/ }
  end
end
