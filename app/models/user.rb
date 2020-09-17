class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
  validates :nick_name
  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX
  validates :second_name,      format: { with: /\A[ぁ-んァ-ン一-龥]/ , message: "is invalid. Input full-width characters."}
  validates :first_name,       format: { with: /\A[ぁ-んァ-ン一-龥]/ }
  validates :second_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :first_name_kana,  format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :birthday
  end
end
