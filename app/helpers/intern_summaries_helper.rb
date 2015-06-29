module InternSummariesHelper
  def get_tag_links(intern_summary)
    raw intern_summary.tag_list.map { |tag| link_to tag, tag_path(tag) }.join(', ')
  end
end
