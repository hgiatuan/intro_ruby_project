Rails.application.routes.draw do
  resources :beers, only: [:index,:show]
  resources :breweries, only: [:index,:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
