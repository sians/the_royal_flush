class ChangeImagesName < ActiveRecord::Migration[5.2]
  def change
    rename_column :toilets, :images, :photo
  end
end
