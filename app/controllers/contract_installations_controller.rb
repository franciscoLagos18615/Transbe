class ContractInstallationsController < ApplicationController
  before_action :set_contract_installation, only: [:show, :edit, :update, :destroy]
  authorize_resource


  def index
    @contract_installations = ContractInstallation.all
  end
  def new
    @installation = Installation.find(params[:id])
    @contract_installation = @installation.contract_installations.build
  end

  def create
    @installation = Installation.find(params[:id])
    @contract_installation = @installation.contract_installations.build(contract_installation_params)
    if @contract_installation.save
      redirect_to new_contract_installation_path(:id => @installation.id)
    end
  end

  def edit 
    @contract_installation = ContractInstallation.find(params[:id])
  end

  def update
    @contract_installation = ContractInstallation.find(params[:id])
    if @contract_installation.update(contract_installation_params)
      redirect_to contract_installations_path, notice: 'Documento de contrato Actualizado correctamente'
    else
      render :edit
    end
  end
  
  def delete
    @contract_installation = ContractInstallation.find(params[:id])
    @contract_installation.destroy
    redirect_to contract_installations_path
  end
=begin
  def show
    @vacation=Vacation.find(params[:id])
  end
=end
  def show
    @installation = Installation.find(params[:id])
    @contract_installation = @installation.contract_installations.build
  end
  private
  #set installation
  def set_contract_installation
    @contract_installation = ContractInstallation.find(params[:id])
  end


  def contract_installation_params
    params.require(:contract_installation).permit(:start_date, :finish_date, :contrato_de_instalacion_doc)
  end
end
