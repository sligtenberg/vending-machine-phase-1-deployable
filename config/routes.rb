Rails.application.routes.draw do
  resources :cashes, only: [:index, :update]
  resources :snacks, only: [:index, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
