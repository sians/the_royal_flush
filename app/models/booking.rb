class Booking < ApplicationRecord
  belongs_to :toilet
  belongs_to :user
  has_one :review, dependent: :destroy

  validates :start_time, presence: true
end
