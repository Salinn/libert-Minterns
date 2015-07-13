years = Year.all
photo_challenges = [
  {
    title: 'Week 1',
    theme: 'School Pride',
    year: years[1]
  },
  {
    title: 'Week 2',
    theme: 'Favorite Liberty Employee',
    year: years[1]
  },
  {
    title: 'Week 3',
    theme: 'Favorite Spot in Liberty',
    year: years[1]
  },
  {
    title: 'Week 4',
    theme: 'Serve with Liberty',
    year: years[1]
  },
  {
    title: 'Week 5',
    theme: 'What is there to do in your area?',
    year: years[1]
  },
  {
    title: 'Week 1',
    theme: 'Looking forward most to when going back to collage',
    year: years[0]
  },
  {
    title: 'Week 2',
    theme: 'Serve with Liberty',
    year: years[0]
  },
  {
    title: 'Week 3',
    theme: 'Favorite meomry so far',
    year: years[0]
  }
]
PhotoChallenge.delete_all
PhotoChallenge.create!(photo_challenges)