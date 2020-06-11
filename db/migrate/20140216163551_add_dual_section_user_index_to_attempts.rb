class AddDualSectionUserIndexToAttempts < ActiveRecord::Migration[4.2]
  def change
    add_index :attempts, [:section_id, :user_id]
  end
end
