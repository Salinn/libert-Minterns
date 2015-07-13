module StaticPagesHelper
  def up_voted(faq)
    @votes.where(rating: faq.ratings.first, vote_type: 'up').present? ? 'color: orange' : 'color: grey'
  end

  def down_voted(faq)
    @votes.where(rating: faq.ratings.first, vote_type: 'down').present? ? 'color: orange' : 'color: grey'
  end
end
