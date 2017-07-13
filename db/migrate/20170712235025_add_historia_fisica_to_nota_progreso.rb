class AddHistoriaFisicaToNotaProgreso < ActiveRecord::Migration
  def change
    add_column :notas_progreso, :historia_fisica_id, :integer
  end
end
