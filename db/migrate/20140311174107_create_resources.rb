class CreateResources < ActiveRecord::Migration[4.2]
  def change
    create_table :resources do |t|
      t.references :course, index: true
      t.string :title
      t.string :image
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
