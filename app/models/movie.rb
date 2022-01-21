class Movie < ApplicationRecord
  validates :title, length: { minimum: 4 }
  validates :title, :year, :plot, :director, :english, presence: true
  validates :plot, length: { minimum: 10 }
end


