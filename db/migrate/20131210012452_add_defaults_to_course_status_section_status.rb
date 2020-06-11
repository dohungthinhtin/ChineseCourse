class AddDefaultsToCourseStatusSectionStatus < ActiveRecord::Migration[4.2]
  def change
    change_column :course_statuses, :purchased_certificate, :boolean, default: false
    change_column :section_statuses, :completed_quiz, :boolean, default: false
  end
end
