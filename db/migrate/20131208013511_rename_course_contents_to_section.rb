class RenameCourseContentsToSection < ActiveRecord::Migration[4.2]
  def change
    rename_table :course_contents, :section
  end
end
