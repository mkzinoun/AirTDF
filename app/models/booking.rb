class Booking < ApplicationRecord
  STATUS = %w[pending accepted refused cancelled past]
  belongs_to :user
  belongs_to :bike
  validates :total_price, numericality: { only_float: true }, comparison: { greater_than: 0 }
  validates :status, inclusion: { in: Booking::STATUS }
  validates :end_date, comparison: { greater_than: :start_date }
  validates :start_date, :end_date, :total_price, :status, presence: true


end
