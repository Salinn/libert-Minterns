json.array!(@photos) do |photo|
  json.extract! photo, :id, :picture, :comment, :gallery_id, :photo_challenge_id, :winning_photo_id
  json.url photo_url(photo, format: :json)
end
