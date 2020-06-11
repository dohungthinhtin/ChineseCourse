class CourseChangeUsersIdToSingular < ActiveRecord::Migration[4.2]
  def change
      rename_column :courses, :users_id, :user_id
  end
end
