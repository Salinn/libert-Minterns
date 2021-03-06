faqs = Faq.all
ratings = [
  {
    faq: faqs[1], #Questions being rated
    up_votes: 3,
    down_votes: 5,
    total: -2
  },
  {
    faq: faqs[2],
    up_votes: 33,
    down_votes: 5,
    total: 28
  },
  {
    faq: faqs[3],
    up_votes: 13,
    down_votes: 5,
    total: 8
  },
  {
    faq: faqs[4],
    up_votes: 31,
    down_votes: 15,
    total: 16
  },
  {
    faq: faqs[5],
    up_votes: 3,
    down_votes: 10,
    total: -7
  },
  {
    faq: faqs[6],
    up_votes: 300,
    down_votes: 5,
    total: 255
  },
  {
    #Answers being rated
    up_votes: 8,
    down_votes: 5,
    total: 3
  },
  {
    up_votes: 33,
    down_votes: 31,
    total: 2
  },
  {
    up_votes: 93,
    down_votes: 5,
    total: 88
  },
  {
    up_votes: 13,
    down_votes: 7,
    total: 5
  },
  {
    up_votes: 30,
    down_votes: 100,
    total: -70
  },
  {
    up_votes: 30,
    down_votes: 5,
    total: 25
  }
]
Rating.delete_all
Rating.create!(ratings)