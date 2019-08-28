class Toilet < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :bookings
  has_many :reviews, through: :bookings

  validates :name, presence: true, allow_blank: false
  validates :price, presence: true, allow_blank: false
  validates :address, presence: true, allow_blank: false
  validates :description, presence: true
  # validates :photo, presence: true

  mount_uploader :photo, PhotoUploader
end
