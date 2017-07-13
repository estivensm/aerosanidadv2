class HistoriaFisicasController < ApplicationController
  before_action :set_historia_fisica, only: [:show, :edit, :update, :destroy]

  # GET /historia_fisicas
  # GET /historia_fisicas.json
  def index
     @historia_clinica = HistoriaClinica.find(params[:historia_clinica_id])
    @paciente = Paciente.find(params[:paciente_id])
    @historia_fisicas = @historia_clinica.historia_fisicas


  end

  # GET /historia_fisicas/1
  # GET /historia_fisicas/1.json
  def show
  end

  # GET /historia_fisicas/new
  def new
    @historia_clinica = HistoriaClinica.find(params[:historia_clinica_id])
    @paciente = Paciente.find(params[:paciente_id])
    @historia_fisica = HistoriaFisica.new
  end


  # GET /historia_fisicas/1/edit
  def edit
     @historia_clinica = HistoriaClinica.find(params[:historia_clinica_id])
    @paciente = Paciente.find(params[:paciente_id])
  end

  # POST /historia_fisicas
  # POST /historia_fisicas.json
  def create
    @historia_fisica = HistoriaFisica.new(historia_fisica_params)
    @paciente = Paciente.find(params[:paciente_id])
    respond_to do |format|
      if @historia_fisica.save
        format.html { redirect_to paciente_historias_clinicas_path(@paciente), notice: 'Historia fisica was successfully created.' }
        format.json { render :show, status: :created, location: @historia_fisica }
      else
        format.html { render :new }
        format.json { render json: @historia_fisica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historia_fisicas/1
  # PATCH/PUT /historia_fisicas/1.json
  def update
    respond_to do |format|
      if @historia_fisica.update(historia_fisica_params)
        format.html { redirect_to paciente_historias_clinicas_path(@paciente), notice: 'Historia fisica was successfully updated.' }
        format.json { render :show, status: :ok, location: @historia_fisica }
      else
        format.html { render :edit }
        format.json { render json: @historia_fisica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historia_fisicas/1
  # DELETE /historia_fisicas/1.json
  def destroy
    @historia_fisica.destroy
    respond_to do |format|
      format.html { redirect_to historia_fisicas_url, notice: 'Historia fisica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historia_fisica
       @paciente = Paciente.find(params[:paciente_id])
      @historia_fisica = HistoriaFisica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def historia_fisica_params
      params.require(:historia_fisica).permit(:paciente_id, :user_id, :adjunto, :descripcion, :historia_clinica_id, :tipo)
    end
end
