json.array!(@rsvp_statuses) do |rsvp_status|
  json.extract! rsvp_status, :id, :rsvp_id
  json.url rsvp_status_url(rsvp_status, format: :json)
end
