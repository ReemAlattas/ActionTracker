Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/failure'

  get 'welcome/index'
  root 'plans#index'

  #devise_for :users
  resources :plans
  resources :kpis
  resources :kactions

  get   '/login', :to => 'sessions#new', :as => :login
  match '/auth/:provider/callback', :to => 'sessions#create', via: [:get, :post]
  match '/auth/failure', :to => 'sessions#failure', via: [:get, :post]

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

end
