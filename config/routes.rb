Rails.application.routes.draw do
  root to: 'public#homepage'
  devise_for :users

  get '/dashboard' => 'users#index'
end
