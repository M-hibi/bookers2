Rails.application.routes.draw do
  root to: 'homes#top'
  get "/home/about" => "homes#about", as: "about"
  resources :books
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
end