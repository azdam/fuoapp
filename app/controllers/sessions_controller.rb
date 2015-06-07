class SessionsController < ApplicationController
  skip_before_action :current_admin
  
  def new
  end

  def create
    admin = Administrator.find_by(email: params[:email])
    if admin and admin.authenticate(params[:password]) #this checks the user password for authenticity
      #logs the user in
      session[:user_id] = admin.id #logs the user into the session
      redirect_to root_url #this logged-in user is an administrator
    else
      redirect_to signin_url, alert: "Invalid username/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to signin_url
  end
end
