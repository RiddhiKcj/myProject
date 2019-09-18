Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'welcome#index'
  devise_for :users, :controllers => { omniauth_callbacks: "omniauth_callbacks", registrations: "registrations", confirmations: "users/confirmations" }
  get 'welcome/index'
  #root 'articles#index'
  
  resources :users,  only: :index do
  	resources :selected_apis
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
