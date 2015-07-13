users = User.all 
events = Event.all
comments = [
  {
    title: 'Bring 2 shirts',
    content: 'One should be black, the other white so we can split into teams',
    user: users[2],
    event: events[0]
  },
  {
    title: 'Rides?',
    content: 'How are people getting to boston?',
    user: users[2],
    event: events[3]
  },
  {
    title: 'Re: Rides',
    content: 'There are 3 of us willing to drive, send me a text at (555) 666 - 7777 if you need a ride',
    user: users[1],
    event: events[3]
  },
  {
    title: 'Non Liberty employees?',
    content: 'Can we bring people who are not liberty employees?',
    user: users[5],
    event: events[3]
  },
]
Comment.delete_all
Comment.create!(comments)