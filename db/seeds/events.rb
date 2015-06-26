#No reoccuring events yet
events = [
  {
    name: 'Pick up soccer',  
    location: '123 Main St, Portsmouth NH',
    start_daettime: DateTime.now,
    end_datetime: DateTime.now,
    cost: 'Free'
  },
  {
    name: 'Portsmouth Market Day',  
    location: '1 Center Road,  Portsmouth NH',
    start_daettime: DateTime.now,
    end_datetime: DateTime.now,
    cost: 'Free, but you should bring money to buy things'
  },
  {
    name: 'Intern pick up volleyball',  
    location: 'UNH outside volleyballl court',
    start_daettime: DateTime.now,
    end_datetime: DateTime.now,
    cost: 'Free'
  },
  {
    name: 'Red Sox Game',  
    location: '',
    start_daettime: DateTime.now,
    end_datetime: DateTime.now,
    cost: '10 dollars a person'
  }
]
Event.delete_all
Event.create!(events)