class Beer < ApplicationRecord
  belongs_to :brewery
  has_many :beer_styles
  has_many :styles, through: :beer_styles
  validates :name, :review_time, :review_score, :alcohol_percent, presence: true
  validates :name, uniqueness: true
  validates :review_time, numericality: { only_integer: true}
  validates :review_score, :alcohol_percent, numericality: true
  def styles_list
    styles.map(&:name).join(", ")
  end
end
