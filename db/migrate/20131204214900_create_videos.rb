class CreateVideos < ActiveRecord::Migration[4.2]
  def change
    create_table :videos do |t|
      t.string :name
      t.text :description
      t.float :length
      t.string :presenter
      t.string :url

      t.timestamps
    end
  end
end
