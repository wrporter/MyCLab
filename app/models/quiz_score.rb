class QuizScore < ActiveRecord::Base
  attr_accessible :score, :quiz_id, :user_id

  belongs_to :user
  belongs_to :quiz
end
