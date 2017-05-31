class CreateProcedimientos < ActiveRecord::Migration
  def change
    create_table :procedimientos do |t|
      t.string :tratamiento
      t.string :via_acceso
      t.text :descripcion
      t.references :historia_clinica, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
