class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    @name = session[:name]
    if @name.empty?
      redirect_to login_path
    else
      render "hello"
    end
  end

end