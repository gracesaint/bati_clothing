Rails.application.routes.draw do
  #resources :reviews
  resources :orders
  resources :order_items
  get 'search/index'

  get 'search/results'
  resources :search

  resources :products do
    resources :reviews, except: [:show, :index]
  end
  
  devise_for :users
  get 'main/home'
  
  get 'orders/main/home', to: 'main#home'
  
  get 'main/sale'
  
  root to: 'main#home'

  get 'main/contact'

  get 'main/display'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
