class AddPTipoEdadToHistoriaClinica < ActiveRecord::Migration
  def change
    add_column :historias_clinicas, :p_tipo_edad, :string
  end
end
