class AddCourseIdToAttempt < ActiveRecord::Migration[4.2]
  def change
    add_reference :attempts, :courses, index: true
  end
end
