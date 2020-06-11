class CreateSectionProgresses < ActiveRecord::Migration[4.2]
  def change
    create_table :section_progresses do |t|
      t.references :user, index: true
      t.references :course, index: true
      t.references :section, index: true
      t.boolean :completed_quiz

      t.timestamps
    end
  end
end
