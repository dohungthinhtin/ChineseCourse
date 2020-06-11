class AddPassedToAttempt < ActiveRecord::Migration[4.2]
  def change
    add_column :attempts, :passed, :boolean, default: false
  end
end
