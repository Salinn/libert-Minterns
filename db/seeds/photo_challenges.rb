years = Year.all
photo_challenges = [
  {
    title: 'Week 1',
    theme: 'SHOW OFF YOUR CAMPUS PRIDE!',
    year: years[1]
  },
  {
    title: 'Week 2',
    theme: 'WHAT ARE YOU DOING IN YOUR CITY?',
    year: years[1]
  },
  {
    title: 'Week 3',
    theme: 'SHOW YOURSELF IN ACTION AT LIBERTY',
    year: years[1]
  },
  {
    title: 'Week 4',
    theme: 'POST A PHOTO WITH YOUR MANAGER!',
    year: years[1]
  },
  {
    title: 'Week 5',
    theme: 'POST A GROUP PHOTO WITH YOUR FELLOW INTERNS!',
    year: years[1]
  },
  {
    title: 'Week 6',
    theme: 'POST A GROUP PHOTO WITH YOUR FELLOW INTERNS!',
    year: years[1]
  }
]
PhotoChallenge.delete_all
PhotoChallenge.create!(photo_challenges)