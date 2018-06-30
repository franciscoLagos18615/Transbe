class BillsController < ApplicationController
  before_action :set_bill, only: [:show, :edit, :update, :destroy]
  authorize_resource
  def index
    @bills = Bill.all
  end
  def new
    @contract_installation = ContractInstallation.find(params[:id])
    @bill = @contract_installation.bills.build
  end

  def create
    @contract_installation = ContractInstallation.find(params[:id])
    @bill = @contract_installation.bills.build(bill_params)
    if @bill.save
      redirect_to new_bill_path(:id => @contract_installation.id)
    end
  end

  def edit 
    @bill = Bill.find(params[:id])
  end

  def update
    @bill = Bill.find(params[:id])
    if @bill.update(bill_params)
      redirect_to bills_path, notice: 'Documento de Factura Actualizado correctamente'
    else
      render :edit
    end
  end
  
  def delete
    @bill = Bill.find(params[:id])
    @bill.destroy
    redirect_to bills_path
  end
=begin
  def show
    @vacation=Vacation.find(params[:id])
  end
=end
  def show
    @contract_installation = ContractInstallation.find(params[:id])
    @bill = @contract_installation.bills.build
  end
  private
  #set installation
  def set_bill
    @bill = Bill.find(params[:id])
  end


  def bill_params
    params.require(:bill).permit(:description, :ingress, :factura_doc)
  end
end
