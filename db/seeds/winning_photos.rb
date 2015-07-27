photo_challenge = PhotoChallenge.all
photo = Photo.all
winning_photos = [
    {
        photo_challenge: photo_challenge[0],
        reason: "Congratulations to Mary Pittman, winner of this week's Photo of the Week Contest!
                Thanks for bringing your campus pride to Liberty!",
        photo: photo[54]
    },
    {
        photo_challenge: photo_challenge[1],
        reason: 'Congratulations to Janelle Gillespie, our Photo of the Week #2 Contest Winner! Thank you Janelle for
                the awesome photo - looks like you are having a fun time in Boston at the Pride Parade!',
        photo: photo[46]
    },
    {
        photo_challenge: photo_challenge[2],
        reason: 'Congratulations to Rachel Becker, our Photo of the Week #3 Contest Winner!
                Thank you Rachel for showing us a day in the life of an intern at Liberty!',
        photo: photo[35]
    },
    {
        photo_challenge: photo_challenge[3],
        reason: 'Congratulations to Ian Newcombe, our Photo of the Week #4 Contest Winner!
                Thank you Ian for your awesome photo with your manager in your hardhats!',
        photo: photo[30]
    },
    {
        photo_challenge: photo_challenge[4],
        reason: 'Congratulations to Courtney Ekstrom, our Photo of the Week Contest Winner!  Thank you Courtney for the
              awesome photo - it looks like you had a lot of fun enjoying the beautiful weather with your fellow Liberty interns! ',
        photo: photo[28]
    },
]
WinningPhoto.delete_all
WinningPhoto.create!(winning_photos)