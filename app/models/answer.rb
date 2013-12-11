class Answer < ActiveRecord::Base
  acts_as_voteable
  
  attr_accessible :answer, :topic_id

  belongs_to :user
  belongs_to :topic

  validates :answer, presence: true

end
