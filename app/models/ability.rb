class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new #Guest
    if user.role == "admin"
      can :manage, :all 
    elsif user.role == "recruiter"
      can :manage, :opportunities
    else
      can :read, :all
    end
  end
#    can :read, :all
#    if user.role? :admin
#      can :manage, :all
#    else
#      can :read, :all
#    end
#  end
end