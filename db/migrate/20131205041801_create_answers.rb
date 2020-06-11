class CreateAnswers < ActiveRecord::Migration[4.2]
  def change
    create_table :answers do |t|
      t.string :content
      t.references :question, index: true

      t.timestamps
    end
  end
end
