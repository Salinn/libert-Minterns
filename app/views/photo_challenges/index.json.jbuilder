json.array!(@photo_challenges) do |photo_challenge|
  json.extract! photo_challenge, :id, :title, :theme, :year_id
  json.url photo_challenge_url(photo_challenge, format: :json)
end
