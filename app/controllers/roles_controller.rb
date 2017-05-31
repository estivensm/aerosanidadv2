class RolesController < ApplicationController
 # before_action :set_rol, only: [:show, :edit, :update, :destroy]
  before_action :authorize


  respond_to :html

  def index
     @roles = Rol.search(params[:search]).page(params[:page]).per_page(10)
    respond_to do |format|
      format.html
      format.json
    end
  end

  def show
    @rol = Rol.find(params[:id])
  end

  def new
    @rol = Rol.new
  end

  def edit
    @rol = Rol.find(params[:id])
  end

  def create
    @rol = Rol.new(rol_params)
    render :action => :new unless @rol.save
  end

  def update
    @rol = Rol.find(params[:id])
    render :action => :edit unless @rol.update_attributes(rol_params)
  end

  def destroy
    @rol = Rol.find(params[:id])
    @rol.destroy
  end
  
  private
  def set_rol
    @rol = Rol.find(params[:id])
  end

  def rol_params
    params.require(:rol).permit!
  end
end
