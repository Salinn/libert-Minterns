json.array!(@events) do |event|
  json.extract! event, :id, :name, :location, :start_daettime, :end_datetime, :cost, :reoccur
  json.url event_url(event, format: :json)
end
