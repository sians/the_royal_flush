class Review < ApplicationRecord
  belongs_to :bookings

  validates :stars, presence: true
  validates :stars, inclusion: { in: [0..5] }, allow_blank: false
end
