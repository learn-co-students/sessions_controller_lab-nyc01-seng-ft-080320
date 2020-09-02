class SessionsController < ApplicationController
  def new

  end

  def create 
    session[:name] = params[:name]
    if session[:name] && session[:name] != ''
        redirect_to '/'
    else #session[:name] == nil
        redirect_to controller: 'sessions', action: 'new'
    end
  end

  def destroy
    session.delete :name
  end

end
