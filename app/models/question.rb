class Question < ActiveRecord::Base
  
  attr_accessible :question, :video
  belongs_to :user
  has_many :answers, :dependent => :destroy
  
end