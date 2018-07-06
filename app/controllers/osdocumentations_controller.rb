class OsdocumentationsController < ApplicationController
  before_action :set_osdocumentation, only: [:show, :edit, :update, :destroy]
  authorize_resource
  def index
    @osdocumentations = Osdocumentation.all
    @guard = Guard.find(params[:id])
    @osdocumentations2 = @guard.osdocumentations.all
  end
  def new
    #@vacation = Vacation.new
    @guard = Guard.find(params[:id])
    @osdocumentation = Osdocumentation.new
  end

  def create
    @guard = Guard.find(params[:id])
    @osdocumentation = @guard.osdocumentations.build(osdocumentation_params)
    if @osdocumentation.save
      redirect_to @osdocumentation, notice: "Certificado OS10 guardado correctamente"
    end
  end

  def edit 
    @osdocumentation = Osdocumentation.find(params[:id])
  end

  def update
    @osdocumentation = Osdocumentation.find(params[:id])
    if @osdocumentation.update(osdocumentation_params)
      redirect_to @osdocumentation, notice: 'Documento OS10 Actualizado correctamente'
    else
      render :edit
    end
  end
  
  def delete
    @osdocumentation = Osdocumentation.find(params[:id])
    @osdocumentation.destroy
    redirect_to osdocumentations_path
  end

  def show
    @osdocumentation = Osdocumentation.find(params[:id])
  end
  private
  #set installation
  def set_osdocumentation
    @osdocumentation = Osdocumentation.find(params[:id])
  end

  def osdocumentation_params
    params.require(:osdocumentation).permit(:expiration, :certificado_os10_doc, :state)
  end
end