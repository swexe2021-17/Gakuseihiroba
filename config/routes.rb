Rails.application.routes.draw do
    root 'users#index'
    get 'login/index'

    resources :users
    resources :questions
end
