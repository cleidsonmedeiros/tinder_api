Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'people/:id', to: 'people#index'

  get 'people/show/:id', to: 'people#user_profile'

  post 'people/profile', to: 'people#create'

  post 'people/:id/match', to: 'people#create_match'

  put 'people/profile/:id', to: 'people#update'
  # Defines the root path route ("/")
  # root "articles#index"
end
