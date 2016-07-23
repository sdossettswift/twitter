Rails.application.routes.draw do
  root 'welcome#hello'
  resources :posts, :users
end
