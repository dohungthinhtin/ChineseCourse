class DropCourseStatusTable < ActiveRecord::Migration[4.2]
  def change
    drop_table :course_statuses
  end
end
