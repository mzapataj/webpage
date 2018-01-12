class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :nombre
      t.string :apellido
      t.integer :cedula
      t.string :correoElectronico
      t.integer :telefono
      t.string :direccion

      t.timestamps
    end
  end
end
