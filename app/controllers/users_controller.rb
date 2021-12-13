
class UsersController < ApplicationController
    def index
        @users=User.all
        @questions=Question.all
    end
    
    def new
        @user = User.new
    end
    
    def create
             @user = User.new(uid: params[:user][:uid] ,
             pass: BCrypt::Password.create(params[:user][:password]))
       if @user.save
            flash[:notice] =  params[:user][:uid]+'さんをユーザに登録しました'
            redirect_to root_path
       else
            render 'new'
       end
    end
    
    def login_go
       render 'login' 
    end
     
    def login
   
        if user=User.find_by(uid: params[:uid])
            if BCrypt::Password.new(user.pass) == params[:password]
                session[:login_uid]=params[:uid]
                flash[:notice] =  'ログインしました'
                redirect_to root_path
            end
            
        else 
            render 'users/index'
        end
    end
    
    def logout
        session.delete(:login_uid)
        redirect_to root_path
    end
end
