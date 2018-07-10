class VacationsController < ApplicationController
  #permisos para la gem cancancan para que no todos lo usuarios realizen las mismas acciones
  before_action :set_vacation, only: [:show, :edit, :update, :destroy]
  authorize_resource
  def index
    @vacations = Vacation.all
    @guard = Guard.find(params[:id])
    @vacations2 = @guard.vacations.all
  end
  def new
    #@vacation = Vacation.new
    @guard = Guard.find(params[:id])
    @vacation = Vacation.new
  end

  def create
    @guard = Guard.find(params[:id])
    @vacation = @guard.vacations.build(vacation_params)
    if @vacation.save
      redirect_to @vacation, notice: "Vacaciones guardadas correctamente"
    end
  end
  
=begin
  def create
    @vacation = Vacation.new(vacation_params)
    @vacation.guard_id = 4
    respond_to do |format|
      if @vacation.valid? 
        if @vacation.save
          format.html { redirect_to @vacation, notice: 'Documento de Vacacion Correctamente Creado.' }
          format.json { render :show, status: :created, location: @vacation }
        else
          format.html { render :new }
          format.json { render json: @vacation.errors, status: :unprocessable_entity }
        end
      else
        format.html { render :new }
        format.json { render json: @vacation.errors, status: :unprocessable_entity }
      end
    end
  end
=end
  def search 
    q = params[:rut]
    @vacations = Vacation.find(:all, :conditions => ["rut LIKE %?%",q])
    redirect_to vacations_path

  end

  def edit 
    @vacation = Vacation.find(params[:id])
  end

  def update
    @vacation = Vacation.find(params[:id])
    if @vacation.update(vacation_params)
      redirect_to @vacation, notice: 'Vacaciones Actualizado correctamente'
    else
      render :edit
    end
  end
  
  def delete
    @vacation = Vacation.find(params[:id])
    @vacation.destroy
    redirect_to vacations_path
  end
=begin
  def show
    @vacation=Vacation.find(params[:id])
  end
=end
  def show
    @vacation=Vacation.find(params[:id])
  end
  private
  #set installation
  def set_vacation
    @vacation = Vacation.find(params[:id])
  end


  def vacation_params
    params.require(:vacation).permit(:days_taken, :vacacion_doc,:name)
  end
end
