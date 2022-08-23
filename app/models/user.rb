class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bikes, dependent: :destroy
  has_many :bookings, dependent: :destroy

  #les velos que jai loue
  has_many :rented_bikes, through: :bikes, source: :bookings

  #les velos que jai loue
  #has_many :rented_bikes, through: :bookings, source: :bike
end
