class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user
    if user.has_role?(:admin)
      can :manage, :all
    end

    #Everyone
    can [:show_event_photos], Event
    can [:show, :read], FaqSection
    can [:show, :read], Gallery
    can [:show, :read], User
    can [:show, :read], Photo
    can [:show, :read, :new, :create], Question
    can [:show, :read, :upvote, :downvote], Answer
    can [:show, :read, :new, :create, :update], Rating
    can [:show, :read, :new, :create, :update], VoteTracker
    can [:show, :read, :new, :create, :update], InternSummary
    can [:show, :read, :photo_challenge_gallery], PhotoChallenge
    can [:show, :read, :new, :create, :upvote, :downvote], Faq

    can [:update], User do | current_user |
      current_user.try(:user) == user || user.role?(:hr)
    end

    #Intern
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

    #HR
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
