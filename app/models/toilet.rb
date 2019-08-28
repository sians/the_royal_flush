class Toilet < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :bookings
  has_many :reviews, through: :bookings

  validates :name, presence: true, allow_blank: false
  validates :address, presence: true, allow_blank: false
  validates :description, presence: true
  validates :price, presence: true
  # validates :photo, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  mount_uploader :photo, PhotoUploader
end
