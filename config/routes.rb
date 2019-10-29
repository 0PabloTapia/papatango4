Rails.application.routes.draw do

  resources :profiles do
    delete 'delete_image/:image_id', on: :member, to: 'profiles#delete_image',
   as: 'delete_image'
  end
  resources :profiles
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'home/index', as: 'home'
  devise_for :users, controllers: {
    
     omniauth_callbacks: "users/omniauth_callbacks", 
        registrations: 'users/registrations'
      }

    resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
