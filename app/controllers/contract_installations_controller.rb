class ContractInstallationsController < ApplicationController
  before_action :set_contract_installation, only: [:show, :edit, :update, :destroy]
  authorize_resource


  def index
    @contract_installations = ContractInstallation.all
    @contract_installations = ContractInstallation.search(params[:name]).all
    @installation = Installation.find(params[:id])
    @contract_installation2 = @installation.contract_installations.all

  end
  def new
    @installation = Installation.find(params[:id])
    @event = Event.new
  end
  #metodo create for event
  def create

    @installation = Installation.find(params[:id])
    @event = @installation.events.build(events_params)
    if @event.save
      redirect_to @event, notice: "Evento Creado Correctamente"
    end
  end
 
  def new
    @installation = Installation.find(params[:id])
    @contract_installation = ContractInstallation.new
  end

  def create
    @installation = Installation.find(params[:id])
    @contract_installation = @installation.contract_installations.build(contract_installation_params)
    if @contract_installation.save
      redirect_to @contract_installation, notice: "Contrato creado exitosamente"
    end
  end

  def edit 
    @contract_installation = ContractInstallation.find(params[:id])
  end
  
  def update
    @contract_installation = ContractInstallation.find(params[:id])
    if @contract_installation.update(contract_installation_params)
      redirect_to @contract_installation, notice: 'Documento de contrato Actualizado correctamente'
    else
      render :edit
    end
  end
  
  def show
    @contract_installation=ContractInstallation.find(params[:id])
    #@installation = Installation.find(params[:id])
    #@contract_installation = @installation.contract_installations.build
  end

  def delete
    @contract_installation = ContractInstallation.find(params[:id])
    @contract_installation.destroy
    redirect_to contract_installations_path
  end

  
  private
  #set installation
  def set_contract_installation
    @contract_installation = ContractInstallation.find(params[:id])
  end


  def contract_installation_params
    params.require(:contract_installation).permit(:start_date, :finish_date, :contrato_de_instalacion_doc, :name)
  end
end
