Rails.application.routes.draw do
    root 'users#index'
    
    resources :questions
    resources :users
end
