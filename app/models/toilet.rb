class Toilet < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  validates :address, presence: true, allow_blank: false
  validates :description, presence: true
  validates :images, presence: true
end
