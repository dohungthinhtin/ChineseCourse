class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :library_question
  default_scope { order('id ASC') }
end
