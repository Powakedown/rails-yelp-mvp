Rails.application.routes.draw do
  resources :restaurants
  root 'restaurants#index'
  # collection do
  #   get 'top', to: 'restaurants#top'
  # end
  # member do
  #   get 'chef', to: 'restaurants#chef'
  # end
  get 'restaurant/:restaurant_id/reviews/new', to: 'reviews#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
