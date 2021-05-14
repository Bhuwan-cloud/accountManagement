class HomesController < ApplicationController
  
  def index
    @home= Home.all 
  end 
 
  
  def new
    @home= Home.new
  end 
  
 
end
