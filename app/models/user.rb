class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :items
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nick_name
    PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
    validates_format_of :password,         with: PASSWORD_REGEX
    NAME_REGEX = /\A[ぁ-んァ-ン一-龥]/.freeze
    validates_format_of :second_name,      with: NAME_REGEX, message: 'is invalid. Input full-width characters.'
    validates_format_of :first_name,       with: NAME_REGEX
    KANA_REGEX = /\A[ァ-ヶー－]+\z/.freeze
    validates_format_of :second_name_kana, with: KANA_REGEX
    validates_format_of :first_name_kana,  with: KANA_REGEX
    validates :birthday
  end
end
