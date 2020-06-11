class CreateCeus < ActiveRecord::Migration[4.2]
  def change
    create_table :ceus do |t|
      t.references :course, index: true
      t.string :organization
      t.text :name
      t.float :credit

      t.timestamps
    end
  end
end
