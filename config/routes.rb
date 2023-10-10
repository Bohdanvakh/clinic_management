Rails.application.routes.draw do
  namespace :admin do
    resources :patients
    resources :doctors
    resources :categories
  end
end
