class RenameSectionProgressesToSectionStatuses < ActiveRecord::Migration[4.2]
  def change
    rename_table :section_progresses, :section_statuses
  end
end
