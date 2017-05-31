class AddCantidadProcedimientosToNotasProgreso < ActiveRecord::Migration
  def change
    add_column :notas_progreso, :cantidad_procedimientos, :string
  end
end
