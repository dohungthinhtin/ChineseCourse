class AddDefaultsToQuizFields < ActiveRecord::Migration[4.2]
  def change
    change_column :quizzes, :passing_score, :integer, default: 70
    change_column :quizzes, :num_questions_to_show, :integer, default: 10
  end
end
