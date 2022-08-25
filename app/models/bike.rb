class Bike < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_custom_bike,
    against: [ :bike_type, :brand, :address],
    using: {
    tsearch: { prefix: true }
    }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  TYPES = ["Mountain Bike", "City Bike", "Road Bike"]
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :bike_type, :brand, :address, :description, :price_per_day, presence: true
  validates :price_per_day, numericality: { only_float: true }, comparison: { greater_than: 0 }
  validates :bike_type, inclusion: { in: Bike::TYPES }
end
