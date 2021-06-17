Rails.application.routes.draw do
  root to: 'public#homepage'
  devise_for :users

  resources :posts, only: [:new, :create, :show]

  get '/dashboard' => 'users#index'
  get 'profile/:username' => 'users#profile', as: :profile
  get 'post/like/:post_id' => 'likes#save_like', as: :like_post
end
