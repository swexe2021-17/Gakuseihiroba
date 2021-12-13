Rails.application.routes.draw do
    root 'users#index'
    get 'users/login_go'
    get '/users/logout'
    post 'users/login' #usersコントローラのloginクラスを呼ぶ
    
    
    resources :users
    resources :questions
    resources :answers
end
