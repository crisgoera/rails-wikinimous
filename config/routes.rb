Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Read all
  root 'articles#index'

  # Create
  get '/articles/new', to: 'articles#new'
  post '/articles/', to: 'articles#create'

  # Read one
  get '/articles/:id', to: 'articles#show', as: :article

  # Update
  get '/articles/:id/edit', to: 'articles#edit', as: :article_edit
  patch '/articles/:id', to: 'articles#update'

  # Delete
  delete '/articles/:id', to: 'articles#delete'
end
