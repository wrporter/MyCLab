class QuestionScore < ActiveRecord::Base
  attr_accessible :ls, :score, :test_id, :user_id
end
