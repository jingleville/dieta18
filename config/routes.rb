Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/directions'
  get 'pages/about'
  get 'pages/news'
  get 'pages/articles'
  get 'pages/contacts'

  get 'get_subgroups/:group_id', to: 'api#get_subgroups'  
  get 'get_products/:subgroup_id', to: 'api#get_products'

  get 'new_group', to: 'products#new_group'
  post 'new_group', to: 'products#create_group'
  
  get 'new_subgroup/:group_id', to: 'products#new_subgroup'
  post 'new_subgroup/:group_id', to: 'products#create_subgroup'
  
  get 'new_thermal_range', to: 'products#new_thermal_range'
  post 'new_thermal_range', to: 'products#create_thermal_range'

  get '/product_search' => 'api#product_search'

  resources :products

  root 'pages#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
