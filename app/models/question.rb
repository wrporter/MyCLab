class Question < ActiveRecord::Base
  attr_accessible :correct_answer_id, :question, :quiz_id
  
  has_many :answers

  belongs_to :quiz
end
