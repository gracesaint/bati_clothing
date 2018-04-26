Rails.application.routes.draw do
  resources :orders
  resources :order_items
  get 'search/index'

  get 'search/results'
  resources :search

  resources :products
  devise_for :users
  get 'main/home'
  
  get 'main/sale'
  
  root to: 'main#home'

  get 'main/contact'

  get 'main/display'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
