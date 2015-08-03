class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user
    if user.has_role?(:admin)
      can :manage, :all
    end

    #Everyone
    can [:show], Gallery
    can [:create], Question
    can [:index], InternSummary
    can [:create, :update], Rating
    can [:show_event_photos], Event
    can [:upvote, :downvote], Answer
    can [:update], User, :id => user.id
    can [:create, :update], VoteTracker
    can [:create, :upvote, :downvote], Faq
    can [:index, :photo_challenge_gallery, :create], PhotoChallenge

    #Intern
    if user.has_role?(:intern)
      can [:index, :show], User
      can [:create], Rsvp
      can [:create], Photo
      can [:create, :update], Comment, :user_id => user.id
      can [:index, :show, :create], Event
      can [:create], InternSummary
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
      can :all, WinningPhoto
      can [:show, :read, :new, :create, :update], Year
    end
  end
end
