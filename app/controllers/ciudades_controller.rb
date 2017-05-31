class CiudadesController < ApplicationController
 # before_action :set_ciudad, only: [:show, :edit, :update, :destroy]
   autocomplete :ciudad, :nombre
  before_action :authorize


  respond_to :html

  def index
     @ciudades = Ciudad.search(params[:search]).page(params[:page]).per_page(20)
    respond_to do |format|
      format.html
      format.json
    end
  end

  def show
    @ciudad = Ciudad.find(params[:id])
  end

  def new
    @ciudad = Ciudad.new
    
  end

  def edit
    @ciudad = Ciudad.find(params[:id])
  end

  def create
    @ciudad = Ciudad.new(ciudad_params)
    render :action => :new unless @ciudad.save
  end

  def update
    @ciudad = Ciudad.find(params[:id])
    render :action => :edit unless @ciudad.update_attributes(ciudad_params)
  end
 
  def update
    @ciudad = Ciudad.find(params[:id])
    render :action => :edit unless @ciudad.update_attributes(ciudad_params)
  end

  def destroy
    @ciudad = Ciudad.find(params[:id])
    @ciudad.destroy
  end
  
  private
  def set_ciudad
    @ciudad = Ciudad.find(params[:id])
  end

  def ciudad_params
    params.require(:ciudad).permit!
  end
end