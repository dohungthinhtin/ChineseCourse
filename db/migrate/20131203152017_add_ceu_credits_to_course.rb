class AddCeuCreditsToCourse < ActiveRecord::Migration[4.2]
  def change
    add_column :courses, :ceu, :integer
  end
end
