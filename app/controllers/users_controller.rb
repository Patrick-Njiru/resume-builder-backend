class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user
  end
  
  def create
    user = User.create!(user_params)
    render json: user
  end
  
  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
  end

  private

  def user_params
    params.permit(:first_name, :second_name, :email, :password, :username, :image)
  end

end
