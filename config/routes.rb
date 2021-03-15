Rails.application.routes.draw do
  resources :pages
  get 'home/index'
  resources :beers, only: [:index,:show]
  resources :breweries, only: [:index,:show]
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
