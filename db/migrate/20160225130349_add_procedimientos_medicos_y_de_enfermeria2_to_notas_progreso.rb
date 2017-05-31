class AddProcedimientosMedicosYDeEnfermeria2ToNotasProgreso < ActiveRecord::Migration
  def change
    add_column :notas_progreso, :procedimientos_medicos_y_de_enfermeria2, :string
  end
end
