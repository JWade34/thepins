class SessionsController < ApplicationController

  def new

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

end
