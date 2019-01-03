class Api::V1::MonologuesController < ApplicationController
  before_action :find_user
  skip_before_action :authorized

  def index
    @monologues = @user.monologues
    render json: @monologues
  end

  def create
    @mon = Monologue.create(mon_params)
    @monologue = Usermonologue.create(monologue_id: @mon.id, user_id: @user.id)
    byebug
    render json: @monologue
  end

  def update
    @monologue = Usermonologue.find(monologue_id: destroy_params[:id], user_id: @user.id)
    byebug
    @monologue.update(mon_params)
    render json: @monologue
  end

  def destroy
    byebug
    @monologue = Monologue.find(destroy_params[:id])
    @monologue.destroy!
  end

  private

  def mon_params
    params.permit(:character, :play, :script, :length, :age, :genre, :file, :notes)
  end

  def destroy_params
    params.permit(:id)
  end

  def find_user
    @user = User.find(params[:user_id])
  end
end
