Rails.application.routes.draw do
  namespace :api do
    resources :cashes, only: [:index, :update]
    resources :snacks, only: [:index, :update]
  end

  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
