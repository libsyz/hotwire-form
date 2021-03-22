Rails.application.routes.draw do
  root to: "orders#new"
  resources :orders, only: [:new]
  post '/order_billing', to: 'orders#billing'
  post '/order_shipping', to: 'orders#shipping'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
