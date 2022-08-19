Rails.application.routes.draw do
  get 'lists/all'
  get 'lists/new'

  root to: "lists#index"
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end
