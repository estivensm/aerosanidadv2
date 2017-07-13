class HistoriasClinicasController < ApplicationController
  # before_action :set_historia_clinica, only: [:show, :edit, :update, :destroy]
  before_action :set_historia_clinica

  def index
    @historias_clinicas = @paciente.historias_clinicas.search(params[:search]).page(params[:page]).per_page(50)
 
  end

  def show
    @cie10 = Cie10.all
   # @cie102 = Cie102.all
    @alejo = 0

    @diagnosticos = @historia_clinica.diagnosticos.all
    @procedimientos = @historia_clinica.procedimientos.all
    @notas_progreso = @historia_clinica.notas_progreso

    @historias_clinicas = @paciente.historias_clinicas.search(params[:search]).page(params[:page]).per_page(2)

    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => 'file_name',
        :template => 'historias_clinicas/pdfs/historia_clinica.pdf.erb',
        :layout => 'pdf.html.erb',
        :show_as_html => params[:debug].present?
      end
    end
  end

  def edit
    #@diagnosticos = Diagnostico.where("historia_clinica_id = @historia_clinica")
  end

  def new
    @historia_clinica = HistoriaClinica.new
  end

  def create
    @historia_clinica = HistoriaClinica.new(historia_clinica_params)
    @historia_clinica.paciente_id = @paciente.id

    respond_to do |format|
      if @historia_clinica.save(validate: false)
        format.html { redirect_to paciente_historia_clinica_steps_path(@paciente, @historia_clinica,
         HistoriaClinica.form_steps.second), notice: 'Historia Clinica creada Satisfactoriamente.' }

        format.json { render :show, status: :created, location: @historia_clinica }
      else
        format.html { render :new }
        format.json { render json: @historia_clinica.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @historia_clinica.update(historia_clinica_params)
        format.html { redirect_to paciente_historia_clinica_path(@paciente, @historia_clinica), notice: 'Historia Clinica actualizada Satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @historia_clinica }
      else
        format.html { render :edit }
        format.json { render json: @historia_clinica.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @historia_clinica.destroy
    respond_to do |format|
      format.html { redirect_to historias_clinicas_url }
      format.json { head :no_content }
    end
  end

  private
    def set_historia_clinica
      @paciente = Paciente.find(params[:paciente_id])
      @historia_clinica = HistoriaClinica.find(params[:id]) if params[:id]

    end

    def historia_clinica_params
        params.require(:historia_clinica).permit!
    end
end
