Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
devise_scope :user do
  root "items#index"
end


  resources :charges
  resources :items
  resources :carts
  post "/add_item" => "carts#add_item"
end
