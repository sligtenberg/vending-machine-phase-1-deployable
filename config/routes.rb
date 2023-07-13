Rails.application.routes.draw do
  resources :cashes, only: [:index, :update]
  resources :snacks, only: [:index, :update]

  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
