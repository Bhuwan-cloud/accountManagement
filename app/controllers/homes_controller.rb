class HomesController < ApplicationController
  before_action :authenticate_user!

  def index
    @home= Home.all 
  end 
 
  
  def new
    @home= Home.new
  end 
  
 
end
