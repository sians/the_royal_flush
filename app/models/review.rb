class Review < ApplicationRecord
  belongs_to :booking

  validates :stars, presence: true
  validates :stars, inclusion: { in: [0..5] }, allow_blank: false
end
