class InvoicesController < ApplicationController
  before_action :find_invoice, only: [:edit, :update, :show, :destory] 
  def index
    @invoice = Invoice.all
  end

  def show
  end

  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = Invoice.create(invoice_params)
      if @invoice.save
        redirect_to invoices_path
      else
        render :new
      end
  end
  
  def edit
  end

  def update
      if @invoice.update(invoice_params)
        redirect_to invoices_path
      else
        render :edit
      end
  end

  def destory
    @invoice.destory
    redirect_to invoices_path
  end

  private
  def find_invoice
    @invoice = Invoice.find(params[:id])
  end

  def invoice_params
    params.require(:invoice).permit(:sn, :bill_number, :date, :rate, :quantity, :description, :total, :subject, 
      :client_name, :client_address, :client_designation, :vat_no, :payment_type, :admin_name, :office_name, :client_phone)
  end
end
