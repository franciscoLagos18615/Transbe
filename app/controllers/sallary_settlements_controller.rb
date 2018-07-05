class SallarySettlementsController < ApplicationController
  before_action :set_sallary_settlement, only: [:show, :edit, :update, :destroy]
  authorize_resource

  
  def index
    @sallary_settlements=SallarySettlement.all
    @sallary_settlements=SallarySettlement.search(params[:name]).all
    @guard = Guard.find(params[:id])
    @sallary_settlement2 = @guard.sallary_settlements.all
    
  end

 
  
  #metodo new
  def new
    @guard = Guard.find(params[:id])
    @sallary_settlement = SallarySettlement.new
  end
  #metodo create for event
  def create
    @guard = Guard.find(params[:id])
    @sallary_settlement = @guard.sallary_settlements.build(sallary_settlement_params)
    if @sallary_settlement.save
      redirect_to @sallary_settlement, notice: "Liquidacion guardada exitosamente"
    end
  end
  
  #metodo editar
  def edit 
    @sallary_settlement = SallarySettlement.find(params[:id])
  end

  
  #metodo actualizar
  def update
    @sallary_settlement = SallarySettlement.find(params[:id])
    if @sallary_settlement.update(sallary_settlement_params)
      redirect_to @sallary_settlement, notice: 'Liquidacion Actualizada correctamente'
    else
      render :edit
    end
  end
  
  
  ##
   #metodo show
   def show
    @sallary_settlement=SallarySettlement.find(params[:id])
    #authorize! :all, @event
  end
  #metodo borrar
  def delete
    @sallary_settlement = SallarySettlement.find(params[:id])
    @sallary_settlement.destroy
    redirect_to sallary_settlements_path
  end
 

  ####
  private

  def set_sallary_settlement
    @sallary_settlement = SallarySettlement.find(params[:id])
  end

  def sallary_settlement_params
    params.require(:sallary_settlement).permit(:cost, :date, :liquidacion_doc, :name)
  end
 

end



  
  
  

