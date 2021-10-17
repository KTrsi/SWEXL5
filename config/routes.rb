Rails.application.routes.draw do
  resources :users
  post 'top/login'
  get 'top/logout'
  get 'top/main'
  get 'get_user/:id', to: 'user#get_user'
  resources :tweets
  root 'tweets#index'
  get 'get_tweet/:id', to: 'tweet#get_tweet'
  resources :likes
  post 'likes/index'
  get 'likes/index'
end
