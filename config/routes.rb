Rails.application.routes.draw do
  root to: 'public#homepage'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :posts, only: %i[new create show]
  resources :comments, only: %i[create]

  get '/dashboard' => 'users#index'
  get '/about' => 'public#about'
  get '/help' => 'public#about'

  get '/presence' => 'users#update_presence'

  get 'profile/:username' => 'users#profile', as: :profile
  get 'post/like/:post_id' => 'likes#save_like', as: :like_post

  post 'follow/user' => 'users#follow_user', as: :follow_user
end
