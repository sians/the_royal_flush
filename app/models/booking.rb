class Booking < ApplicationRecord
  belongs_to :toilet
  belongs_to :user
  has_one :review

  validates :date, presence: true
  validates :price, presence: true
end
