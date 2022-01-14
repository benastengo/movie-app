class MoviesController < ApplicationController

  def all_movies_method
    movies = Movie.all
    render json: movies
  end

  def find_by_method
    render json: {Movies: Movie.find(params[:id])}
  end
end
