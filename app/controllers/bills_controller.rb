class BillsController < ApplicationController
  before_action :set_bill, only: [:show, :edit, :update, :destroy]
  authorize_resource


 
  
  
  def index
    @bills = Bill.all
    @bills = Bill.search(params[:name]).all
    @contract_installation = ContractInstallation.find(params[:id])
    @bills2 = @contract_installation.bills.all
  end

  def new
    @contract_installation = ContractInstallation.find(params[:id])
    @bill = Bill.new
  end

  #method create
  def create
    @contract_installation = ContractInstallation.find(params[:id])
    @bill = @contract_installation.bills.build(bill_params)
    if @bill.save
      redirect_to @bill, notice: "Factura Creada Correctamente"
    end
  end

  
  
  

  #method edit
  def edit 
    @bill = Bill.find(params[:id])
  end

  #method update
  def update
    @bill = Bill.find(params[:id])
    if @bill.update(bill_params)
      redirect_to @bill, notice: 'Documento de Factura Actualizado correctamente'
    else
      render :edit
    end
  end
  
  def delete
    @bill = Bill.find(params[:id])
    @bill.destroy
    redirect_to bills_path
  end


  
  #method show
  def show
    
    @bill = Bill.find(params[:id])
  end
  private
  #set bill
  def set_bill
    @bill = Bill.find(params[:id])
  end


  def bill_params
    params.require(:bill).permit(:description, :ingress, :factura_doc)
  end
end
