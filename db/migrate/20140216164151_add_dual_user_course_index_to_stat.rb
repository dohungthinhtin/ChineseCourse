class AddDualUserCourseIndexToStat < ActiveRecord::Migration[4.2]
  def change
    add_index :stats, [:user_id, :course_id]
  end
end
