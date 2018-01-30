Rails.application.routes.draw do
  resources :order_items
  resources :orders
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match '/auth/:provider/callback', to: 'sessions#create', via: :get
  match "/login" => redirect("/auth/twitter"), as: :login, via: :get
  match "/logout" => "sessions#destroy", as: :logout, via: :get
  root to: "products#index"
end
