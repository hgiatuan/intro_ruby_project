Rails.application.routes.draw do
  resources :pages, except: [:show]
  get '/pages/:permalink' => "pages#permalink", as: :permalink
  resources :beers, only: [:index,:show]
  resources :breweries, only: [:index,:show]
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
