managers = [
  {
    user_id: 1,
    department_id: 1
  },
  {
    user_id: 2,
    department_id: 4
  }
]
Manager.delete_all
Manager.create!(managers)