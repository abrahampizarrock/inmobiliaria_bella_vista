class CreateApartments < ActiveRecord::Migration[7.0]
  def change
    create_table :apartments do |t|
      t.string :nombre
      t.string :modalidad
      t.integer :habitaciones
      t.integer :baños
      t.decimal :precio

      t.timestamps
    end
  end
end

