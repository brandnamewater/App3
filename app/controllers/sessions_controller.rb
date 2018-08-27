class SessionsController < ApplicationController

  def index
    redirect_to root_path
  end


  def new
  end


  def creates
    user = User.find_by_userid(params[:userid])
    if user && user.authenticate(params[:password])
      sessions[:user_id] = user.id
      redirect_to root_path, notice:
      "Welcome #{user.userid}"
    else
      render 'new', alert:
      "User ID and/or password incorrect"
  end
end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "You have signedd out"

end

end
