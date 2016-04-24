Rails.application.routes.draw do
  root 'welcome#index'

  get '/users/log_in' => 'users#log_in', as: :log_in
  get '/users/profile' => 'users#profile', as: :profile

  resources :users
  # , only: [:index, :new, :create, :show, :edit, :update :profile]
  resources :bills
  resources :meals
  resources :tablenames
  resources :orders

  post '/sessions' => "sessions#create", as: :creation_station
  delete '/sessions' => "sessions#destroy", as: :deletion_station

end
