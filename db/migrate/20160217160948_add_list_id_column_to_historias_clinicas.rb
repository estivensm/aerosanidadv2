class AddListIdColumnToHistoriasClinicas < ActiveRecord::Migration
  def change
    add_column :historias_clinicas, :latitude, :float
    add_column :historias_clinicas, :longitude, :float
    add_column :historias_clinicas, :address, :string

  end
end
