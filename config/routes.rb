Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/purchase', to: 'pages#purchase'

  resources :profiles, only: [:show, :new, :create, :update]
  resources :networks, only: [:index, :create, :update, :destroy]
  resources :magnets, only: [:show, :create, :update] do
    resources :magnet_profiles, only: [:create]
  end
  resources :magnet_profiles, only: [:show]
  ## ONLY USE AS ADMIN
  resources :social, only: [:index]
  resources :magnets, only: [:index]
  resources :profile, only: [:index]
  resources :tokens, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  comfy_route :cms_admin, path: "/cms-admin"
  comfy_route :cms, path: "/"
  # Ensure that this route is defined last
end
