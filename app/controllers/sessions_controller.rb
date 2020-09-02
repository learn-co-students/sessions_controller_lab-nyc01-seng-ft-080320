class SessionsController < ApplicationController
    def create
        session[:name] = params[:name]
        redirect_to(root_path)
    end

    def destroy
        session.delete(:name)
        redirect_to(root_path)
    end
end
