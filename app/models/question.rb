class Question < ActiveRecord::BASE

  belongs_to :user
  has_many :answers, :dependent => :destroy
end