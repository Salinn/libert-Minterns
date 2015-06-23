json.array!(@winning_photos) do |winning_photo|
  json.extract! winning_photo, :id, :photo_challenge_id, :reason
  json.url winning_photo_url(winning_photo, format: :json)
end
