class RenameResourceImageToPhoto < ActiveRecord::Migration[4.2]
  def change
      rename_column :resources, :image, :photo
  end
end
