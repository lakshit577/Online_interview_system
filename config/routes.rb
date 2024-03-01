# config/routes.rb
Rails.application.routes.draw do
  devise_for :admins



  get 'home/index'
  root "admin#index"

  authenticated :admin_user do
    root to: "admin#index" ,as: :admin_root
  end

  get "admin" => 'admin#index'  
end
