class AddPaisCodigoToCiudad < ActiveRecord::Migration
  def change
    add_column :ciudades, :pais_codigo, :string
  end
end
