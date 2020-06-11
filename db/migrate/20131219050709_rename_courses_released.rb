class RenameCoursesReleased < ActiveRecord::Migration[4.2]
  def change
    rename_column :courses, :released?, :released
    rename_column :attempts, :passed?, :passed
  end
end
