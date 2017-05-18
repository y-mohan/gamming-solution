Rails.application.routes.draw do

  

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
       get 'forget_password'
       post 'recover_password'
  	end
  end
  resources :carts do 
    collection do 
      get 'add_to_cart'
    end
  end
  root to: "products#index" 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
