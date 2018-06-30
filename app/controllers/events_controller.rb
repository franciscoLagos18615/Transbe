class EventsController < ApplicationController
  
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  authorize_resource
  #metodo index
  def index
    @events=Event.all
    @events=Event.search(params[:name]).all
  end
  #metodo new
  def new
    @installation = Installation.find(params[:id])
    @event = Event.new
  end
  #metodo create for event
  def create

    @installation = Installation.find(params[:id])
    @event = @installation.events.build(events_params)
    if @event.save
      redirect_to new_event_path(:id => @installation.id)
    end
  end

  #metodo buscar
  #def search 
  #  q = params[:name]
  #  @events = Event.find(:all, :conditions => ["name LIKE %?%",q])
  #  redirect_to events_path
  #end
  #metodo editar
  def edit 
    @event = Event.find(params[:id])
  end
  #metodo actualizar
  def update
    @event = Event.find(params[:id])
    if @event.update(events_params)
      redirect_to events_path, notice: 'Evento Actualizado correctamente'
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
    @installation = Installation.find(params[:id])
    @event = @installation.events.build
    #@event=Event.find(params[:id])
    #authorize! :all, @event
  end

  ####
  #private

  #set event
  def set_event
    @event = Event.find(params[:id])
  end

  def events_params
    params.require(:event).permit(:name, :date, :factura_evento_doc)
  end
 
end

