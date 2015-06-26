faqs = [
  {
    rating_id: 1,
    question_id: 1,
    user_id: 1,
    faq_section_id: 1
  },
  {
    rating_id: 2,
    question_id: 2,
    user_id: 2,
    faq_section_id: 1
  },
  {
    rating_id: 3,
    question_id: 3,
    user_id: 3,
    faq_section_id: 1
  },
  {
    rating_id: 4,
    question_id: 4,
    user_id: 1,
    faq_section_id: 2
  },
  {
    rating_id: 5,
    question_id: 5,
    user_id: 4,
    faq_section_id: 2
  },
  {
    rating_id: 6,
    question_id: 6,
    user_id: 2,
    faq_section_id: 3
  },
  {
    rating_id: 7,
    question_id: 7,
    user_id: 5,
    faq_section_id: 3
  },
  {
    rating_id: 8,
    question_id: 8,
    user_id: 3,
    faq_section_id: 4
  },
  {
    rating_id: 9,
    question_id: 9,
    user_id: 6,
    faq_section_id: 4
  }
]
Faq.delete_all
Faq.create!(faqs)