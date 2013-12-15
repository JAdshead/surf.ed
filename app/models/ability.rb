class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.has_role? :admin
      can :manage, :all
      can :vote_up, :all
      can :vote_down, :all

    elsif user.has_role? :user

      can :read, :all
      can :vote_up, :all
      can :vote_down, :all

      can :manage, User do |user_object|
          user_object == user
      end

      can :create, Topic
      can :upload, Topic
      can :edit, Topic do |user|
        user == topic.user
      end

      can :create, Answer
      can :manage, Answer do |answer|
        answer.user == user
      end
    else
      can :read, :all
      can :create, User
    end
  end
end