class CreateHistoriaFisicas < ActiveRecord::Migration
  def change
    create_table :historia_fisicas do |t|
      t.integer :user_id
      t.integer :paciente_id
      t.text :descripcion
      t.string :tipo
      t.string :adjunto

      t.timestamps null: false
    end
  end
end
