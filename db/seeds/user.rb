users = [
  {
    first_name: 'Paul',
    last_name: 'Darragh',
    email: 'paul@darragh.com',
    phone_number: '1231231234',
    major_id: 1,
    college_id: 1,
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
    password: 'topsecret', 
    password_confirmation: 'topsecret'
  }
]
User.delete_all
User.create!(users)