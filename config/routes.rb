Rails.application.routes.draw do
  devise_for :views
  get '/login', to: 'admin#index'
  get 'landing/index'
  get 'landing/show/:id', to: 'landing#show', as: 'landing_show'
  get 'admin/index'
  get 'admin/manage_buildings'
  get 'admin/manage_apartments'
  devise_for :users
  get 'homes/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'landing#index'
end
