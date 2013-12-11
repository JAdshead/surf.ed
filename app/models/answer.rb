class Answer < ActiveRecord::Base
  
  attr_accessible :answer

  belongs_to :user
  belongs_to :topic

end