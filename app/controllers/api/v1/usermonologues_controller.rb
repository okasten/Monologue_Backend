class Api::V1::UsermonologuesController < ApplicationController
  before_action :find_user
  skip_before_action :authorized

  def index
    @monologues = @user.monologues

    render json: @monologues
  end

  def create
    @mon = Monologue.create(mon_params)
    @monologue = Usermonologue.create(monologue_id: @mon.id, user_id: @user.id)

    render json: @mon
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
