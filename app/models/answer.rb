class Answer < ActiveRecord::BASE
  
  belongs_to :user
  belongs_to :question

end