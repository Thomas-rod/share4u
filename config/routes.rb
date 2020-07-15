Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/purchase', to: 'pages#purchase'

  resources :profiles, only: [:show, :new, :create, :update]
  resources :networks, only: [:index, :create, :update, :destroy]
  resources :magnets, only: [:show, :create, :update]
  resources :magnet_profiles, only: [:show, :create]
  ## ONLY USE AS ADMIN
  resources :social, only: [:index]
  resources :magnets, only: [:index]
  resources :profile, only: [:index]
  resources :tokens, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
