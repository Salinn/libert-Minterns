json.array!(@comments) do |comment|
  json.extract! comment, :id, :title, :content, :user_id, :event_id
  json.url comment_url(comment, format: :json)
end
