class Brewery < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
