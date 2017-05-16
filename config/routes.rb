Rails.application.routes.draw do

  get 'product/name'

  get 'product/brand'

  get 'product/item'

  get 'product/size'

  resources :products
get 'auth/:provider/callback', to: 'users#facebook'
namespace :api do 
  resources :users, except: [:new, :edit]
end
  resources :users do 
  	collection do 
       get 'sign_in'
       post 'signup'
       delete 'logout'
  	end
  end
  root to: "products#index" 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
