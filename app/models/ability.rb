class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user
    if user.has_role?(:admin)
      can :manage, :all
    end

    #Everyone
    can [:show_event_photos], Event
    can [:show], Gallery
    can [:create], Question
    can [:upvote, :downvote], Answer
    can [:create, :update], Rating
    can [:create, :update], VoteTracker
    can [:index], InternSummary
    can [:index, :photo_challenge_gallery], PhotoChallenge
    can [:create, :upvote, :downvote], Faq

    can [:update], User do | current_user |
      current_user.try(:user) == user || user.role?(:hr)
    end

    #Intern
    if user.has_role?(:intern)
      can [:show, :read, :new, :create], Rsvp
      can [:show, :read, :new, :create, :update], Photo do |photo|
        photo.try(:user) == user || user.role?(:hr)
      end
      can [:show, :read, :new, :create, :update], Comment do |comment|
        comment.try(:user) == user || user.role?(:hr)
      end
      can [:show, :read, :new, :create, :update], Event do |event|
        event.try(:user) == user || user.role?(:hr)
      end
      can [:show, :read, :new, :create, :update], InternSummary do |summary|
        summary.try(:user) == user || user.role?(:hr)
      end
    end

    #HR
    if user.has_role?(:hr)
      can [:show, :read, :new, :create, :update], Answer
      can [:show, :read, :new, :create, :update], College
      can [:show, :read, :new, :create, :update], Comment
      can [:show, :read, :new, :create, :update], Event
      can [:show, :read, :new, :create, :update], FaqSection
      can [:show, :read, :new, :create, :update], Faq
      can [:show, :read, :new, :create, :update], Gallery
      can [:show, :read, :new, :create, :update], InternSummary
      can [:show, :read, :new, :create, :update], Major
      can [:show, :read, :new, :create, :update], Photo
      can [:show, :read, :new, :create, :update], PhotoChallenge
      can [:show, :read, :new, :create, :update], Rsvp
      can [:show, :read, :new, :create, :update], Question
      can [:show, :read, :new, :create, :update], WinningPhoto
      can [:show, :read, :new, :create, :update], Year
    end
  end
end
