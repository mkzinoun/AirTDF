class Bike < ApplicationRecord
  TYPES = ["mountain bike", "city bike", "road bike"]
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :type, :brand, :address, :description, :price_per_day, presence: true
  validates :price_per_day, numericality: { only_float: true }, comparison: { greater_than: 0 }
  validates :type, inclusion: { in: Bike::TYPES }
end
