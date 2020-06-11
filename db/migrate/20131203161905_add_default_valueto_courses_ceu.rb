class AddDefaultValuetoCoursesCeu < ActiveRecord::Migration[4.2]
  def change
    change_column :courses, :ceu, :integer, default: 0
  end
end
