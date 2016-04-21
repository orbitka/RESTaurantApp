class UsersController < ApplicationController

  def new
    @user = User.new
    redirect_to log_in path
  end

end


# root GET  /                    welcome#index
# users GET  /users(.:format)     users#index
#      POST /users(.:format)     users#create
# new_user GET  /users/new(.:format) users#new
# user GET  /users/:id(.:format) users#show
