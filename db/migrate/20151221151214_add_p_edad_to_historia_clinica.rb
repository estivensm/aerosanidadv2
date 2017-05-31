class AddPEdadToHistoriaClinica < ActiveRecord::Migration
  def change
    add_column :historias_clinicas, :p_edad, :integer
  end
end
