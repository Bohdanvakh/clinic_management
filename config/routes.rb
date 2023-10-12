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

  get '/index/', to: 'users#index'
end
