Rails.application.routes.draw do
  root "metadata#index"
  devise_for :users
  resources :metadata
  resources :variants
  resources :cars

   # route for signout
   devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
