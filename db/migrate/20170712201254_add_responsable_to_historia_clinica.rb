class AddResponsableToHistoriaClinica < ActiveRecord::Migration
  def change
    add_column :historias_clinicas, :a_direccion_acompanante, :string
    add_column :historias_clinicas, :a_documento_acompanante, :string
    add_column :historias_clinicas, :a_nombre_responsable, :string
    add_column :historias_clinicas, :a_parentesco_responsable, :string
    add_column :historias_clinicas, :a_telefono_responsable, :string
    add_column :historias_clinicas, :a_direccion_responsable, :string
    add_column :historias_clinicas, :a_documento_responsable, :string
  end
end
