event_dates = [
  {
    date: Date.today,
    event_id: 1
  },
  {
    date: Date.today + 7.days,
    event_id: 1 
  },
  {
    date: Date.today + 14.days,
    event_id: 1 
  },
  {
    date: Date.today + 21.days,
    event_id: 1 
  },
  {
    date: Date.today,
    event_id: 3
  },
  {
    date: Date.today + 3.days,
    event_id: 3
  },
]
EventDate.delete_all
EventDate.create!(event_dates)