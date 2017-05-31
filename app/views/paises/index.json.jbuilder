json.array!(@paises) do |pais|
  json.extract! pais, :id, :nombre
  json.url pais_url(pais, format: :json)
end
