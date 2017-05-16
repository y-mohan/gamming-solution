Rails.application.routes.draw do

  get 'abcd/index'

  get 'abcd/new'

  get 'abcd/show'

  get 'abcd/edit'

  get 'guru/name'

  get 'guru/email'

  get 'guru/password'

  get 'articles/index'

  get 'articles/new'

  get 'articles/show'

  get 'articles/edit'

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
