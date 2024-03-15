Rails.application.routes.draw do
  # devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'home#index'
  get '/students/new', to: 'students#new'
  post '/students', to: 'students#create'
  get 'questions', to: 'questions#index'
  post 'questions/submit_answers', to: 'questions#submit_answers'
  
  get 'results/create'
  post 'results', to: 'results#create'

  delete '/users/sign_out', to: 'devise/sessions#destroy'

  get 'home/index'
end
