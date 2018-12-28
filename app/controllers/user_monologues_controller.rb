class UsermonologuesController < ApplicationController
  def index
    @monologues = Monologue.all
    render json: @monologues
  end
end
