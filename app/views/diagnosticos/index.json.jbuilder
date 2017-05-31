json.array!(@diagnosticos) do |diagnostico|
  json.extract! diagnostico, :id, :familia, :codigo, :simbolo, :descripcion, :codigo, :historia_clinica_id
  json.url diagnostico_url(diagnostico, format: :json)
end
