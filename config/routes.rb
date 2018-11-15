Rails.application.routes.draw do
  root 'users#login'
  resources :reviews
  resources :games, only: [:new, :create, :show, :index]
  resources :users, only: [:show, :new, :create, :delete]

  get 'login', to: 'users#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
