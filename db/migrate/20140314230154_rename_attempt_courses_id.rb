class RenameAttemptCoursesId < ActiveRecord::Migration[4.2]
  def change
    rename_column :attempts, :courses_id, :course_id
  end
end
