class RemoveCourseCeuAddCeuCode < ActiveRecord::Migration[4.2]
  def change
    remove_column :courses, :ceu
    add_column :ceus, :code, :string
  end
end
