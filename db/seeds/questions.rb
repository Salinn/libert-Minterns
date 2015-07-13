users = User.all
faqs = Faq.all

questions = [
  {
    title: 'Question 1',
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris in tellus eget erat dictum ultrices sed vitae purus. In lobortis.',
    user: users[1],
    faq: faqs[0]
  },
  {
    title: 'Question 2',
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris in tellus eget erat dictum ultrices sed vitae purus. In lobortis.',
    user: users[4],
    faq: faqs[1]
  },
  {
    title: 'Question 3',
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris in tellus eget erat dictum ultrices sed vitae purus. In lobortis.',
    user: users[3],
    faq: faqs[2]
  },
  {
    title: 'Question 4',
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris in tellus eget erat dictum ultrices sed vitae purus. In lobortis.',
    user: users[1],
    faq: faqs[3]
  },
  {
    title: 'Question 5',
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris in tellus eget erat dictum ultrices sed vitae purus. In lobortis.',
    user: users[1],
    faq: faqs[4]
  },
  {
    title: 'Question 6',
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris in tellus eget erat dictum ultrices sed vitae purus. In lobortis.',
    user: users[1],
    faq: faqs[5]
  },
]
Question.delete_all
Question.create!(questions)