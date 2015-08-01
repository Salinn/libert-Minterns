module StaticPagesHelper
  def up_voted(object)
    cache(object)
    @votes.where(rating: object.rating, vote_type: 'up').present? ? 'color: orange' : 'color: grey'
  end

  def down_voted(object)
    cache([object])
    @votes.where(rating: object.rating, vote_type: 'down').present? ? 'color: orange' : 'color: grey'
  end
end
