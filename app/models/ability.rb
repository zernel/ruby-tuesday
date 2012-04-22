class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :read, :all

    if user.admin?
      can :access, :rails_admin
      can :dashboard
      can :manage, :all
    end
  end
end
