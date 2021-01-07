require './app/services/translator'
class AutomationController < ApplicationController
  def index
  end
  
  def test
    min = History.new
    min.record()
  end  
end
