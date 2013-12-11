class Answer < ActiveRecord::Base
  
  attr_accessible :answer, :topic_id

  belongs_to :user
  belongs_to :topic

  validates :answer, presence: true

end
