Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: [:create]
  end
  resources :categories, only: [:new, :create, :show]
  devise_for :users
  root to: 'pages#front'  
end
