Rails.application.routes.draw do
  get 'lists/all'
  get 'lists/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  Rails.application.routes.draw do
    root to: "articles#index"
    resources :articles, except: :index
  end
  resources :lists, except: [:destroy, :edit, :update] do
    resources :bookmarks, only: [:new, :create]
  end

  resources :movies
end
