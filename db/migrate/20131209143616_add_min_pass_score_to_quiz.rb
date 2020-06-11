class AddMinPassScoreToQuiz < ActiveRecord::Migration[4.2]
  def change
    add_column :quizzes, :num_questions_to_show, :integer
    add_column :quizzes, :passing_score, :integer
  end
end
