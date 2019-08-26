class CreateToilets < ActiveRecord::Migration[5.2]
  def change
    create_table :toilets do |t|
      t.string :address
      t.string :description
      t.boolean :available
      t.boolean :wifi
      t.boolean :reading_material
      t.boolean :air_con
      t.boolean :window
      t.boolean :floor_heating
      t.boolean :speakers
      t.string :images
      t.references :owner

      t.timestamps
    end
  end
end
