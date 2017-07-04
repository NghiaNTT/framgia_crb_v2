class Ability
  include CanCan::Ability

  def initialize user
    user ||= NullUser.new

    can :manage, User, id: user.id
    can :manage, Calendar
    can :manage, Event
    can :show, Event
    can :manage, Organization, creator_id: user.id
    can :manage, UserOrganization
    can :manage, Team
    can :manage, Attendee
    cannot :destroy, User, id: user.id
  end
end
