# config/routes.rb
Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
 



  get 'home/index'
  root "home#index"


end

