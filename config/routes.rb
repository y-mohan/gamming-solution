Rails.application.routes.draw do

  get 'mallela/index'

  get 'mallela/new'

  get 'mallela/edit'

  get 'mallela/show'

  get 'india/index'

  get 'india/new'

  get 'india/edit'

  get 'india/show'

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
