class DropSectionStatus < ActiveRecord::Migration[4.2]
  def change
    drop_table :section_statuses
  end
end
