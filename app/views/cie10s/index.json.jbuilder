json.array!(@cie10s) do |cie10|
  json.extract! cie10, :id, :familia, :codigo, :descripcion
  json.url cie10_url(cie10, format: :json)
end
