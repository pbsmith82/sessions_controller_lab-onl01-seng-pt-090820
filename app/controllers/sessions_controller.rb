require 'pry'
class SessionsController < ApplicationController
  def new
    session[:name] = ""
  end

  def create
    #binding.pry
    @name = params[:name]
  if @name.nil? || @name.empty?
    redirect_to login_path
  else
    session[:name] = params[:name]
    redirect_to '/'
    
  end
end

  def destroy
   session.clear
   redirect_to login_path
  end


end
