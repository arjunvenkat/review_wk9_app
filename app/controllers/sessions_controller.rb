class SessionsController < ApplicationController
  def new
    @email = ""
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user, notice: "You've been logged in"
    else
      @email = params[:email]
      render 'new'
    end

  end

  def destroy
  end
end
