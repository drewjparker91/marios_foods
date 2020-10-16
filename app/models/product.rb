class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :cost, presence: true
  validates :origin, presence: true
  before_save(:titleize_product)
  before_save(:round_decimal)

  scope :most_recent, -> { order(created_at: :desc).limit(3)}

  scope :most_reviews, -> {(
    select("products.id, products.name, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(1)
  )}



  private
    def titleize_product
      self.name = self.name.titleize
      self.origin = self.origin.titleize
    end

    def round_decimal
      self.cost = self.cost.round(2)
    end
end