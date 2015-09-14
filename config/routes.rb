Rails.application.routes.draw do
  resources :customes, only: [:index]
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
  post 'product_pic', to: "ueditor_images#product_pic", as: :product_pic
  post 'product_pic/:id', to: 'ueditor_images#destroy', as: :product_pic_destroy

  namespace :admin do
    get 'home', to: "home#index", as: "home"
    get 'login', to: "sessions#new", as: "login"
    post "login", to: "sessions#create"
    delete "logout", to: "sessions#destroy", as: "logout"
    resources :contacts, only: [:new, :create, :update]
    resources :companies, only: [:new, :create, :update]
    resources :products do
      member do
        get :scroll
        get :top
      end
    end
    resources :infos
    resources :invites
    resources :awards
    resources :sliders
    resources :users
    resources :customes, only: [:new, :create, :show]
  end
end
