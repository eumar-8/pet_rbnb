class Pet < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :age, presence: true
  validates :species, presence: true, inclusion: {in: %w(cat dog elephant fish hamster giraffe monkey snake spider)}

  def self.categories
    %w(cat dog elephant fish hamster giraffe monkey snake spider)
  end
end
