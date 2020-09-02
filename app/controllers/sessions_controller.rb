class SessionsController < ApplicationController
  def new
  end

  def create
    #byebug
    session[:name] = params[:name]
    if session[:name] == nil || session[:name] == ""
      redirect_to controller: "sessions", action: "new"
    else
      redirect_to "/"
    end
  end

  def destroy
    if session[:name]
      session.delete :name
    end
  end


end
