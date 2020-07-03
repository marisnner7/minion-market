class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, :username, :password, :address, :cellphone, presence: true
  validates :username, :cellphone, uniqueness: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo

  geocoded_by :address

  has_many :orders, dependent: :destroy
  has_many :products, dependent: :destroy
end
