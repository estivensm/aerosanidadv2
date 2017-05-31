json.array!(@emergencias) do |emergencia|
  json.extract! emergencia, :id, :user_id, :aeropuerto_id, :fecha_novedad, :emergencias, :notas_de_la_emergencia
  json.url emergencia_url(emergencia, format: :json)
end
