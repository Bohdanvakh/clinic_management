Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :patients
    resources :doctors
    resources :categories
  end
end
