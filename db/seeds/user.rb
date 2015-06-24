users = [
  {
    first_name: 'Paul',
    last_name: 'Darragh',
    email: 'paul@darragh.com',
    phone_number: '1231231234',
    password: 'topsecret', 
    password_confirmation: 'topsecret'
  },
  {
    first_name: 'Darth',
    last_name: 'Vader',
    email: 'paul@test.com',
    phone_number: '1231231234',
    password: 'topsecret', 
    password_confirmation: 'topsecret'
  },
  {
    first_name: 'Megan',
    last_name: 'Fox',
    email: 'big@thumbs.com',
    phone_number: '1231231234',
    password: 'topsecret', 
    password_confirmation: 'topsecret'
  },
  {
    first_name: 'Sterling',
    last_name: 'Archer',
    email: 'iamaspy@isis.com',
    phone_number: '1231231234',
    password: 'topsecret', 
    password_confirmation: 'topsecret'
  },
  {
    first_name: 'Bill',
    last_name: 'Gates',
    email: 'bill@gates.com',
    phone_number: '1231231234',
    password: 'topsecret', 
    password_confirmation: 'topsecret'
  },
  {
    first_name: 'Tiny',
    last_name: 'Tim',
    email: 'tinny@tim.com',
    phone_number: '1231231234',
    password: 'topsecret', 
    password_confirmation: 'topsecret'
  }
]
User.delete_all
User.create!(users)