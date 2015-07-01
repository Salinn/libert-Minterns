galleries = [
  {
    name: 'Pick up soccer',  
    event_id: 1
  },
  {
    name: 'Portsmouth market day',  
    event_id: 2
  },
  {
    name: 'Intern pick up volleyball',  
    event_id: 3
  },
  {
    name: 'Red Sox Gamey',  
    event_id: 4
  },
  {
    name: 'Week 1',  
    photo_challenge_id: 6
  },
  {
    name: 'Week 2',  
    photo_challenge_id: 7
  },
  {
    name: 'Week 3',  
    photo_challenge_id: 8
  }
]
Gallery.delete_all
Gallery.create!(galleries)