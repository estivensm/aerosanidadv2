class AddS1ValidationToHistoriasClinicas < ActiveRecord::Migration
  def change
    add_column :historias_clinicas, :s2_validation, :boolean
    add_column :historias_clinicas, :s3_validation, :boolean
    add_column :historias_clinicas, :s4_validation, :boolean
    add_column :historias_clinicas, :s5_validation, :boolean
  end
end
