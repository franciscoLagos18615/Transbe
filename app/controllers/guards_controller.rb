class GuardsController < ApplicationController
  def index
    @guards=Guard.all
  end
  def new
    @guard = Guard.new
  end

  def create 
    @guard = Guard.new(guard_params) 
    if @guard.save
      redirect_to guards_path
    else
      render :new
    end
  end

  def edit 
    @guard = Guard.find(params[:id])
  end
  def update
    @guard = Guard.find(params[:id])
    if @guard.update(guard_params)
      redirect_to guards_path
    else
      render :edit
    end
  end
  def delete
    @guard = Guard.find(params[:id])
    @guard.destroy
    redirect_to guards_path
  end

  def show
    @guard=Guard.find(params[:id])
  end

  private
  def guard_params
    params.require(:guard).permit(:firstname, :lastname,:surname, :rut, :email, :phone_number, :nationality, :second_phone, :age, :city, :commune, :address, :educational_level, :sex, :avatar)
  end
end
