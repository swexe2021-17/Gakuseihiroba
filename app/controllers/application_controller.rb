class ApplicationController < ActionController::Base
    protect_from_forgery
     private def current_user
    if session[:uid]
      User.find_by(id:login[:uid])
    end
  end
end
