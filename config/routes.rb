# config/routes.rb
Rails.application.routes.draw do
 



  get 'home/index'
  root "admin#index"


end
