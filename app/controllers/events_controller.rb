class EventsController < ApplicationController
  #metodo index
  def index
    @events=Event.all
    @events=Event.search(params[:name]).all
  end
  #metodo new
  def new
    @event = Event.new
  end
  #metodo create for event
  def create
    @event = Event.new(events_params)
    respond_to do |format|
      if @event.valid? 
        if @event.save
          format.html { redirect_to @event, notice: 'Evento Creado Exitosamente.' }
          format.json { render :show, status: :created, location: @event }
        else
          format.html { render :new }
          format.json { render json: @event.errors, status: :unprocessable_entity }
        end
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end
  #metodo buscar
  def search 
    q = params[:name]
    @events = Event.find(:all, :conditions => ["name LIKE %?%",q])
    redirect_to events_path
  end
  #metodo editar
  def edit 
    @event = Event.find(params[:id])
  end
  #metodo actualizar
  def update
    @event = Event.find(params[:id])
    if @event.update(events_params)
      redirect_to events_path
    else
      render :edit
    end
  end
  ##
  
  #metodo borrar
  def delete
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end
  #metodo show
  def show
    @event=Event.find(params[:id])
  end

  ####
  private
  def events_params
    params.require(:event).permit(:name, :date)
  end
 
end

