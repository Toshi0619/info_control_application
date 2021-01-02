Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root 'user#index'
  resources :users
  resources :customers do
    resources :partners
    resources :gcustomers
    resources :troubles
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
