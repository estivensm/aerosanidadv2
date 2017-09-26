class AddDomicilioToHistoriaClinica < ActiveRecord::Migration
  def change
    add_column :historias_clinicas, :direccion_residencia, :string
    add_column :historias_clinicas, :ciudad_residencia, :string
    add_column :historias_clinicas, :pais_residencia, :string
  end
end
