class CreateCie10s < ActiveRecord::Migration
  def change
    create_table :cie10s do |t|
      t.string :familia
      t.string :codigo
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
