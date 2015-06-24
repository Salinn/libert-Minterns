json.array!(@questions) do |question|
  json.extract! question, :id, :title, :content, :user_id, :faq_id
  json.url question_url(question, format: :json)
end
