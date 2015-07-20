users = User.all
faqs = Faq.all

questions = [
  {
    title: 'Question 1',
    content: 'Who developed the first model airplane?',
    user: users[1],
    faq: faqs[0]
  },
  {
    title: 'Question 2',
    content: 'Why?',
    user: users[4],
    faq: faqs[1]
  },
  {
    title: 'Question 3',
    content: 'What should I wear to my first day of work?',
    user: users[3],
    faq: faqs[2]
  },
  {
    title: 'Question 4',
    content: 'Where are so-called "Under the bed" monsters expected to migrate to, with the growing tendency of bedrooms to have beds on the floor and the increase of "couch sleeping" mentality?',
    user: users[1],
    faq: faqs[3]
  },
  {
    title: 'Question 5',
    content: "If Liberty hadn't met Mutual on that rainy night, what would that have been like for Liberty Mutual?",
    user: users[1],
    faq: faqs[4]
  },
  {
    title: 'Question 6',
    content: 'How early should I arrive on an average day of work?',
    user: users[1],
    faq: faqs[5]
  }
]
Question.delete_all
Question.create!(questions)