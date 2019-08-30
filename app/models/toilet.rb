class Toilet < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  validates :name, presence: true, allow_blank: false
  validates :address, presence: true, allow_blank: false
  validates :description, presence: true
  validates :price, presence: true
  # validates :photo, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  mount_uploader :photo, PhotoUploader

  # gets the total number of reviews & averages them
  # if there are no reviews, returns nil
  def avg_stars
    # if no reviews return nil
    return nil if self.reviews.empty?
    # get the star rating from each review in the array
    review_stars = self.reviews.map { |review| review.stars}
    # averages the array of reviews
    (review_stars.inject{ |sum, el| sum + el }.to_f / review_stars.size).floor
  end
end
