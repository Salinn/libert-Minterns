#No reoccuring events yet
events = [
  {
    name: 'Pick up soccer',
    description: 'A few full time employees play pick up soccer and invited us out',
    location: '123 Main St, Portsmouth NH',
    start_date: Date.today,
    end_date: Date.today,
    start_time: Time.now,
    end_time: Time.now,
    cost: 'Free'
  },
  {
    name: 'Portsmouth Market Day',  
    description: 'Portsmouth is putting on a pretty cool event this saturday if anyone is interested in meeting at 10am',
    location: '1 Center Road,  Portsmouth NH',
    start_date: Date.today,
    end_date: Date.today,
    start_time: Time.now,
    end_time: Time.now,
    cost: 'Free, but you should bring money to buy things'
  },
  {
    name: 'Intern pick up volleyball',  
    description: 'A few of the interns that live around Dover/Portsmouth are going to play some beach volleyball!',
    location: 'UNH outside volleyballl court',
    start_date: Date.today,
    end_date: Date.today,
    start_time: Time.now,
    end_time: Time.now,
    cost: 'Free'
  },
  {
    name: 'Red Sox Game',  
    description: 'Off to see the Boston Red soxs win vs the yankees around!',
    location: 'Feenway Stadium',
    start_date: Date.today,
    end_date: Date.today,
    start_time: Time.now,
    end_time: Time.now,
    cost: '10 dollars a person'
  }
]
Event.delete_all
Event.create!(events)