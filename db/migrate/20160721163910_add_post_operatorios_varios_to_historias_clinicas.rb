class AddPostOperatoriosVariosToHistoriasClinicas < ActiveRecord::Migration
  def change
    add_column :historias_clinicas, :post_operatorios_varios, :string
  end
end
