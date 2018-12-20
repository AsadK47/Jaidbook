Rails.application.routes.draw do
  get 'profiles/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'

  get ':email', to: 'profiles#show', as: :profile

  resources :posts
end
