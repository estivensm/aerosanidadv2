class EmergenciasController < ApplicationController
  before_action :set_emergencia, only: [:show, :edit, :update, :destroy]

  def index
    @emergencias = Emergencia.search(params[:search]).page(params[:page]).per_page(20)
  end

  def show
  end

  def new
    @emergencia = Emergencia.new
  end

  def edit
  end

  def create
    @emergencia = Emergencia.new(emergencia_params)

    respond_to do |format|
      if @emergencia.save
        format.html { redirect_to reportes_path }
        format.json { render :show, status: :created, location: @emergencia }
      else
        format.html { render :new }
        format.json { render json: @emergencia.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @emergencia.update(emergencia_params)
        format.html { redirect_to @emergencia, notice: 'Emergencia was successfully updated.' }
        format.json { render :show, status: :ok, location: @emergencia }
      else
        format.html { render :edit }
        format.json { render json: @emergencia.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @emergencia.destroy
    respond_to do |format|
      format.html { redirect_to emergencias_url, notice: 'Emergencia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_emergencia
      @emergencia = Emergencia.find(params[:id])
    end

    def emergencia_params
      params.require(:emergencia).permit(:user_id, 
        :aeropuerto_id, :fecha_novedad, :emergencias, 
        :notas_de_la_emergencia)
    end
end
