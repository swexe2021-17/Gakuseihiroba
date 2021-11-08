Rails.application.routes.draw do
  get 'login/index'
  get 'user/new'
    root 'users#new'
  get 'users/new', to: 'users#new'
  resources :users
end
