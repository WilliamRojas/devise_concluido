class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new

        if user.role == "manager"
            can :manage, :all

        elsif user.role == "admin"
            alias_action :create, :read, :update, :to => :cru
            can :cru, Cliente

        elsif user.role == "usuario"
            alias_action :create, :read, :to => :cr
            can :cr, Cliente
        end
  end
end