class AddYoutubeIdToVideo < ActiveRecord::Migration[4.2]
  def change
    add_column :videos, :youtube_id, :string
    add_index :videos, :youtube_id
  end
end
