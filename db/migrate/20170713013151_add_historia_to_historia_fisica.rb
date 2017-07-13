class AddHistoriaToHistoriaFisica < ActiveRecord::Migration
  def change
    add_column :historia_fisicas, :historia_clinica_id, :integer
  end
end
