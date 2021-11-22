Rails.application.routes.draw do
    root 'users#index'
    get 'login/index'
    post 'login/index'
    
    resources :users
    resources :questions
    resources :login 
end
