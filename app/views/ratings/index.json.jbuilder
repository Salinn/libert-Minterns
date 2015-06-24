json.array!(@ratings) do |rating|
  json.extract! rating, :id, :up_votes, :down_votes, :total
  json.url rating_url(rating, format: :json)
end
