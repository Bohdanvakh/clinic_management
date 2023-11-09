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

  resources :doctors
  resources :patients
  resources :appointments

  # root to: 'users#index'

  get '/doctors/index', to: 'doctors#index'
  get '/patients/index', to: 'patients#index'
  get '/users/index', to: 'users#index'
end
