class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :read, User, user: user
  end
end
