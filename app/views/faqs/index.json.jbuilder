json.array!(@faqs) do |faq|
  json.extract! faq, :id, :rating_id, :question_id, :user_id, :faq_section_id
  json.url faq_url(faq, format: :json)
end
