class SessionsController < ApplicationController
  #before_action :require_login

  def new
  end

  def create
    #binding.pry
    if !params[:name] || params[:name].empty?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    #binding.pry
    session.delete :name #session.delete(:name)
    redirect_to '/'
  end

end
