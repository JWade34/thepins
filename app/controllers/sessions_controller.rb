class SessionsController < ApplicationController

  def new
  end

  def create

    # get credentials from the form
    username = params[:username]
    password = params[:password]

    # find the user
    user = User.find_by username: username

    if user.try(:authenticate, password)

      # store the id in the session
      session[:user_id] = user.id

      # redirect back
      redirect_to root_path

    else
      redirect_to sign_in_path, alert: "SHUT yo mouth!"
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
