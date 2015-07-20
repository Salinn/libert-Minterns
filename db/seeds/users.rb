colleges = College.all
majors = Major.all

users = [
  {
    first_name: 'Paul',
    last_name: 'Darragh',
    email: 'paul@darragh.com',
    phone_number: '1231231234',
    major: majors[1],
    college: colleges[1],
    remote_profile_picture_url: 'http://www.rit.edu/news/lib/filelib/201308/pauld.jpg',
    password: 'topsecret', 
    password_confirmation: 'topsecret'
  },
  {
    first_name: 'Darth',
    last_name: 'Vader',
    email: 'paul@test.com',
    phone_number: '1231231234',
    major: majors[3],
    college: colleges[5],
    remote_profile_picture_url: 'http://static.comicvine.com/uploads/original/6/68843/3474964-darth-vader.jpg',
    password: 'topsecret', 
    password_confirmation: 'topsecret'
  },
  {
    first_name: 'Megan',
    last_name: 'Fox',
    email: 'big@thumbs.com',
    phone_number: '1231231234',
    major: majors[3],
    college: colleges[2],
    remote_profile_picture_url: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQywreEfnoN3t1P3p8b3wCKpUdt6JqIlpFraSU7jFxudtC0Zztu',
    password: 'topsecret', 
    password_confirmation: 'topsecret'
  },
  {
    first_name: 'Sterling',
    last_name: 'Archer',
    email: 'iamaspy@isis.com',
    phone_number: '1231231234',
    major: majors[7],
    college: colleges[2],
    remote_profile_picture_url: 'http://www.thefablife.com/files/2014/10/AS_3QT_Standing_POSTER_hires2copy.jpg',
    password: 'topsecret', 
    password_confirmation: 'topsecret'
  },
  {
    first_name: 'Bill',
    last_name: 'Gates',
    email: 'bill@gates.com',
    phone_number: '1231231234',
    major: majors[6],
    college: colleges[1],
    remote_profile_picture_url: 'http://blogs-images.forbes.com/mfonobongnsehe/files/2014/09/bill-gates.jpg',
    password: 'topsecret', 
    password_confirmation: 'topsecret'
  },
  {
    first_name: 'Tiny',
    last_name: 'Tim',
    email: 'tinny@tim.com',
    phone_number: '1231231234',
    major: majors[1],
    college: colleges[3],
    remote_profile_picture_url: 'http://c3e308.medialib.glogster.com/media/36/362885eaf2a6616072ac3010d42d1983f8f17f70a86128b82d66ce68861d128f/tinytim.jpg',
    password: 'topsecret', 
    password_confirmation: 'topsecret'
  }
]
User.delete_all
User.create!(users)