class AeropuertosController < ApplicationController
  before_action :authorize

  respond_to :html

def index
     @aeropuertos = Aeropuerto.search(params[:search]).page(params[:page]).all

@elements = Aeropuerto.where(state:true).ids
     @aeropuertos = Aeropuerto.where("id = ? OR id = ? OR id = ?  OR id = ?  OR id = ?  OR id = ?  OR id = ?  OR id = ?  OR id = ?  OR id = ?  OR id = ?  OR id = ?  OR id = ?  OR id = ? OR id = ?", 196, 184, 217, 221, 309, 280, 318, 343, 193, 271, 207, 308, 197, 191, 1100)




@enero1 = Date.new(2018,1,1)
@enero2 = Date.new(2018,1,31)
@febrero1 = Date.new(2018,2,1)
@febrero2 = Date.new(2018,2,28)
@marzo1 = Date.new(2018,3,1)
@marzo2 = Date.new(2018,3,31)
@abril1 = Date.new(2018,4,1)
@abril2 = Date.new(2018,4,30)
@mayo1 = Date.new(2018,5,1)
@mayo2 = Date.new(2018,5,31)
@junio1 = Date.new(2018,6,1)
@junio2 = Date.new(2018,6,30)
@julio1 = Date.new(2018,7,1)
@julio2 = Date.new(2018,7,31)
@agosto1 = Date.new(2018,8,1)
@agosto2 = Date.new(2018,8,31)




    respond_to do |format|
      format.html
      format.json
end
   






  end

  def show
    @aeropuerto = Aeropuerto.find(params[:id])
  end

  def new
    @aeropuerto = Aeropuerto.new
    @aeropuerto.historias_clinicas.build
  end

  def edit
    @aeropuerto = Aeropuerto.find(params[:id])
  end

  def create
    @aeropuerto = Aeropuerto.new(aeropuerto_params)
    render :action => :new unless @aeropuerto.save
  end



  def update
    @aeropuerto = Aeropuerto.find(params[:id])
    render :action => :edit unless @aeropuerto.update_attributes(aeropuerto_params)
  end


  def update
    @aeropuerto = Aeropuerto.find(params[:id])
    render :action => :edit unless @aeropuerto.update_attributes(aeropuerto_params)
  end

  def destroy
    @aeropuerto = Aeropuerto.find(params[:id])
    @aeropuerto.destroy
  end


  private
  def set_aeropuerto
    @aeropuerto = Aeropuerto.find(params[:id])
  end

  def aeropuerto_params
   params.require(:aeropuerto).permit(:nombre, :ciudad_id, :departamento)
  end
end
