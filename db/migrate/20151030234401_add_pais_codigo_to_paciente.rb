class AddPaisCodigoToPaciente < ActiveRecord::Migration
  def change
    add_column :pacientes, :pais_codigo, :string
  end
end
