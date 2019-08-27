class AddNameToToilets < ActiveRecord::Migration[5.2]
  def change
    add_column :toilets, :name, :string
  end
end
