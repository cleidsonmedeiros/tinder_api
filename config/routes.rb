Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'users/:id', to: 'people#index'

  post 'users/:id', to: 'people#create'
  # Defines the root path route ("/")
  # root "articles#index"
end
