Rails.application.routes.draw do
  resources :cashes, only: [:index, :update]
  resources :snacks, only: [:index, :update]
end
