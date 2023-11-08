Rails.application.routes.draw do
  devise_for :doctors
  devise_for :patients
  devise_for :admin_users
  devise_for :users

  namespace :admin do
    resources :patients
    resources :doctors
    resources :categories
  end

  root to: 'users#index'
  get '/doctors/index', to: 'doctors#index'
  # get '/users/index' to: 'users#index'
end
