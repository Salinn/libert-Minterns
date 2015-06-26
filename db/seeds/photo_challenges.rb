photo_challenges = [
  {
    title: 'Week 1',
    theme: 'School Pride',
    year_id: 2
  },
  {
    title: 'Week 2',
    theme: 'Favorite Liberty Employee',
    year_id: 2
  },
  {
    title: 'Week 3',
    theme: 'Favorite Spot in Liberty',
    year_id: 2
  },
  {
    title: 'Week 4',
    theme: 'Serve with Liberty',
    year_id: 2
  },
  {
    title: 'Week 5',
    theme: 'What is there to do in your area?',
    year_id: 2
  },
  {
    title: 'Week 1',
    theme: 'Looking forward most to when going back to collage',
    year_id: 1
  },
  {
    title: 'Week 2',
    theme: 'Serve with Liberty',
    year_id: 1
  },
  {
    title: 'Week 3',
    theme: 'Favorite meomry so far',
    year_id: 1
  }
]
PhotoChallenge.delete_all
PhotoChallenge.create!(photo_challenges)