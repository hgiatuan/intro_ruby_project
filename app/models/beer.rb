class Beer < ApplicationRecord
  belongs_to :brewery
  validates :name, :review_time, :review_score, :alcohol_percent, presence: true
  validates :name, uniqueness: true
  validates :review_time, numericality: { only_integer: true}
  validates :review_score, :alcohol_percent, numericality: true
end
