class CreateAeropuertos < ActiveRecord::Migration
  def change
    create_table :aeropuertos do |t|
      t.string :nombre
      t.references :ciudad, index: true, foreign_key: true
      t.string :departamento

      t.timestamps null: false
    end
  end
end
