class UsersController < ApplicationController

  def index
    :index
  end

  def log_in
    @user = User.


  def new
    @user = User.new
    redirect_to log_in path
  end

  def create
    User.create(user_params)

  private

  def user_params
    params.require(:username, :password)
  end



end

#    root GET  /                        welcome#index
#  log_in GET  /users/log_in(.:format)  users#log_in
# profile GET  /users/profile(.:format) users#profile
#   users GET  /users(.:format)         users#index
#         POST /users(.:format)         users#create
# new_user GET  /users/new(.:format)     users#new
#    user GET  /users/:id(.:format)     users#show
