Rails.application.routes.draw do

  root 'welcome#index'

  get '/users/log_in' => 'users#log_in', as: :log_in
  get '/users/profile' => 'users#profile', as: :profile


  resources :users, only: [:index, :new, :create, :show]


end
