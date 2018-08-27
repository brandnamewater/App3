class SubscribersController < ApplicationController


  before_action :authorize, :only => [:create]
  before_action :admin_authorize, :only => [:destroy]




def index

  @subscribers = Subscriber.all

end


def create
  @subscribers = Subscriber.new(subscriber_params)
  #checking if email exists in data base
  if Subscriber.exists?(email: @subscriber.email)
    redirect_to root_path, alert:
    "Sorry, that email already exists"
  elsif
    @subscriber.save
    redirect_to root_path, notice:
    "Thank you #{@subscriber.f_name}, for subscribing to the newsletter!"
  else
    redirect_to root_path, alert:
    "Sorry, information didn't save, please try again"
  end
end

  def destroy
    @subscriber = Subscriber.find(params[:id])
    @subscriber.destroy

    redirect_to subscribers_path
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:f_name, :l_name, :email, :country)



  else
    render 'new'
  end
end
