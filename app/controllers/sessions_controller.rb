class SessionsController < ApplicationController
  #def new  
  #end
  def create
    user = User.find_by(Email: params[:session][:Email])
    if user && user.authenticate(params[:session][:password])
          # Wszystko dobrze, logujemy
          log_in user
          redirect_to user
    else
          # Niedobrze
          render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
  
end
