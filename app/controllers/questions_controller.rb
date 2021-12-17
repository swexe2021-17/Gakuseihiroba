class QuestionsController < ApplicationController
    
    def index
        @users=User.all
        @questions=Question.all
    end
    
    def show
       @question=Question.find(params[:id]) 
    end
    
    def new
        @question=Question.new
    end
    
    def create
        @question=Question.new(que_class: params[:question][:que_class],
        que_title: params[:question][:que_title],message: params[:question][:message],
        user_id: current_user.id)
        
        if @question.save
            flash[:notice]="投稿しました"
            redirect_to root_path
        else
            logger.debug(@question.errors)
            flash[:notice]="失敗"
            redirect_to '/questions/new'
        end
    end
    
    def edit
        @question=Question.find(params[:id])
    end
    
    def update
        question=Question.find(params[:id])
        question.update(que_class: params[:question][:que_class],
        que_title: params[:question][:que_title],message: params[:question][:message],
        user_id: current_user.id)
        if question.save
            flash[:notice]="更新しました"
            redirect_to root_path
        else
            flash[:notice]="失敗"
            redirect_to '/questions/edit'
        end
    end
end
