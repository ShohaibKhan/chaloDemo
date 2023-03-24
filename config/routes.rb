Rails.application.routes.draw do
  
  root "home#index"
  devise_for :users
  resources :metadata
  resources :variants
  resources :cars
  #routes for dealership managements
  get 'dealerships/show'
  get 'dealerships/verified'
  get  'dealerships/toggle'
  get  'dealerships/toggle1'
  get 'dealerships/manage_dealers'

  

  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  
end
