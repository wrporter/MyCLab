class User < ActiveRecord::Base
  attr_accessible :last_login, :real_name, :user_name, :password
  
  has_many :quiz_scores

  validates :real_name, :presence => true
  validates :user_name, :presence => true
  validates :password, 	:presence => true, :length => {:minimum => 4}

end
