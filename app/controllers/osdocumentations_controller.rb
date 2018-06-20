class OsdocumentationsController < ApplicationController
    before_action :set_osdocumentation, only: [:show, :edit, :update, :destroy]
    authorize_resource

  def index
    @osdocumentations = Osdocumentation.all
  end
  def new
    @osdocumentation = Osdocumentation.new
  end

  def create
     @osdocumentation = Osdocumentation.new(osdocumentation_params)
     @osdocumentation.guard_id = 1
     respond_to do |format|
       if @osdocumentation.valid? 
         if @osdocumentation.save
           format.html { redirect_to @osdocumentation, notice: 'Documento de OS10 Correctamente Creado.' }
           format.json { render :show, status: :created, location: @vacation }
         else
           format.html { render :new }
           format.json { render json: @osdocumentation.errors, status: :unprocessable_entity }
         end
       else
         format.html { render :new }
         format.json { render json: @osdocumentation.errors, status: :unprocessable_entity }
       end
     end
   end

   def search 
    q = params[:rut]
    @osdocumentations = Osdocumentation.find(:all, :conditions => ["rut LIKE %?%",q])
    redirect_to osdocumentations_path

   end

  def edit 
    @osdocumentation = Osdocumentation.find(params[:id])
  end

  def update
    @osdocumentation = Osdocumentation.find(params[:id])
    if @osdocumentation.update(osdocumentation_params)
      redirect_to osdocumentations_path, notice: 'Documento de  OS10 Actualizado correctamente'
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
    @osdocumentation=Osdocumentation.find(params[:id])
  end

  private
  #set installation
  def set_osdocumentation
    @osdocumentation = Osdocumentation.find(params[:id])
  end


  def osdocumentation_params
    params.require(:osdocumentation).permit(:expiration,:certificado_os10_doc,:state)
  end
end