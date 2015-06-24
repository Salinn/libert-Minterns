json.array!(@faq_sections) do |faq_section|
  json.extract! faq_section, :id, :name
  json.url faq_section_url(faq_section, format: :json)
end
