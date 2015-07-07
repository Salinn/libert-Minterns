#TODO add winning photo to seed data
#Not working currenly
winning_photos = [
  {
    photo_challenge_id: 6,
    reason: 'something something something',
    photo_id: 19
  },
  {
    photo_challenge_id: 7,
    reason: 'something something something',
    photo_id: 20
  },
  {
    photo_challenge_id: 8,
    reason: 'something something something',
    photo_id: 22
  },
]
WinningPhoto.delete_all
WinningPhoto.create!(winning_photos)