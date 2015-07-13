faq_sections = FaqSection.all
faqs = [
  {
    faq_section: faq_sections[0]
  },
  {
    faq_section: faq_sections[0]
  }, 
  {
    faq_section: faq_sections[0]
  },
  {
    faq_section: faq_sections[1]
  },
  {
    faq_section: faq_sections[2]
  },
  {
    faq_section: faq_sections[3]
  }
]
Faq.delete_all
Faq.create!(faqs)