class SessionsController < ApplicationController
  def new
    #no need to do anything here
  end

  def create
    session[:name] = params[:name]
    if session[:name] == nil || session[:name].empty?
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
  end
end
