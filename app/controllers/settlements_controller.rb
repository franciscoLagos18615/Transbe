class SettlementsController < ApplicationController
  before_action :set_settlement, only: [:show, :edit, :update, :destroy]
  authorize_resource

  #method index settlement
  def index
    @settlements = Settlement.all
    @settlements = Settlement.search(params[:name]).all
    @guard = Guard.find(params[:id])
    @settlement2 = @guard.settlements.all
  end



  def new
    #@vacation = Vacation.new
    @guard = Guard.find(params[:id])
    @settlement = Settlement.new
  end

  def create
    @guard = Guard.find(params[:id])
    @settlement = @guard.settlements.build(settlement_params)
    if @settlement.save
      redirect_to @settlement, notice: "Finiquito guardado correctamente"
    end
  end

  


  def edit 
    @settlement = Settlement.find(params[:id])
  end

  def update
    @settlement = Settlement.find(params[:id])
    if @settlement.update(settlement_params)
      redirect_to @settlement, notice: 'Finiquito Actualizado correctamente'
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
    
    @settlement = Settlement.find(params[:id])
  end
  private
  #set installation
  def set_settlement
    @settlement = Settlement.find(params[:id])
  end
  def settlement_params
    params.require(:settlement).permit(:date, :finiquito_doc, :observation, :name)
  end
end
