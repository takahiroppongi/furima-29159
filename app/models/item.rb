class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :fee
  belongs_to_active_hash :area
  belongs_to_active_hash :day
  belongs_to :user
  has_one_attached :item_image


  validates :user, :name, :explanation, :price, presence: true

  validates :category_id, :status_id, :fee_id, :area_id, :day_id, numericality: { other_than: 1 }


end
