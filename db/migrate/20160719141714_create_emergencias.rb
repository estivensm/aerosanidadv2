class CreateEmergencias < ActiveRecord::Migration
  def change
    create_table :emergencias do |t|
      t.references :user, index: true, foreign_key: true
      t.references :aeropuerto, index: true, foreign_key: true
      t.date :fecha_novedad
      t.string :emergencias
      t.text :notas_de_la_emergencia

      t.timestamps null: false
    end
  end
end
