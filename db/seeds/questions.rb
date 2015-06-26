questions = [
  {
    title: 'Question 1',
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris in tellus eget erat dictum ultrices sed vitae purus. In lobortis.',
    user_id: 1,
    faq_id: 1
  },
  {
    title: 'Question 2',
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris in tellus eget erat dictum ultrices sed vitae purus. In lobortis.',
    user_id: 5,
    faq_id: 2
  },
  {
    title: 'Question 3',
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris in tellus eget erat dictum ultrices sed vitae purus. In lobortis.',
    user_id: 3,
    faq_id: 3
  },
  {
    title: 'Question 4',
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris in tellus eget erat dictum ultrices sed vitae purus. In lobortis.',
    user_id: 2,
    faq_id: 4
  },
  {
    title: 'Question 5',
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris in tellus eget erat dictum ultrices sed vitae purus. In lobortis.',
    user_id: 1,
    faq_id: 5
  },
  {
    title: 'Question 6',
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris in tellus eget erat dictum ultrices sed vitae purus. In lobortis.',
    user_id: 4,
    faq_id: 6
  },
]
Question.delete_all
Question.create!(questions)