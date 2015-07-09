colleges = [
  {
    name: 'Rochester Institue of Technology'  
  },
  {
    name: 'Bates'  
  },
  {
    name: 'UMass Amherst'  
  },
  {
    name: 'UNH'  
  },
  {
    name: 'Penn State'  
  },
  {
    name: 'Alabama Unviersity'  
  },
  {
    name: 'MIT'
  },
  {
    name: 'WPI'  
  },
  {
    name: 'UCONN'  
  }
]
College.delete_all
College.create!(colleges)