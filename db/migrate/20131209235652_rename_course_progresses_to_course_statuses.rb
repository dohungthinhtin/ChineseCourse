class RenameCourseProgressesToCourseStatuses < ActiveRecord::Migration[4.2]
  def change
    rename_table :course_progresses, :course_statuses
  end
end
