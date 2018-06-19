class SallarySettlementsController < ApplicationController
  before_action :set_sallary_settlement, only: [:show, :edit, :update, :destroy]
  authorize_resource
  def index
    @sallary_settlements=SallarySettlement.all
    @sallary_settlements=SallarySettlement.search(params[:name]).all
  end
  #metodo new
  def new
  end
  #metodo create for event
  def create
    @sallary_settlement = SallarySettlement.new(events_params)
    @sallary_settlement.guard_id = 1
    respond_to do |format|
      if @sallary_settlement.valid? 
        if @sallary_settlement.save
         
          format.html { redirect_to sallary_settlements_path, notice: 'Liquidacion Creada Exitosamente.' }
          format.json { render :show, status: :created, location: @sallary_settlement }
        else
          format.html { render :new }
          format.json { render json: @sallary_settlement.errors, status: :unprocessable_entity }
        end
      else
        format.html { render :new }
        format.json { render json: @sallary_settlement.errors, status: :unprocessable_entity }
      end
    end
  end
  #metodo buscar
  def search 
    q = params[:name]
    @sallary_settlements = SallarySettlement.find(:all, :conditions => ["name LIKE %?%",q])
    redirect_to sallary_settlements_path
  end
  #metodo editar
  def edit 
    @sallary_settlement = SallarySettlement.find(params[:id])
  end
  #metodo actualizar
  def update
    @sallary_settlement = SallarySettlement.find(params[:id])
    if @sallary_settlement.update(events_params)
      redirect_to sallary_settlements_path, notice: 'Liquidacion Actualizada correctamente'
    else
      render :edit
    end
  end
  ##
  
  #metodo borrar
  def delete
    @sallary_settlement = SallarySettlement.find(params[:id])
    @sallary_settlement.destroy
    redirect_to sallary_settlements_path
  end
  #metodo show
  def show
    @sallary_settlement=SallarySettlement.find(params[:id])
    #authorize! :all, @event
  end

  ####
  private

  #set event
  def set_sallary_settlement
    @sallary_settlement = SallarySettlement.find(params[:id])
  end

  def sallary_settlements_params
    params.require(:sallary_settlement).permit(:name, :date)
  end
 

end



  
  
  

