class ProcedimientosMedicosYDeEnfermeriaController < ApplicationController
  before_action :set_procedimiento_medico_y_de_enfermeria, only: [:show, :edit, :update, :destroy]

  def index
    @procedimientos_medicos_y_de_enfermeria = ProcedimientoMedicoYDeEnfermeria.page(params[:page]).per_page(20)    
  end

  def show
  end

  def new
    @procedimiento_medico_y_de_enfermeria = ProcedimientoMedicoYDeEnfermeria.new
  end

  def edit
  end

  def create
    @procedimiento_medico_y_de_enfermeria = ProcedimientoMedicoYDeEnfermeria.new(procedimiento_medico_y_de_enfermeria_params)

    respond_to do |format|
      if @procedimiento_medico_y_de_enfermeria.save
        format.html { redirect_to reportes_path }
        format.json { render :show, status: :created, location: @procedimiento_medico_y_de_enfermeria }
      else
        format.html { render :new }
        format.json { render json: @procedimiento_medico_y_de_enfermeria.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @procedimiento_medico_y_de_enfermeria.update(procedimiento_medico_y_de_enfermeria_params)
        format.html { redirect_to @procedimiento_medico_y_de_enfermeria, notice: 'Procedimiento medico y de enfermeria was successfully updated.' }
        format.json { render :show, status: :ok, location: @procedimiento_medico_y_de_enfermeria }
      else
        format.html { render :edit }
        format.json { render json: @procedimiento_medico_y_de_enfermeria.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @procedimiento_medico_y_de_enfermeria.destroy
    respond_to do |format|
      format.html { redirect_to procedimientos_medicos_y_de_enfermeria_url, notice: 'Procedimiento medico y de enfermeria was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_procedimiento_medico_y_de_enfermeria
      @procedimiento_medico_y_de_enfermeria = ProcedimientoMedicoYDeEnfermeria.find(params[:id])
    end

    def procedimiento_medico_y_de_enfermeria_params
      params.require(:procedimiento_medico_y_de_enfermeria).permit(:aeropuerto_id, 
        :user_id, 
        :fecha_novedad, 
        :cantidad_acompañamiento_a_pacientes_trasladados_en_ambulancia, 
        :cantidad_actividades_de_capacitacion_propias_y_a_otro_personal, 
        :cantidad_atencion_de_consultas_medicas, 
        :cantidad_atencion_de_llamadas_de_emergencias_de_aeronaves, 
        :cantidad_atencion_de_llamadas_de_emergencias_de_pasajeros_tripu, 
        :cantidad_atencion_de_pacientes_urgentes, 
        :cantidad_atencion_de_pacientes_lesionados_en_el_aeropuerto, 
        :cantidad_autorizacion_de_organos_componente_anatomico, 
        :cantidad_verificacion_de_cadaveres, 
        :cantidad_ambulancias_externas, 
        :cantidad_electrocardiogramas, 
        :cantidad_glucometria, 
        :cantidad_monitoreo_de_pacientes, 
        :cantidad_reunion_de_personal_y_administrativas, 
        :cantidad_reuniones_administrativas_academicas, 
        :cantidad_salida_por_llamadas_de_accidentes_externos, 
        :cantidad_servicios_de_ambulancias_de_sanidad, 
        :cantidad_servicios_de_silla_de_rueda, 
        :cantidad_suminitro_de_medicamentos_iv_im, 
        :cantidad_suminitro_de_medicamentos_vo, 
        :cantidad_suturas_curaciones_y_lavados, 
        :cantidad_terapias_respiratorias_y_nebulizaciones, 
        :cantidad_tomas_y_controles_de_tension_arterial)
    end
end
