class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    
    if session[:name].nil? || session[:name] == ""
      redirect_to(controller: 'sessions', action: 'new')
    else
      redirect_to '/'
    end
  end
  
  def destroy  
      session.delete :name unless session[:name].nil?
 
  end


end
