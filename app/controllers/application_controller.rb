class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  private
  def new_user
    @usuario = User.new
  end
end
