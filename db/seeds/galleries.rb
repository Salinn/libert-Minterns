events = Event.all
photo_challenges = PhotoChallenge.all
galleries = [
  {
    name: 'Pick up soccer',  
    event: events[0] 
  },
  {
    name: 'Portsmouth market day',  
    event: events[1]
  },
  {
    name: 'Intern pick up volleyball',  
    event: events[2]
  },
  {
    name: 'Red Sox Gamey',  
    event: events[3]
  },
  {
    name: 'Week 1',  
    photo_challenge: photo_challenges[5]
  },
  {
    name: 'Week 2',  
    photo_challenge: photo_challenges[5]
  },
  {
    name: 'Week 3',  
    photo_challenge: photo_challenges[7]
  }
]
Gallery.delete_all
Gallery.create!(galleries)