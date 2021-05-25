class QuotationsController < ApplicationController
  before_action :find_quotation, only: [:edit, :update, :show, :destory]

  def index
    @quotation = Quotation.all
  end

  def show
  end
  
  def new
    @quotation = Quotation.new
  end
  
  def create 
    @quotation = Quotation.create(quotation_params)
    if @quotation.save 
        redirect_to quotations_path
      else 
        render :new
    end
  end 

  def edit
  end

  def update
    if @quotation.update(quotation_params)
      redirect_to quotations_path
    else
      render :edit
    end
  end

  def destroy
    @quotation.destroy
    redirect_to quotations_path  
  end

  private
  def find_quotation
    @quotation = Quotation.find(params[:id])
  end

  def quotation_params
    params.require(:quotation).permit(:sn, :bill_number, :date, :rate, :quantity, :description, :total, :subject)
  end
end