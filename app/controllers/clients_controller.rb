class ClientsController < ApplicationController

  before_action :set_client, only: [:show, :edit, :update, :destroy ]

  def index
    @client = Client.all
  end

  def show 
    @client = Client.find(params[:id]) 
   
  end 

  def new
    @client=Client.new
  end

def create
    @client = Client.create(client_params)
      if @client.save
        redirect_to clients_path
      else
        render :new 
      end
  end

def edit 
end

def update

        if @client.update(client_params)
         redirect_to clients_path 
        else
          render :edit 
        end
end

def destroy
    @client.destroy
    redirect_to clients_path
   
end

private
def set_client
    @client = Client.find(params[:id])
  end

def client_params
    params.require(:client).permit(:name, :address, :phone, :project, :member, :started, :completed)
end


end
