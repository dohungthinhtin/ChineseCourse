class RenameQuizResultsToResults < ActiveRecord::Migration[4.2]
  def change
    rename_table :quiz_results, :results
  end
end
