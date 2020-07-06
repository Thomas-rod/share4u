Rails.application.routes.draw do
  get 'magnets/show'
  get 'magnets/index'
  get 'magnets/create'
  get 'magnets/update'
  get 'profiles/show'
  get 'profiles/index'
  get 'profiles/create'
  get 'profiles/update'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
