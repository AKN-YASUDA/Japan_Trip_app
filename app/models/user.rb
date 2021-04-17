class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :password, format: { with: /(?=.*[a-z])(?=.*[A-Z])(?=.*\d)/ }
    validates :nickname
    validates :name, format: { with: /\A[ぁ-んァ-ン\p{Han}]/ }
    validates :read_name, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :birth_year
    validates :birth_month
    validates :birth_day
  end
  has_many :diaries
  has_many :comments
end
