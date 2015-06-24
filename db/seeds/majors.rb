majors = [
  {
    name: 'Accounting'  
  },
  {
    name: 'Finance'  
  },
  {
    name: 'Software Engineering'  
  },
  {
    name: 'Computer Science'  
  },
  {
    name: 'Information Technology'  
  },
  {
    name: 'Underwriting'  
  },
  {
    name: 'Communications'  
  },
  {
    name: 'Buisness Managment'  
  },
  {
    name: 'Computing Security'  
  },
]
Major.delete_all
Major.create!(majors)