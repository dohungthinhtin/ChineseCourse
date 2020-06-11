class RenameResourcePhotoToImage < ActiveRecord::Migration[4.2]
  def change
    rename_column :resources, :photo, :image
  end
end
