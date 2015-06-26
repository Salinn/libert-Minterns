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
    name: 'Week 1',  
    photo_challenge_id: 1 
  },
  {
    name: 'Week 2',  
    photo_challenge_id: 2
  },
  {
    name: 'Week 3',  
    photo_challenge_id: 3
  }
]
Gallery.delete_all
Gallery.create!(galleries)