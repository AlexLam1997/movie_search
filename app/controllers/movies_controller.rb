class MoviesController < ApplicationController
  def index
    response = MovieDb.search(params[:q])
    render json: response
  end
end