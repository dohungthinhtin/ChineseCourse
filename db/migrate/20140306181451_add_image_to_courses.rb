class AddImageToCourses < ActiveRecord::Migration[4.2]
  def change
    add_column :courses, :image, :string
  end
end
