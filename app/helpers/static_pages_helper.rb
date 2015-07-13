module StaticPagesHelper
  def faq_up_voted(object)
    @votes.where(rating: object.ratings.first, vote_type: 'up').present? ? 'color: orange' : 'color: grey'
  end

  def faq_down_voted(object)
    @votes.where(rating: object.ratings.first, vote_type: 'down').present? ? 'color: orange' : 'color: grey'
  end
  
  def answer_up_voted(object)
    @votes.where(rating: object.rating, vote_type: 'up').present? ? 'color: orange' : 'color: grey'
  end

  def answer_down_voted(object)
    @votes.where(rating: object.rating, vote_type: 'down').present? ? 'color: orange' : 'color: grey'
  end
end
