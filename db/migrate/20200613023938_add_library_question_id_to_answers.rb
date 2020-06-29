class AddLibraryQuestionIdToAnswers < ActiveRecord::Migration[6.0]
  def change
    add_reference :answers, :library_question, index: true
  end
end
