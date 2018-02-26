class AddStateToAeropuerto < ActiveRecord::Migration
  def change
    add_column :aeropuertos, :state, :boolean
  end
end
