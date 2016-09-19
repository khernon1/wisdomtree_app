Rails.application.routes.draw do
  resources :shares
  resources :prices
  get '/prices_and_shares', to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
