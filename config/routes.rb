Rails.application.routes.draw do
  resources :products
  devise_for :users
  get 'main/home'
  
  root to: 'main#home'

  get 'main/contact'

  get 'main/display'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
