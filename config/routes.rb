Rails.application.routes.draw do

  get 'test1/new'

  default_url_options :host => "localhost:3000"
  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#home"

  get 'users/new'

  get '/help', to: 'static_pages#help'

  get '/contact', to: 'static_pages#contact'

  get '/about', to: 'static_pages#about'

  get '/signup' => 'users#new'

  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :test1
  resources :account_activations, only: [:edit]
  resources :microposts, only: [:create, :destroy]
  
end
