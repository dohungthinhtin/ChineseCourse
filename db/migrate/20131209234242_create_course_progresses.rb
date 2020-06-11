class CreateCourseProgresses < ActiveRecord::Migration[4.2]
  def change
    create_table :course_progresses do |t|
      t.references :user, index: true
      t.references :course, index: true
      t.boolean :purchased_certificate

      t.timestamps
    end
  end
end
