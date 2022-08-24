class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bikes, dependent: :destroy
  has_many :bookings, dependent: :destroy

  #les velos que j'ai loue aux autres
  has_many :requested_bikes, through: :bikes, source: :bookings

  #les velos que moi je loue de quelqun

  has_many :rented_bikes, through: :bookings, source: :bike

end
