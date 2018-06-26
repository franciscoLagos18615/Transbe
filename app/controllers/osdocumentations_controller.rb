class OsdocumentationsController < ApplicationController
  before_action :set_osdocumentation, only: [:show, :edit, :update, :destroy]
  authorize_resource
  def index
    @osdocumentations = Osdocumentation.all
  end
  def new
    #@vacation = Vacation.new
    @guard = Guard.find(params[:id])
    @osdocumentation = @guard.osdocumentations.build
  end

  def create
    @guard = Guard.find(params[:id])
    @osdocumentation = @guard.osdocumentations.build(osdocumentation_params)
    if @osdocumentation.save
      redirect_to new_osdocumentation_path(:id => @guard.id)
    end
  end

  def edit 
    @osdocumentation = Osdocumentation.find(params[:id])
  end

  def update
    @osdocumentation = Osdocumentation.find(params[:id])
    if @osdocumentation.update(osdocumentation_params)
      redirect_to osdocumentations_path, notice: 'Documento de  Vacacion Actualizado correctamente'
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
    @guard = Guard.find(params[:id])
    @osdocumentation = @guard.osdocumentations.build
  end
  private
  #set installation
  def set_osdocumentation
    @osdocumentation = Osdocumentation.find(params[:id])
    #@osdocumentation = Osdocumentation.find_by(id: [params[:Osdocumentation_id]])
  end

  def osdocumentation_params
    params.require(:osdocumentation).permit(:expiration, :certificado_os10_doc, :state)
  end
end