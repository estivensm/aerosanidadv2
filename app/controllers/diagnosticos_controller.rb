class DiagnosticosController < ApplicationController
  before_action :authorize
  #autocomplete :material, :nombre, full: false

  def index
    @diagnosticos = Diagnostico.all
  end

  def show
  end

  def new
    @diagnostico = Diagnostico.new
    #@diagnostico.familia = "hola jodido"
    
  end

  def edit
  end

  def create
    @diagnostico = Diagnostico.new(diagnostico_params)
        @diagnostico.familia = "hola jodido"
    
    respond_to do |format|
      if @diagnostico.save
        format.html { redirect_to @diagnostico, notice: 'Diagnostico creado Satisfactoriamente.' }
        format.json { render :show, status: :created, location: @diagnostico }
      else
        format.html { render :new }
        format.json { render json: @diagnostico.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @diagnostico.update(diagnostico_params)
        format.html { redirect_to @diagnostico, notice: 'Diagnostico actualizado Satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @diagnostico }
      else
        format.html { render :edit }
        format.json { render json: @diagnostico.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @diagnostico.destroy
    respond_to do |format|
      format.html { redirect_to diagnosticos_url, notice: 'Diagnostico eliminado Satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    def set_diagnostico
      @diagnostico = Diagnostico.find(params[:id])
    end

    def diagnostico_params
      params.require(:diagnostico).permit(:familia, :codigo, :simbolo, :descripcion, :codigo, :historia_clinica_id)
    end
end

