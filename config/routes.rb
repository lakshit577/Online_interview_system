# Rails.application.routes.draw do
#   devise_for :users
#   devise_for :admin_users, ActiveAdmin::Devise.config
#   ActiveAdmin.routes(self)

#   root 'home#index'
#   # Define root path based on user authentication status
#   # authenticated :user do
#   #   root to: 'home#index', as: :authenticated_root
#   # end

#   get '/users/sign_in', to: redirect('/users/sign_in'), as: :unauthenticated_root

  

#   delete '/users/sign_out', to: 'devise/sessions#destroy'

#   get 'home/index'
# end

Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'home#index'
  
  # Route for login (session creation)
  devise_scope :user do
    get '/login', to: 'devise/sessions#new'
    post '/login', to: 'devise/sessions#create'
  end

  # Route for sign-up (registration)
  devise_scope :user do
    get '/signup', to: 'devise/registrations#new'
    post '/signup', to: 'devise/registrations#create'
  end

  # Define route for signing out
  delete '/users/sign_out', to: 'devise/sessions#destroy'

  get 'home/index'
end
