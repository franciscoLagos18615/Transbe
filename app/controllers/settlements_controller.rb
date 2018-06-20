class SettlementsController < ApplicationController
  before_action :set_settlement, only: [:show, :edit, :update, :destroy]
  authorize_resource
  def index
    @settlements = Settlement.all
  end
  def new
    @settlement = Settlement.new
  end

  def create
     @settlement = Settlement.new(settlement_params)
     @settlement.guard_id = 1
     respond_to do |format|
       if @settlement.valid? 
         if @settlement.save
           format.html { redirect_to @settlement, notice: 'Documento de Finiquito Correctamente Creado.' }
           format.json { render :show, status: :created, location: @settlements }
         else
           format.html { render :new }
           format.json { render json: @settlement.errors, status: :unprocessable_entity }
         end
       else
         format.html { render :new }
         format.json { render json: @settlement.errors, status: :unprocessable_entity }
       end
     end
   end

   def search 
    q = params[:rut]
    @settlements = Settlement.find(:all, :conditions => ["rut LIKE %?%",q])
    redirect_to settlements_path

   end

  def edit 
    @settlement = Settlement.find(params[:id])
  end

  def update
    @settlement = Settlement.find(params[:id])
    if @settlement.update(settlement_params)
      redirect_to settlement_path, notice: 'Documento de Finiquito Actualizado correctamente'
    else
      render :edit
    end
  end
  
  def delete
    @settlement = Settlement.find(params[:id])
    @settlement.destroy
    redirect_to settlements_path
  end

  def show
    @settlement=Settlement.find(params[:id])
  end

  private
  #set installation
  def set_settlement
    @settlement = Settlement.find(params[:id])
  end


  def settlement_params
    params.require(:settlement).permit(:date, :finiquito_doc, :observation)
  end
end
