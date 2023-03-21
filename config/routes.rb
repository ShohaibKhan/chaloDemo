Rails.application.routes.draw do
  devise_for :users
  resources :metadata
  resources :variants
  resources :cars

  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
 
end
