class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
  validates :rating, presence: true
  validates :content, presence: true
  validates :rating, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
  validates_length_of :content, minimum: 50, maximum: 250 
  before_save(:titleize_review)

  private
  def titleize_review
    self.author = self.author.titleize
  end
end