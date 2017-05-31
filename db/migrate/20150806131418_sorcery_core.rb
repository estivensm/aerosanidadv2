class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :aprobado_login
      t.string   :email,            :null => false
      t.string   :nombre_usuario
      t.string   :nombres
      t.string   :apellidos
      t.string   :tipo_documento
      t.string   :documento
      t.string   :registro_medico
      t.integer  :rol_id
      t.string :crypted_password
      t.string :salt

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end