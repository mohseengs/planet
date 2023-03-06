Rails.application.routes.draw do
  root 'dashboard#index'
  get '/signup' => 'users#new', :as => :signup
  post '/create_user' => 'users#create'
  get '/login' => 'authentication#login'
  post '/validate_user' => 'authentication#validate'
  get '/add_post' => 'posts#new'
  post '/add_post' => 'posts#create'
  get '/profile/:id' => 'users#profile'

  resource :user do
    resources :posts
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
