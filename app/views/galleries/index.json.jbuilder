json.array!(@galleries) do |gallery|
  json.extract! gallery, :id, :name, :event_id, :photo_challenge_id
  json.url gallery_url(gallery, format: :json)
end
