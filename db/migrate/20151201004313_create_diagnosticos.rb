class CreateDiagnosticos < ActiveRecord::Migration
  def change
    create_table :diagnosticos do |t|
      t.references :historia_clinica, index: true, foreign_key: true
      t.references :cie10, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
