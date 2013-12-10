class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    if user.has_role? :admin
      can :manage, :all

    elsif user.has_role? :user
      can :read, :all

      can :manage, User do |user_object|
          user_object == user
      end

      can :create, Question
      can :edit, Question do |user|
        question.user == user
      end
    else
      can :read, :all
      can :create, User
    end
  end
end