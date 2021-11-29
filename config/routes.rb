Rails.application.routes.draw do
    root 'users#index'
    get 'login/index'
    post 'login/login' #loginコントローラのloginクラスを呼ぶ
    
    resources :users
    resources :questions
    resources :login 
    resources :answers
end
