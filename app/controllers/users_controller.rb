require 'bcrypt'
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
             password: BCrypt::Password.create(params[:user][:password]),
             password_confirmation: params[:user][:password_confirmation])
       if @user.save
           flash[:notice] =  'ユーザに登録しました'
       redirect_to root_path
       else
       render 'new'
       end
    end
end
