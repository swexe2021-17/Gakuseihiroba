require'bcrypt'
class LoginController < ApplicationController
    def index
        @user=User.new
    end
     
    def login
   
        if User.find_by(uid: params[:uid])
             signup_password = BCrypt::Password.create(params[:password])
             logger.debug "----------" + signup_password + params[:password]
            if BCrypt::Password.new(signup_password) == params[:password]
                session[:login_uid]=params[:uid]
                flash[:notice] =  'ログインしました'
                redirect_to root_path
            end
        else 
            render 'login/index'
        end
    end
    
    def logout
        session.delete(:login_uid)
        redirect_to root_path
    end
end