class ActorsController < ApplicationController
  def query
    id = params[:id].to_i
    actor = Actor.find_by(id: id)
    render json: actor.as_json
  end
end
