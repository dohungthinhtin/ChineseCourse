class CreateQuizzes < ActiveRecord::Migration[4.2]
  def change
    create_table :quizzes do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
