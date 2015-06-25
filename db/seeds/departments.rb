departments = [
  {
    name: 'Accounting'  
  },
  {
    name: 'Commercial Insurance'  
  },
  {
    name: 'Personal Insurance'  
  },
  {
    name: 'Information Technology'  
  },
  {
    name: 'Global Insurance'  
  }
]
Department.delete_all
Department.create!(departments)