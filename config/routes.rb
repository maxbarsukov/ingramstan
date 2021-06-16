Rails.application.routes.draw do
  root to: 'public#homepage'
  devise_for :users

  resources :posts, only: [:new, :create, :show]

  get '/dashboard' => 'users#index'
  get 'profile/:username' => 'users#profile'
end
