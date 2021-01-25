require './app/services/translator'
class AutomationController < ApplicationController
  
  def index
    @navlinks = NavLink.all
    @users = User.all
  end
  
  def executeTest
    # min = History.new params.require(:user).permit(:username, :password, :database)
    # min = History.new(params)
    min = History.new(user_params)
    min.record
  end

  private 
  def user_params
    params.permit(:password, :username, :database, :authenticity_token, :commit)
  end
end