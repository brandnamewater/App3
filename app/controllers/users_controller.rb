class UsersController < ApplicationController
  def index

  end

  def new
    @user = User.new
  end

  def create

    @user = User.new (user_params)
    if @user.save
      #session[:user_id] = @user.id
      #redirect_to articles_path, notice:
      #{}"Welcome #{@user.userid}! You successfully created your account!"
      flash[:success] = "Welcome to the Sample App!"
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:userid, :email, :password, :password_confirmation)
end
end
