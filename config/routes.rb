Rails.application.routes.draw do

  # get 'profiles/show'
  devise_for :users
  resources :posts
  # map.resources :friendships

  root 'posts#index', as: 'home'
  get ':email', to: 'profiles#show', as: :profile
  get 'users/all', to: 'users#index'

end
