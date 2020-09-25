class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :fee
  belongs_to_active_hash :area
  belongs_to_active_hash :day
  belongs_to :user
  has_one :order
  has_one_attached :image

  validates :category_id, :status_id, :fee_id, :area_id, :day_id, numericality: { other_than: 1 }

  with_options presence: true do
    validates :image
    validates :name
    validates :explanation
    validates :category_id
    validates :status_id
    validates :fee_id
    validates :area_id
    validates :day_id
    validates :price, numericality: { greater_than_or_equal_to: 300}
    validates :price, numericality: { less_than_or_equal_to: 9_999_999 }
    validates :price, format: { with: /\A[-]?[0-9]+(\.[0-9]+)?\z/ }
  end
end
