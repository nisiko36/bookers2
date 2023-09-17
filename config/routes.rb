Rails.application.routes.draw do
  
  devise_for :users
  root to: 'home#top'
  
  get "/home/about" => "home#about", as: "about"


  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :index, :update]
end
