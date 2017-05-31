class Dashboard1Controller < ApplicationController
  before_action :authorize

  def graficas
  @historias_clinicas = HistoriaClinica.all
  @aeropuertos = Aeropuerto.all
       
  @nombre_aeropuerto = HistoriaClinica.joins(:aeropuerto)
  .group("aeropuertos.nombre")
  .where(:aeropuertos => { :id => [193, 196, 271, 309, 207, 184, 280, 217, 318, 308, 343, 221, 197, 191]} ).count

	@aaa = HistoriaClinica.group("id").count

	@edad0 = HistoriaClinica.where(:p_tipo_edad => [" meses", " mes"]).count
	@edad1 = HistoriaClinica.where(:p_edad => 1..5).count
	@edad2 = HistoriaClinica.where(:p_edad => 6..11).count
	@edad3 = HistoriaClinica.where(:p_edad => 12..29).count
	@edad4 = HistoriaClinica.where(:p_edad => 30..44).count
	@edad5 = HistoriaClinica.where(:p_edad => 45..60).count
	@edad6 = HistoriaClinica.where("p_edad >= ?", 60).count

	@edad = {"Menores a 1 año" => @edad0, "1 a 5 Años" => @edad1,
    "6 a 11 Años" => @edad2, "12 a 29 Años" => @edad3, "30 a 44 Años" => @edad4,
    "45 a 60 Años" => @edad5, "Mayor a 60 Años" => @edad6 }
  end

  def mapa
    @historias_clinicas = HistoriaClinica.all
    @aeropuertos = Aeropuerto.all

    @hash = Gmaps4rails.build_markers(@historias_clinicas) do |historia_clinica, marker|
      marker.lat historia_clinica.latitude
      marker.lng historia_clinica.longitude
    end

  end
end
