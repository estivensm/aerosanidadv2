json.array!(@procedimientos) do |procedimiento|
  json.extract! procedimiento, :id, :tratamiento, :via_acceso, :descripcion, :glucometria1, :glucometria2, :electrocardiograma
  json.url procedimiento_url(procedimiento, format: :json)
end
