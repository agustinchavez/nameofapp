class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.nil?
      can :read, Product
    elsif user.admin?
      can :manage, :all
    else
      can :read, Product
      can :manage, User, id: user.id
      can [ :update, :destroy ], Product, user_id: user.id
      # can :destroy, Product, user_id: user.id
    end
  end

end