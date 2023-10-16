Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'people/:id', to: 'people#person_to_match'

  get 'people/show/:id', to: 'people#user_profile'

  post 'people/profile', to: 'people#create'

  post 'people/:id/match', to: 'people#create_match'

  put 'people/profile/:id', to: 'people#update'



  get 'matches/index', to: 'matches#index'

  get 'matches/show/:id', to: 'matches#show'

  get 'matches/last', to: 'matches#last_match'

  delete 'matches/delete/:id', to: 'matches#destroy'
  # Defines the root path route ("/")
  # root "articles#index"
end
