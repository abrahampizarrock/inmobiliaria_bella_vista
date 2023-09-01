class CreateLandings < ActiveRecord::Migration[7.0]
  def change
    create_table :landings do |t|
      t.string :index

      t.timestamps
    end
  end
end
