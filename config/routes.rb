Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get '/restaurants/:id', to: 'restaurants#show'
  resources :restaurants, only: [:index, :show, :new, :create, :destroy]
  resources :reviews, only: [:index, :show, :new, :create, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
