class GuardsController < ApplicationController
  def index
    @guards=Guard.all
    @guards = Guard.search(params[:rut]).all
  end
  def new
    @guard = Guard.new
  end

  def create
     @guard = Guard.new(guard_params)
     respond_to do |format|
       if @guard.valid? 
         if @guard.save
           format.html { redirect_to @guard, notice: 'Client was successfully created.' }
           format.json { render :show, status: :created, location: @guard }
         else
           format.html { render :new }
           format.json { render json: @guard.errors, status: :unprocessable_entity }
         end
       else
         format.html { render :new }
         format.json { render json: @guard.errors, status: :unprocessable_entity }
       end
     end
   end

   def search 
    q = params[:rut]
    @guards = Guard.find(:all, :conditions => ["rut LIKE %?%",q])
    redirect_to guards_path

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
