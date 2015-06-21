class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :current_admin 

  def current_admin
    if request.format.html?
      if session[:user_id]
        @current_admin = Administrator.find_by(id: session[:user_id])
      else
        redirect_to signin_url,  notice: "Please sgin in with your credentials"
      end
    end
    
  end
end
