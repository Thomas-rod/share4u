Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    root :to => 'devise/sessions#new'
  end
  get '/purchase', to: 'pages#purchase'
  get '/instructions', to: 'pages#instructions'
  get '/faq', to: 'pages#faq'

  get 'magnet_profiles/:id/export' => 'magnet_profiles#vcard', :as => 'export_contacts'

  resources :profiles, only: [:show, :new, :create, :update]
  resources :networks, only: [:index, :create, :update, :destroy]
  post '/netorks', to: "networks#direct"
  resources :magnets, only: [:show, :create, :update]
  resources :magnet_profiles, only: [:show, :create, :update]
  resources :vcards, only: [:create, :update, :destroy]
  ## ONLY USE AS ADMIN
  resources :social, only: [:index]
  resources :magnets, only: [:index]
  resources :profile, only: [:index]
  resources :tokens, only: [:index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  comfy_route :cms_admin, path: '/cms-admin'
  # Ensure that this route is defined last
  comfy_route :blog_admin, path: '/cms-admin'
  comfy_route :blog, path: '/blog'
  comfy_route :cms, path: '/'
end
