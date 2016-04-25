class UsersController < ApplicationController

  # include SessionsHelper

  before_action :authenticate, except: [:log_in, :new, :create]

  def index
    # authenticate
    @users = User.all
  end

  def log_in
  end


  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @bills = Bill.where(user_id: params[:id])
  end

  def profile
    @user = current_user
    end


  def create
    User.create(user_params)
    redirect_to log_in_path
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    user.update user_params
    redirect_to user_path user.id
  end


  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
