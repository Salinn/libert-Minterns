faq_sections = [
  {
    name: 'General'  
  },
  {
    name: 'What to expect'  
  },
  {
    name: 'What shoud I know?'  
  },
  {
    name: 'Issues and Contacting us'  
  }
]
FaqSection.delete_all
FaqSection.create!(faq_sections)