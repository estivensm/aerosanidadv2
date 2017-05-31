class CreateEpses < ActiveRecord::Migration
  def change
    create_table :epses do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
