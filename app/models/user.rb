class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise  :database_authenticatable, 
          :recoverable, 
          :rememberable, 
          :trackable, 
          :validatable, 
          :timeoutable, 
          :confirmable,
          :invitable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :role, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  has_many :topics, :dependent => :destroy
  has_many :answers, :dependent => :destroy

  acts_as_voter
  
  before_create do 
    |user| user.role = "user" if user.role.nil?
  end

  def has_role?(r)
    self.role == r.to_s
  end

end
