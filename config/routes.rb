Rails.application.routes.draw do
  resources :buys
  resources :bookmarks
  resources :likes
  resources :comments
  resources :posts
  root 'home#top'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
