Rails.application.routes.draw do
  devise_for :users
  resources :plans
  root 'plans#index'
  root 'home#index'
end
