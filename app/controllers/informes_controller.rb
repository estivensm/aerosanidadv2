class InformesController < ApplicationController
  before_action :authorize

  def index
    @aeropuertos = Aeropuerto.where(state: true)
  end

  def show
  end

  def historia_usuario
    @hash2 = Hash.new
    User.all.each do |user|
      cont = HistoriaClinica.where(user_id: user.id).count
      @hash2[user.nombres + " " + user.apellidos] = cont
end
@hash1 = @hash2.sort_by{ |key, val| val }.reverse

    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => 'file_name',
        :template => 'historias_clinicas/pdfs/historia_usuario.pdf.erb',
        :layout => 'pdf.html.erb',
        :show_as_html => params[:debug].present?
      end
    end

  end


  def usuarios
    @users = User.all
    @empresas = Empresa.all
    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => 'file_name',
        :template => 'historias_clinicas/pdfs/usuarios.pdf.erb',
        :layout => 'pdf.html.erb',
        :show_as_html => params[:debug].present?
      end
    end
  end

  # Listado de Doctores, con el numero de Historias
  # Clinicas que ha hecho cada uno
  def doctores
    @users = User.where(:rol_id => 2)
    @historias_clinicas = HistoriaClinica.all
    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => 'file_name',
        :template => 'historias_clinicas/pdfs/doctores.pdf.erb',
        :layout => 'pdf.html.erb',
        :show_as_html => params[:debug].present?
      end
    end
  end

  def  mensual_actividades_medicas

    @historias_clinicas = HistoriaClinica.all
    @users = User.all
    @empresas = Empresa.all


    $varMensuales = params[:searchbox3]
    $varMensuales2 = params[:searchbox33]
    @Mensuales = params[:searchbox3].to_date
    @Mensuales2 = params[:searchbox33].to_date
    dadasdas = params[:nombre]
    $aeropuertoMensuales = dadasdas[:id]


    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => 'file_name',
        :template => 'historias_clinicas/pdfs/actividades_clinicas.pdf.erb',
        :layout => 'pdf.html.erb',
        :show_as_html => params[:debug].present?
      end
    end

  end


  def aerocivil

    @historias_clinicas = HistoriaClinica.all
    @users = User.all
    @empresas = Empresa.all


    $varAerocivil = params[:searchbox]
    $varAerocivil2 = params[:searchbox2]

    $nombre_aeropuerto_aerocivil = params[:nombre]
    $id_aeropuerto_aerocivil = $nombre_aeropuerto_aerocivil[:id]


    fecha1 = $varAerocivil.to_date 
    fecha0 = fecha1.strftime("%B") 
    fecha0.to_s 
    if fecha0 == "January" 
    $mes = "Enero"
    elsif fecha0 == "February" 
    $mes = "Febrero"
    elsif fecha0 == "March" 
    $mes ="Marzo"
    elsif fecha0 == "March" 
    $mes = "April"
    elsif fecha0 == "May" 
    $mes = "Mayo"
    elsif fecha0 == "June" 
    $mes = "Junio"
    elsif fecha0 == "July" 
    $mes = "Julio"
    elsif fecha0 == "August" 
    $mes = "Agosto"
    elsif fecha0 == "September" 
    $mes = "Septiembre"
    elsif fecha0 == "October" 
    $mes = "Octubre"
    elsif fecha0 == "November" 
    $mes = "Noviembre"
    elsif fecha0 == "December" 
    $mes = "Diciembre"
    end

    fecha2 = $varAerocivil.to_date 
    fecha0 = fecha2.strftime("%B") 
    fecha0.to_s 
    if fecha0 == "January" 
    $mes2 = "Enero"
    elsif fecha0 == "February" 
    $mes2 = "Febrero"
    elsif fecha0 == "March" 
    $mes2 ="Marzo"
    elsif fecha0 == "March" 
    $mes2 = "April"
    elsif fecha0 == "May" 
    $mes2 = "Mayo"
    elsif fecha0 == "June" 
    $mes2 = "Junio"
    elsif fecha0 == "July" 
    $mes2 = "Julio"
    elsif fecha0 == "August" 
    $mes2 = "Agosto"
    elsif fecha0 == "September" 
    $mes2 = "Septiembre"
    elsif fecha0 == "October" 
    $mes2 = "Octubre"
    elsif fecha0 == "November" 
    $mes2 = "Noviembre"
    elsif fecha0 == "December" 
    $mes2 = "Diciembre"
    end

 






    mi_fecha =  Time.now
      $mi_mes = mi_fecha.strftime("%B") 
      if $mi_mes == "January" 
      $month = "Enero"
      elsif $mi_mes == "February" 
      $month = "Febrero"
      elsif $mi_mes == "March" 
      $month ="Marzo"
      elsif $mi_mes == "March" 
      $month = "April"
      elsif $mi_mes == "May" 
      $month = "Mayo"
      elsif $mi_mes == "June" 
      $month = "Junio"
      elsif $mi_mes == "July" 
      $month = "Julio"
      elsif $mi_mes == "August" 
      $month = "Agosto"
      elsif $mi_mes == "September" 
      $month = "Septiembre"
      elsif $mi_mes == "October" 
      $month = "Octubre"
      elsif $mi_mes == "November" 
      $month = "Noviembre"
      elsif $mi_mes == "December" 
      $month = "Diciembre"
    end



    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => 'file_name',
        :template => 'historias_clinicas/pdfs/aerocivil.pdf.erb',
        :layout => 'pdf.html.erb',
        :show_as_html => params[:debug].present?
      end
    end

  end



  def procedimientos_medicos_enfermeria

    @historias_clinicas = HistoriaClinica.all
    @users = User.all
    @empresas = Empresa.all


    $varprocedimientos = params[:searchbox4]
    $varprocedimientos2 = params[:searchbox44]
    $aeropuertoNombre = params[:nombre]
    $aeropuertoId = $aeropuertoNombre[:id]


    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => 'file_name',
        :template => 'historias_clinicas/pdfs/procedimientos_medicos_enfermeria.pdf.erb',
        :layout => 'pdf.html.erb',
        :show_as_html => params[:debug].present?
      end
    end

  end


  def pacientes_atendidos_por_empresas

    @historias_clinicas = HistoriaClinica.all
    @users = User.all
    @empresas = Empresa.all
    $mivar = params[:searchbox]
    $mivar2 = params[:searchbox2]
    alejo = params[:nombre]
    $airport = alejo[:id]


    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => 'file_name',
        :template => 'historias_clinicas/pdfs/pacientes_atendidos_por_empresas.pdf.erb',
        :layout => 'pdf.html.erb',
        :show_as_html => params[:debug].present?
      end
    end

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historia_clinica
      @paciente = Paciente.find(params[:paciente_id])
      @historia_clinica = HistoriaClinica.find(params[:id]) if params[:id]

    end


    # Never trust parameters from the scary internet, only allow the white list through.
    # Never trust parameters from the scary internet, only allow the white list through.
    def historia_clinica_params
        params.require(:historia_clinica).permit!

    end







end
