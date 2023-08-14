Rails.application.routes.draw do
  get 'bookmarks/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'lists#index'
  resources :lists, only: %w[index show new create destroy] do
    resources :bookmarks, only: %w[new create]
  end
end
