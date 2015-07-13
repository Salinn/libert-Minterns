galleries = Gallery.all
photo_challenges = PhotoChallenge.all
photos = [
  {
    gallery: galleries[0],
    remote_picture_url: 'https://theother87.files.wordpress.com/2011/04/dc-soccer-dc-condos1.png',
    comment: ''
  },
  {
    gallery: galleries[0],
    remote_picture_url: 'http://media.syracuse.com/sports/photo/2010-07-07-jc-soccer2jpg-641503a51bcb0820.jpg',
    comment: ''
  },
  {
    gallery: galleries[0],
    remote_picture_url: 'http://www.insidemnsoccer.com/wp-content/uploads/2012/10/Meetup-Jorge.jpeg',
    comment: ''
  },
  {
    gallery: galleries[0],
    remote_picture_url: 'http://www.depauw.edu/images/virtual-tour/soccer-bowman-park.JPG',
    comment: ''
  },
  {
    gallery: galleries[0],
    remote_picture_url: 'http://centralpasoccer.com/files/2013/05/pickup14.jpg',
    comment: ''
  },
  {
    gallery: galleries[0],
    remote_picture_url: 'https://learnivore-production.s3.amazonaws.com/uploads/post/image/980/islam5_neon_soccer-2.jpg',
    comment: ''
  },
  {
    gallery: galleries[1],
    remote_picture_url: 'http://www.proportsmouth.org/images/MSD19.jpg',
    comment: ''
  },
  {
    gallery: galleries[1],
    remote_picture_url: 'http://www.proportsmouth.org/images/MSD18.jpg',
    comment: ''
  },
  {
    gallery: galleries[2],
    remote_picture_url: 'http://www.photographymad.com/files/images/indoor-volleyball.jpg',
    comment: ''
  },
  {
    gallery: galleries[2],
    remote_picture_url: 'http://apps.carleton.edu/reason_package/reason_4.0/www/images/777359.jpg',
    comment: ''
  },
  {
    gallery: galleries[2],
    remote_picture_url: 'http://farm4.static.flickr.com/3447/3247752843_ae5b20594f.jpg',
    comment: ''
  },
  {
    gallery: galleries[2],
    remote_picture_url: 'http://www.landisimages.com/blog/wp-content/uploads/2012/11/UILVolleyball8584Landis-1024x846.jpg',
    comment: ''
  },
  {
    gallery: galleries[3],
    remote_picture_url: 'http://blacksportsonline.com/home/wp-content/uploads/2013/10/red_sox_fans_83313769_620x350.jpg',
    comment: ''
  },
  {
    gallery: galleries[3],
    remote_picture_url: 'http://www.meeb.com/assets/red-sox-faith.jpg',
    comment: ''
  },
  {
    gallery: galleries[3],
    remote_picture_url: 'https://cbsboston.files.wordpress.com/2010/10/fenwayfamily.jpg',
    comment: ''
  },
  {
    gallery: galleries[3],
    remote_picture_url: 'http://media.lehighvalleylive.com/sports_impact/photo/boston-red-sox-fans-868a60df50285548_large.jpg',
    comment: ''
  },
  {
    gallery: galleries[9],
    photo_challenge: photo_challenges[5],
    remote_picture_url: 'http://static.squarespace.com/static/50c10397e4b02288d89dc9eb/50c61df5e4b0b450608e11da/50c62198e4b0cd7ca3dbc97b/1355162209236/Lustre%20Pearl,%20Rainey%20Street%20Bars%202012IMG_5812.jpg?format=1000w',
    comment: ''
  },
  {
    gallery: galleries[9],
    photo_challenge: photo_challenges[5],
    remote_picture_url: 'http://i.guim.co.uk/static/w-620/h--/q-95/sys-images/Travel/Pix/site_furniture/2012/10/8/1349710898964/Lustre-Pearl-bar-Austin-T-002.jpg',
    comment: ''
  },
  {
    gallery: galleries[9],
    photo_challenge: photo_challenges[5],
    remote_picture_url: 'http://www.chrisbaddick.com/wp-content/uploads/2014/03/IMG_20140301_223314.jpg',
    comment: ''
  },
  {
    gallery: galleries[10],
    photo_challenge: photo_challenges[6],
    remote_picture_url: 'http://static2.businessinsider.com/image/54dbf42aeab8eac25d761a21-960/new-york-city-skyline-and-statue-of-liberty-11.jpg',
    comment: ''
  },
  {
    gallery: galleries[11],
    photo_challenge: photo_challenges[7],
    remote_picture_url: 'http://freshinfos.com/wp-content/uploads/2014/02/extreme-selfies-3.jpg',
    comment: ''
  },
  {
    gallery: galleries[11],
    photo_challenge: photo_challenges[7],
    remote_picture_url: 'http://i.dailymail.co.uk/i/pix/2014/05/20/article-2633663-1E078CD100000578-340_634x621.jpg',
    comment: ''
  }
  
]
Photo.delete_all
Photo.create!(photos)