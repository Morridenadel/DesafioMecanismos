Rails.application.routes.draw do
  resources :posts
  devise_for :users
  get 'pages/index'
  root "pages#index"
  root "posts#index"
  get '/posts', to: 'posts#index', as: 'user_root'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
