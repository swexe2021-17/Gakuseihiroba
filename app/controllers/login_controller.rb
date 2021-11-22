require'bcrypt'
class LoginController < ApplicationController
     def login
   
        if User.find_by(uid: params[:user][:uid])
             signup_password = BCrypt::Password.create(params[:user][:password])
            if BCrypt::Password.new(signup_password) == params[:user][:password]
                session[:login_uid]=params[:user][:uid]
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