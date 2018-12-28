class Api::V1::MonologuesController < ApplicationController
  before_action :find_user
  skip_before_action :authorized

  def index
    @monologues = Monologue.all
    render json: @monologues
  end

  def create
    @monologue = Monologue.create(mon_params)
    render json: @monologue
  end

  def update
    @monologue = Monologue.find(destroy_params[:id])

    @monologue.update(mon_params)
    render json: @monologue
  end

  def destroy
    @monologue = Monologue.find(destroy_params[:id])
    @monologue.destroy!
  end

  private

  def mon_params
    params.permit(:character, :play, :script, :length, :age, :genre, :file)
  end

  def destroy_params
    params.permit(:id)
  end

  def find_user
    @user = User.find(params[:user_id])
  end
end
