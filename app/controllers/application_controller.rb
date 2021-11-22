class ApplicationController < ActionController::Base
     private def current_user
    if session[:uid]
      User.find_by(id:login[:uid])
    end
  end
end
