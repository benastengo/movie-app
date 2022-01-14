Rails.application.routes.draw do
  get "/all_movies" => "movies#all_movies_method"
  
  get "/find_by/:id" => "movies#find_by_method"

end