Rails.application.routes.draw do
  resources :plans
  root 'plans#index'
end
