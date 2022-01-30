class Movie < ApplicationRecord
  validates :title, length: { minimum: 4 }
  validates :title, :year, :plot, :director, :english, presence: true
  validates :plot, length: { minimum: 10 }

  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    names = []
    self.genres.each do |genre|
      names << genre.name
    end
    return names
  end
end


