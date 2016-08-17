Rails.application.routes.draw do
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'places#index'
  resources :places
  resources :categories, only: [:show, :index]
  resources :votes, only: [:create, :destroy]

  resources :places do
       resources :comments, only: [:create, :destroy]
       resources :votes, only: [:create, :destroy]
    end

end
