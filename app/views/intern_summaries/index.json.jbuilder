json.array!(@intern_summaries) do |intern_summary|
  json.extract! intern_summary, :id, :title, :content, :content, :user_id
  json.url intern_summary_url(intern_summary, format: :json)
end
