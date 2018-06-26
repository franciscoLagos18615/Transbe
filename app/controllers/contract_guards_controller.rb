class ContractGuardsController < ApplicationController
  before_action :set_contract_guard, only: [:show, :edit, :update, :destroy]
  authorize_resource


  def index
    @contract_guards = ContractGuard.all
  end
  def new
    @guard = Guard.find(params[:id])
    @contract_guard = @guard.contract_guards.build
  end

  def create
    @guard = Guard.find(params[:id])
    @contract_guard = @guard.contract_guards.build(contract_guard_params)
    if @contract_guard.save
      redirect_to new_contract_guard_path(:id => @guard.id)
    end
  end

  def edit 
    @contract_guard = ContractGuard.find(params[:id])
  end

  def update
    @contract_guard = ContractGuard.find(params[:id])
    if @contract_guard.update(contract_guard_params)
      redirect_to contract_guards_path, notice: 'Documento de contrato Actualizado correctamente'
    else
      render :edit
    end
  end
  
  def delete
    @contract_guard = ContractGuard.find(params[:id])
    @contract_guard.destroy
    redirect_to contract_guards_path
  end
=begin
  def show
    @vacation=Vacation.find(params[:id])
  end
=end
  def show
    @guard = Guard.find(params[:id])
    @contract_guard = @guard.contract_guards.build
  end
  private
  #set installation
  def set_contract_guard
    @contract_guard = ContractGuard.find(params[:id])
  end


  def contract_guard_params
    params.require(:contract_guard).permit(:start_date, :finish_date, :contrato_doc)
  end
end
