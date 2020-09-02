class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to login_path
    elsif  
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if session
      session.delete :name
    end
  end

end
