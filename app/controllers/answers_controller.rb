class AnswersController < ApplicationController
    
    def index
        @answers=Answer.all
    end
    
    def new
        @answer=Answer.new
    end

    def show
        @answer=Answer.find(params[:id]) 
        @question=Question.find(params[:id])
     end
    
    def create
        @answer=Answer.new(ans_message: params[:answer][:ans_message],
        user_id: current_user.id)
        
        if @answer.save
            flash[:notice]="回答しました"
            redirect_to root_path
        else
            flash[:notice]="失敗"
            redirect_to '/answers/new'
        end
    end
end
