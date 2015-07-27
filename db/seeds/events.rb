#No reoccuring events yet
events = [
  {
    name: 'Pick up soccer',
    description: 'A few full time employees play pick up soccer and invited us out',
    location: '123 Main St, Portsmouth NH',
    start_date: Date.today - 21.days,
    end_date: Date.today - 21.days,
    start_time: Time.now,
    end_time: Time.now,
    cost: 'Free'
  },
  {
    name: 'Portsmouth Market Day',  
    description: 'Portsmouth is putting on a pretty cool event this saturday if anyone is interested in meeting at 10am',
    location: '1 Center Road,  Portsmouth NH',
    start_date: Date.today - 7.days,
    end_date: Date.today - 7.days,
    start_time: Time.now,
    end_time: Time.now,
    cost: 'Free, but you should bring money to buy things'
  },
  {
    name: 'Intern pick up volleyball',  
    description: 'A few of the interns that live around Dover/Portsmouth are going to play some beach volleyball!',
    location: 'UNH outside volleyballl court',
    start_date: Date.today + 7.days,
    end_date: Date.today + 7.days,
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
  },
  {
    name: 'Serve with Liberty Day',  
    description: 'Volunteer and make changes in your local communities',
    location: 'Portsmouth Community Campus',
    start_date: Date.today + 2.days,
    end_date: Date.today + 2.days,
    start_time: Time.now,
    end_time: Time.now,
    cost: 'Free'
  },
  {
    name: 'Trip to Boston!',  
    description: 'Select interns head to Boston to meet executives and experience liberty culture in Boston',
    location: 'Boston Offices, 147 Berklee St.',
    start_date: Date.today + 21.days,
    end_date: Date.today + 21.days,
    start_time: Time.now,
    end_time: Time.now,
    cost: 'Free (except travel for NH interns)'
  },
  {
    name: 'Company Ultimate Tournament',  
    description: 'Liberty Sponsored Ultimate Tournament!  7v7, $5000 cash prize for the top 3 teams.',
    location: 'Dover High School Fields',
    start_date: Date.today + 28.days,
    end_date: Date.today + 28.days,
    start_time: Time.now,
    end_time: Time.now,
    cost: 'Free!'
  },
  {
    name: 'End of Earth',  
    description: 'The End of Days has arrived.  Hellfire for some, Eternal Paradise for others.  GL HF, may the odds be ever in your favor',
    location: 'Global',
    start_date: Date.today + 37.days,
    end_date: Date.today + 37.days,
    start_time: Time.now,
    end_time: Time.now,
    cost: 'Your Life'
  }
]
Event.delete_all
Event.create!(events)
