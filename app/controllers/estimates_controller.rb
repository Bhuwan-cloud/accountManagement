class EstimatesController < ApplicationController
  before_action :find_estimate, only: [:show, :edit, :update, :destroy]
  
  def index
    @estimate = Estimate.all
  end
  
  def show
  end
  
  def new
    @estimate = Estimate.new
  end
  
  def create
    @estimate = Estimate.create(estimate_params)
      if @estimate.save
        redirect_to estimates_path
      else
        render :new
      end
  end

  def edit
  end

  def update
    if @estimate.update(estimate_params)
      redirect_to estimates_path
    else
      render :edit
    end
  end

  def destroy
    @estimate.destroy
    redirect_to estimates_path
  end

  private
  def find_estimate
    @estimate = Estimate.find(params[:id])
  end

  def estimate_params
    params.require(:estimate).permit(:sn, :bill_number, :date, :rate, :quantity, :description, :total, :subject, 
           :client_name, :client_address, :client_designation, :vat_no, :payment_type, :admin_name, :office_name, :client_phone)
  end
end
