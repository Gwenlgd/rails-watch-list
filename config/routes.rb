Rails.application.routes.draw do
  get 'lists/all'
  get 'lists/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists
  resources :movies
  resources :bookmarks
end
