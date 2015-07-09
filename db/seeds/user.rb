users = [
  {
    first_name: 'Paul',
    last_name: 'Darragh',
    email: 'paul@darragh.com',
    phone_number: '1231231234',
    major_id: 1,
    college_id: 1,
    remote_profile_picture_url: 'http://www.rit.edu/news/lib/filelib/201308/pauld.jpg',
    password: 'topsecret', 
    password_confirmation: 'topsecret'
  },
  {
    first_name: 'Darth',
    last_name: 'Vader',
    email: 'paul@test.com',
    phone_number: '1231231234',
    major_id: 3,
    college_id: 5,
    remote_profile_picture_url: 'http://static.comicvine.com/uploads/original/6/68843/3474964-darth-vader.jpg',
    password: 'topsecret', 
    password_confirmation: 'topsecret'
  },
  {
    first_name: 'Megan',
    last_name: 'Fox',
    email: 'big@thumbs.com',
    phone_number: '1231231234',
    major_id: 3,
    college_id: 2,
    remote_profile_picture_url: 'http://wallpapers111.com/wp-content/uploads/2015/06/Megan-Fox-Transformers-Wallpapers-4.jpg',
    password: 'topsecret', 
    password_confirmation: 'topsecret'
  },
  {
    first_name: 'Sterling',
    last_name: 'Archer',
    email: 'iamaspy@isis.com',
    phone_number: '1231231234',
    major_id: 7,
    college_id: 2,
    remote_profile_picture_url: 'http://www.thefablife.com/files/2014/10/AS_3QT_Standing_POSTER_hires2copy.jpg',
    password: 'topsecret', 
    password_confirmation: 'topsecret'
  },
  {
    first_name: 'Bill',
    last_name: 'Gates',
    email: 'bill@gates.com',
    phone_number: '1231231234',
    major_id: 6,
    college_id: 1,
    remote_profile_picture_url: 'http://blogs-images.forbes.com/mfonobongnsehe/files/2014/09/bill-gates.jpg',
    password: 'topsecret', 
    password_confirmation: 'topsecret'
  },
  {
    first_name: 'Tiny',
    last_name: 'Tim',
    email: 'tinny@tim.com',
    phone_number: '1231231234',
    major_id: 1,
    college_id: 3,
    remote_profile_picture_url: 'http://c3e308.medialib.glogster.com/media/36/362885eaf2a6616072ac3010d42d1983f8f17f70a86128b82d66ce68861d128f/tinytim.jpg',
    password: 'topsecret', 
    password_confirmation: 'topsecret'
  }
]
User.delete_all
User.create!(users)