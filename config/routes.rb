Rails.application.routes.draw do
  root 'users#login'
  resources :games, only: [:show, :index, :new, :create] do
    resources :reviews, only: [:show, :index, :new, :create]
  end
  resources :users, only: [:show, :new, :create, :delete]
  resources :reviews, only: [:new, :create]
  get 'login', to: 'users#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
