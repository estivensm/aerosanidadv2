class ProcedimientosController < ApplicationController
  before_action :set_procedimiento, only: [:show, :edit, :update, :destroy]
  before_action :authorize

  def index
    @procedimientos = Procedimiento.all
  end

  def show
  end

  def new
    @procedimiento = Procedimiento.new
  end

  def edit
  end

  def create
    @procedimiento = Procedimiento.new(procedimiento_params)

    respond_to do |format|
      if @procedimiento.save
        format.html { redirect_to @procedimiento, notice: 'Procedimiento creado Satisfactoriamente.' }
        format.json { render :show, status: :created, location: @procedimiento }
      else
        format.html { render :new }
        format.json { render json: @procedimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @procedimiento.update(procedimiento_params)
        format.html { redirect_to @procedimiento, notice: 'Procedimiento actualizado Satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @procedimiento }
      else
        format.html { render :edit }
        format.json { render json: @procedimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @procedimiento.destroy
    respond_to do |format|
      format.html { redirect_to procedimientos_url, notice: 'Procedimiento eliminado Satisfactoriamente..' }
      format.json { head :no_content }
    end
  end

  private
    def set_procedimiento
      @procedimiento = Procedimiento.find(params[:id])
    end

    def procedimiento_params
      params.require(:procedimiento).permit(:tratamiento, :via_acceso, :descripcion, :glucometria1, :glucometria2, :electrocardiograma)
    end
end
