class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard                  # allow access to dashboard
      if user.role == "superadmin"
        can :manage, :all             # allow superadmins to do anything
      elsif 
        cannot :manage, :all
      end
    end
  end
end
