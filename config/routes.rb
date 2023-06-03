Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/directions'
  get 'pages/about'
  get 'pages/news'
  get 'pages/articles'
  get 'pages/contacts'
  get 'products/index'

  root 'pages#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
