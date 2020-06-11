class AddDualUserCourseIndexToCertificates < ActiveRecord::Migration[4.2]
  def change
    add_index :certificates, [:user_id, :course_id]
  end
end
