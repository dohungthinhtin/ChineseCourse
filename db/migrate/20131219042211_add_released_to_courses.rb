class AddReleasedToCourses < ActiveRecord::Migration[4.2]
  def change
    add_column :courses, :released?, :boolean, default: false
    rename_column :attempts, :passed, :passed?
  end
end
