class Pet < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :description, presence: true
  validates :age, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 200 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }

  validates :species, presence: true, inclusion: {in: %w(cat dog bird elephant fish hamster giraffe monkey snake spider)}

  # geocoded_by :user.location
  # after_validation :geocode, if: :will_save_change_to_location?

  def self.categories
    %w(cat dog elephant fish hamster giraffe monkey snake spider)
  end
end
