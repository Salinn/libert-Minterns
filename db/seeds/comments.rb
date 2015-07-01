comments = [
  {
    title: 'Bring 2 shirts',
    content: 'One should be black, the other white so we can split into teams',
    user_id: 3,
    event_id: 1
  },
  {
    title: 'Rides?',
    content: 'How are people getting to boston?',
    user_id: 3,
    event_id: 4
  },
  {
    title: 'Re: Rides',
    content: 'There are 3 of us willing to drive, send me a text at (555) 666 - 7777 if you need a ride',
    user_id: 2,
    event_id: 4
  },
  {
    title: 'Non Liberty employees?',
    content: 'Can we bring people who are not liberty employees?',
    user_id: 6,
    event_id: 4
  },
]
Comment.delete_all
Comment.create!(comments)