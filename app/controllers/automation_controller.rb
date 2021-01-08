require './app/services/translator'
class AutomationController < ApplicationController
  def index
  end
  
  def executeTest(user)
    # min = History.new params.require(:user).permit(:username, :password, :database)
    min = History.new(params.permit(:username, :password, :database))
    # min.record
  end
end