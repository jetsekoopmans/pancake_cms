class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      can :manage, :all

      if user.role != "superadmin"
        cannot :manage, [User]

      end
    end
  end
end