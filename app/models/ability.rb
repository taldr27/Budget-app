class Ability
  include CanCan::Ability

  def initialize(user)
    return unless current_user.present?

    can(:manage, Group, user:)
    can(:manage, Deal, user:)

    can :manage, DealGroup do |group_deal|
      group_deal.group.user == user
    end
    # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
  end
end
