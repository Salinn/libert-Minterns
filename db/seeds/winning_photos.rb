photo_challenge = PhotoChallenge.all 
photo = Photo.all
winning_photos = [
  {
    photo_challenge: photo_challenge[5],
    reason: 'something something something',
    photo: photo[18]
  },
  {
    photo_challenge: photo_challenge[6],
    reason: 'something something something',
    photo: photo[19]
  },
  {
    photo_challenge: photo_challenge[7],
    reason: 'something something something',
    photo: photo[21]
  },
]
WinningPhoto.delete_all
WinningPhoto.create!(winning_photos)