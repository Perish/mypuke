Rails.application.routes.draw do
  root 'welcome#index'
  resources :products, only: [:index, :show] do
    get "spread", on: :collection
  end
  resources :infos, only: [:index, :show]
  resources :invites, only: [:index, :show]
  resources :contacts, only: [:index, :create]

  resources :ueditor_images, only: [:create]

  get "intro", to: "companies#show", as: "intro"
  get 'awards', to: "awards#index", as: "awards"

  namespace :admin do
    get 'home', to: "home#index", as: "home"
    get 'login', to: "sessions#new", as: "login"
    post "login", to: "sessions#create"
    delete "logout", to: "sessions#destroy", as: "logout"
    resources :contacts, only: [:new, :create, :update]
    resources :companies, only: [:new, :create, :update]
    resources :products
    resources :infos
    resources :invites
    resources :awards
    resources :sliders
    resources :users
  end
end
