Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/failure'

  get 'welcome/index'
  root 'welcome#index'

  devise_for :users
  resources :plans

end
