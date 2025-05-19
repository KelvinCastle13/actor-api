class ActorsController < ApplicationController
  def index
    actors = Actor.all

    render json: actors
  end

  def create
    actor = Actor.create(
  first_name: params["first_name"],
  last_name: params["last_name"],
  movie: params["movie"]
    )

  render json: actor
  end

  def show
    actor = Actor.find(params["id"])

    render json: actor
  end

  def update
  actor = Actor.find(params["id"])

  actor.update(
  first_name: params["first_name"] || actor.first_name,
  last_name: params["last_name"] || actor.last_name,
  movie: params["movie"] || actor.movie
  )
  render json: actor
  end

  def destroy
    actor = Actor.find(params["id"])

    actor.destroy
  end
end
