Rails.application.routes.draw do
  resources :restaurants
  root 'restaurants#index'

  resources :restaurants do
    resources :reviews, only: [ :index, :new, :create ]
  end
  resources :reviews, only: [ :show, :edit, :update, :destroy ]

end
