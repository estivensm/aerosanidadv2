json.array!(@historia_fisicas) do |historia_fisica|
  json.extract! historia_fisica, :id, :user_id, :paciente_id, :descripcion, :tipo, :adjunto
  json.url historia_fisica_url(historia_fisica, format: :json)
end
