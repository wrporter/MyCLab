class Quiz < ActiveRecord::Base
  attr_accessible :topic

  has_many :quiz_scores
  has_many :questions
end
