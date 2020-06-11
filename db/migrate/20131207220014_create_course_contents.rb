class CreateCourseContents < ActiveRecord::Migration[4.2]
  def change
    create_table :course_contents do |t|
      t.integer :sequence
      t.references :course, index: true
      t.references :video, index: true
      t.references :quiz, index: true

      t.timestamps
    end
  end
end
