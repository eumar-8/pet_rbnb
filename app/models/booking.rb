class Booking < ApplicationRecord
  belongs_to :pet

  validates :date_from, presence: true
  validates :date_to, presence: true
  validates :location, presence: true
end
