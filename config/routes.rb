Rails.application.routes.draw do
  root 'welcome#hello'
  #Posts
  get 'post/new' => 'posts#new', as: :new_post
  post 'posts' => 'posts#create'
  get 'post/:id' => 'posts#detail', as: :post
  get 'post/:id/edit' => 'posts#edit', as: :edit_post
  patch 'post/:id' => 'posts#update', as: :update_post
  delete 'post/:id' => 'posts#delete', as: :delete_post
  get 'post/:id/detail' =>'posts#show', as: :show_post
  get 'posts' => 'posts#index', as: :all_posts

#Sessions
  get 'sign_in' => 'sessions#new', as: :sign_in
  post 'sign_in' => 'sessions#create'
  delete 'sign_out' => 'sessions#delete', as: :end_session
  get 'sign_out' => 'sessions#delete', as: :sign_out

#users
  get 'register' => 'users#new', as: :new_user
  post 'register' => 'users#create', as: :create_user
  get 'users' => 'users#index', as: :users
  get 'entourage' => 'users#following', as: :following
  post 'follow/:user_id' => 'users#follow', as: :follow
  post 'unfollow/:user_id' => 'users#unfollow', as: :unfollow

end
