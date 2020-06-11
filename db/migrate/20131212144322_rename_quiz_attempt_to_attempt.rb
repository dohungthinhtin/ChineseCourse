class RenameQuizAttemptToAttempt < ActiveRecord::Migration[4.2]
  def change
    rename_table :quiz_attempts, :attempts
  end
end
