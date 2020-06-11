class AddCorrectToAnswers < ActiveRecord::Migration[4.2]
  def change
    add_column :answers, :correct, :boolean, default: false
  end
end
