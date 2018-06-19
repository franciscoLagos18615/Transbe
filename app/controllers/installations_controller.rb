class InstallationsController < ApplicationController
  before_action :set_installation, only: [:show, :edit, :update, :destroy]
  authorize_resource

  def index
    @installations=Installation.all
    @installations = Installation.search(params[:name]).all
  end
  def new
    @installation = Installation.new
  end

  def create
     @installation = Installation.new(installations_params)
     respond_to do |format|
       if @installation.valid? 
         if @installation.save
           format.html { redirect_to installations_path, notice: 'Instalacion Creada Exitosamente.' }
           format.json { render :show, status: :created, location: @installation }
         else
           format.html { render :new }
           format.json { render json: @installation.errors, status: :unprocessable_entity }
         end
       else
         format.html { render :new }
         format.json { render json: @installation.errors, status: :unprocessable_entity }
       end
     end
   end

   def search 
    q = params[:name]
    @installations = Installation.find(:all, :conditions => ["name LIKE %?%",q])
    redirect_to installations_path

   end

  def edit 
    @installation = Installation.find(params[:id])
  end

  def update
    @installation = Installation.find(params[:id])
    if @installation.update(installations_params)
      redirect_to installations_path, notice: 'Instalacion Actualizada correctamente'
    else
      render :edit
    end
  end

  def delete
    @installation = Installation.find(params[:id])
    @installation.destroy
    redirect_to installations_path
  end

  def show
    @installation=Installation.find(params[:id])
  end

  private

  #set installation
  def set_installation
    @installation = Installation.find(params[:id])
  end

  def installations_params
    params.require(:installation).permit(:name, :number_guards,:additional_guards, :date)
  end
end
