#TODO add winning photo
#Not working currenly
winning_photos = [
  {
    photo_challenge_id: 1,
    reason: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin auctor augue tellus, in mattis purus consequat sed. Vivamus ligula magna, rhoncus nec dui sodales, ultricies sollicitudin risus. Suspendisse aliquet quam.'
  },
  {
    photo_challenge_id: 2,
    reason: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin auctor augue tellus, in mattis purus consequat sed. Vivamus ligula magna, rhoncus nec dui sodales, ultricies sollicitudin risus. Suspendisse aliquet quam.'
  },
  {
    photo_challenge_id: 3,
    reason: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin auctor augue tellus, in mattis purus consequat sed. Vivamus ligula magna, rhoncus nec dui sodales, ultricies sollicitudin risus. Suspendisse aliquet quam.'
  },
  {
    photo_challenge_id: 4,
    reason: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin auctor augue tellus, in mattis purus consequat sed. Vivamus ligula magna, rhoncus nec dui sodales, ultricies sollicitudin risus. Suspendisse aliquet quam.'
  },
  {
    photo_challenge_id: 5,
    reason: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin auctor augue tellus, in mattis purus consequat sed. Vivamus ligula magna, rhoncus nec dui sodales, ultricies sollicitudin risus. Suspendisse aliquet quam.'
  },
  {
    photo_challenge_id: 6,
    reason: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin auctor augue tellus, in mattis purus consequat sed. Vivamus ligula magna, rhoncus nec dui sodales, ultricies sollicitudin risus. Suspendisse aliquet quam.'
  },
  {
    photo_challenge_id: 7,
    reason: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin auctor augue tellus, in mattis purus consequat sed. Vivamus ligula magna, rhoncus nec dui sodales, ultricies sollicitudin risus. Suspendisse aliquet quam.'
  },
  {
    photo_challenge_id: 8,
    reason: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin auctor augue tellus, in mattis purus consequat sed. Vivamus ligula magna, rhoncus nec dui sodales, ultricies sollicitudin risus. Suspendisse aliquet quam.'
  }
]
WinningPhoto.delete_all
WinningPhoto.create!(winning_photos)