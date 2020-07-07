Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :profiles, only: [:show, :new, :create, :update] do
    resources :networks, only: [:index, :new, :create, :update]
  end
  resources :magnets, only: [:show, :create, :update] do
    resources :magnet_profiles, only: [:create]
  end

  ## ONLY USE AS ADMIN
  resources :social, only: [:index]
  resources :magnets, only: [:index]
  resources :profile, only: [:index]
  resources :tokens, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
