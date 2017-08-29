class PacientesController < ApplicationController
  before_action :set_paciente, only: [:show, :edit, :update, :destroy]
  # before_filter :find_paciente_clinic_histories

  def index
    @pacientes = Paciente.search(params[:search]).page(params[:page]).per_page(20)
  end

  def show
  end

  def new
    @paciente = Paciente.new
   # @paciente.build_ciudad
  end

  def edit

  end

  def create
    @paciente = Paciente.new(paciente_params)
    if @paciente.email.blank?
      @paciente.email = "N/A"
    end
    respond_to do |format|
      if @paciente.save
        format.html { redirect_to new_paciente_historia_clinica_path(@paciente), notice: 'Paciente creado Satisfactoriamente.' }
        format.json { render :show, status: :created, location: @paciente }
      else
        format.html { render :new }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end


  def get_pacientes

    render :text => Paciente.where(documento: params[:cedula]).count

  end  

  def update

    respond_to do |format|
      if @paciente.update(paciente_params)

        format.html { redirect_to @paciente, notice: 'Paciente actualizado Satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @paciente }
      else
        format.html { render :edit }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @paciente.destroy
    respond_to do |format|
      format.html { redirect_to pacientes_url, notice: 'Paciente eliminado Satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

    private
    def set_paciente
      @paciente = Paciente.find(params[:id])

    end

    def paciente_params
      params.require(:paciente).permit!
    end


end